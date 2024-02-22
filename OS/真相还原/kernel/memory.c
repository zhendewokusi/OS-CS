#include "memory.h"
#include "print.h"
#include "stdint.h"
#include "bitmap.h"
#include "traps.h"
#include "string.h"


#define PAGE_SIZE 4096
// 页表大小= 1页的页目录表+第0和第768个页目录项指向同一个页表+第769~1022个页目录项共指向254个页表,共256个页框
#define PAGE_TABLE_SIZE 256

// 低1MB跳过
#define __KERNEL_HEAP_START__ 0xc0100000

/* 因为0xc009f000是内核主线程栈顶，0xc009e000是内核主线程的pcb.
 * 位图位置安排在地址0xc009a000,这样本系统最大支持4个页框的位图,即512M 
 * 4kb地址是 0x1000 4个刚好是 0xce000*/
#define __MEM_BITMAP_BASE__ 0xc009a000

/*      一个页框大的位图表示多少内存 4kb页框 = 4096 * 8 bit
        (4096 * 8 * 4096) / (1024 * 1024) = 128MB
        要覆盖配置文件中的 512MB 需要 4 个页框大小的内存
*/

// 我这把pool_size写死了，和bochs配置信息匹配（脚本）
// 问题：我该咋写虚拟地址的位图qaq？头大了

#define __PDE_INDEX__(addr) ((addr & 0xffc00000) >> 22)
#define __PTE_INDEX__(addr) ((addr & 0x003ff000) >> 12)

struct memo_pool {
        uint32_t phy_addr_start;
        struct bitmap pool_bitmap;
        uint32_t pool_size;
};

struct memo_pool user_pool,kernel_pool;
struct virtual_addr kernel_vaddr;	 // 给内核分配虚拟地址使用


// 从物理位图中找到一个空闲页并返回其地址
static void * palloc(struct memo_pool* mempool)
{
        int bit_index = bitmap_scan(&mempool->pool_bitmap, 1);
        if(bit_index == -1)   return NULL;
        bitmap_set(&mempool->pool_bitmap,bit_index,1);
        uint32_t pg_phyaddr = mempool->phy_addr_start + bit_index * PAGE_SIZE;
        return (void *) pg_phyaddr;

}

static void * vaddr_get(enum pool_flags pl_flag,uint32_t pg_cnt)
{
        uint32_t cnt = 0;
        int vaddr_start = 0, bit_idx_start = -1; //存储分配的起始虚拟地址和位图扫描函数bitmap_scan的返回值
        if (pl_flag == PF_KERNEL) {
           bit_idx_start  = bitmap_scan(&kernel_vaddr.vaddr_bitmap, pg_cnt);
           if (bit_idx_start == -1) {
              return NULL;
           }
           while(cnt < pg_cnt) {
                bitmap_set(&kernel_vaddr.vaddr_bitmap, bit_idx_start + cnt++, 1);
           }
           vaddr_start = kernel_vaddr.vaddr_start + bit_idx_start * PAGE_SIZE;
        } else {	
        // 用户内存池,将来实现用户进程再补充
        }
        return (void*)vaddr_start;
}


void * malloc_page(enum pool_flags pl_flag,uint32_t pg_cnt)
{
        // 1. 通过vaddr_get在虚拟内存池中申请虚拟地址
        // 2. 通过palloc在物理内存池中申请物理页
        // 3. 通过page_table_add将以上得到的虚拟地址和物理地址在页表中完成映射
        ASSERT(pl_flag == 0 || pl_flag == 1);
        // 这里应该还要设置一个上限，不然直接申请完kernelMemory就无了
        ASSERT(pg_cnt > 0);
        void * vaddr_start = vaddr_get(PF_KERNEL,pg_cnt);
        // 防止没有申请成功
        if(vaddr_start == NULL) return NULL;
        uint32_t vaddr = (uint32_t) vaddr_start;
        struct memo_pool * mempool = pl_flag & PF_KERNEL ? &kernel_pool : &user_pool;
        while (pg_cnt--) {
                void * pg_paddr = palloc(mempool);
                if(pg_paddr == NULL) return NULL;
                // page_table_add((void*)vaddr,pg_paddr);
                vaddr += PAGE_SIZE;
        }
        return vaddr_start;

}

void * get_kernel_pge(uint32_t pg_cnt)
{
        // 参数是无符号...
        // ASSERT(pg_cnt > 0);
        void * addr = malloc_page(PF_KERNEL,pg_cnt);
        if (addr != NULL) {
                memset(addr,0,pg_cnt * PAGE_SIZE);
        }
        return addr;
}




static void mem_pool_init(uint32_t all_mem)
{
        put_str("   mem_pool_init start\n");
        uint32_t page_table_size = PAGE_SIZE * PAGE_TABLE_SIZE;
        uint32_t used_mem = page_table_size + 0x100000;
        uint32_t free_mem = all_mem - used_mem;
        // 不足1页的内存不用考虑了。
        uint16_t all_free_pages = free_mem / PAGE_SIZE;
        uint16_t kernel_free_pages = all_free_pages / 2;
        uint16_t user_free_pages = all_free_pages - kernel_free_pages;
        // 这里没有会少 0 ~ 14 物理页不在位图中 kernel一个 user一个
        uint32_t kbm_length = kernel_free_pages / 8;
        uint32_t ubm_length = user_free_pages / 8;
        uint32_t kp_start = used_mem;				  // Kernel Pool start,内核内存池的起始地址
        uint32_t up_start = kp_start + kernel_free_pages * PAGE_SIZE;	  // User Pool start,用户内存池的起始地址

        kernel_pool.phy_addr_start = kp_start;
        user_pool.phy_addr_start = up_start;
        kernel_pool.pool_size = kernel_free_pages * PAGE_SIZE;
        user_pool.pool_size = user_free_pages * PAGE_SIZE;
        kernel_pool.pool_bitmap.btmp_bytes_len = kbm_length;
        user_pool.pool_bitmap.btmp_bytes_len = ubm_length;

        kernel_pool.pool_bitmap.bits = (void*)__MEM_BITMAP_BASE__;
        /* 用户内存池的位图紧跟在内核内存池位图之后 */
        user_pool.pool_bitmap.bits = (void*)(__MEM_BITMAP_BASE__ + kbm_length);
        put_str("      kernel_pool_bitmap_start:");put_int((int)kernel_pool.pool_bitmap.bits);
        put_str(" kernel_pool_phy_addr_start:");put_int(kernel_pool.phy_addr_start);
        put_str("\n");
        put_str("      user_pool_bitmap_start:");put_int((int)user_pool.pool_bitmap.bits);
        put_str(" user_pool_phy_addr_start:");put_int(user_pool.phy_addr_start);
        put_str("\n");

        /* 将位图置0*/
        bitmap_init(&kernel_pool.pool_bitmap);
        bitmap_init(&user_pool.pool_bitmap);

        /* 下面初始化内核虚拟地址的位图,按实际物理内存大小生成数组。*/
        kernel_vaddr.vaddr_bitmap.btmp_bytes_len = kbm_length;      // 用于维护内核堆的虚拟地址,所以要和内核内存池大小一致

        /* 位图的数组指向一块未使用的内存,目前定位在内核内存池和用户内存池之外*/
        kernel_vaddr.vaddr_bitmap.bits = (void*)(__MEM_BITMAP_BASE__ + kbm_length + ubm_length);

        kernel_vaddr.vaddr_start = __KERNEL_HEAP_START__;
        bitmap_init(&kernel_vaddr.vaddr_bitmap);
        put_str("   mem_pool_init done\n");
}

void memo_init()
{
        put_str("memo start init\n");
        mem_pool_init(MEMO_SIZE * 1024 * 1024);
        put_str("memo init end");
}
