    ; 硬盘主引导扇区代码
    ; 创建日期: 2023-11-02 20:11
    core_start_addr equ 0x70000 
SECTION  mbr  vstart=0x00007c00         
    ;文本模式
    mov ax,3
    int 0x10

    ; 初始化段寄存器
    mov ax,0x0
    mov ds,ax
    mov ss,ax
    mov es,ax
    mov cs,ax

    mov ax,0x7c00
    mov sp,ax

    ; 创建GDT表
    ;将32位地址转换成16位地址
    mov eax,[point_to_gdt + 0x02]
    xor edx,edx
    mov ebx,0x10
    div ebx
    ; ds是段地址
    mov ds,eax
    ; ebx是偏移地址
    mov ebx,edx

    ;创建段描述符
    ; 索引为0的段描述符全部为0
    xor ecx,ecx
    mov dword [ebx],ecx
    mov dword [ebx+0x04],ecx
    ; 代码段的段描述符
    mov dword [ebx+0x08],0x0000ffff
    mov dword [ebx+0x0c],0x00cf9800
    ; 数据段的段描述符
    mov dword [ebx+0x10],0x0000ffff
    mov dword [ebx+0x14],0x00cf9200
    ; 栈段的段描述符
    mov dword [ebx+0x18],0x0000ffff
    mov dword [ebx+0x1c],0x00cf9600

    ;GDTR 前16位存储边界
    mov word [cs:point_to_gdt],0x20-1
    ; 将GDT属性存入GDTR中
    lgdt [cs:point_to_gdt]
    ; 禁用中断，防止出现进入安全模式中被中断打断从而不可预测
    cli
    ;开A20保护
    in al,0x92
    or al,0000_0010B
    out 0x92,al

    ;进保护模式
    mov eax,cr0
    or eax,0x00000001
    mov cr0,eax
    
    ;清空处理器里的流水线，防止出现不可预计的结果
    jmp dword 0x0008:flush  

    [bits 32]
flush:
    xchg bx,bx
    ;栈段的选择子
    mov eax,0x0014  
    mov ss,eax
    mov esp,0x7000  ;堆栈指针初始化在0x7000
    ;其他数据段的选择子
    mov eax,0x0010
    mov ds,eax
    mov es,eax
    mov fs,eax
    mov gs,eax

.load_core:
    push core_start_addr
    push 0x01    ;读取第一个扇区
    call read_disk
    mov eax,[edi]   ;获取内核程序大小
    xor ebx,ebx
    mov ecx,512
    div ecx

    or edx,edx  ;余数如果为不是0
    jnz @1
    dec eax     ;余数是0要减1
@1:
    or eax,eax
    jz pge

    mov ecx,eax
    mov eax,0x01
    inc eax
@2:
    call read_disk
    inc eax
    loop @2

pge:
    ; 开启分页机制

.halt:
    jmp .halt
read_disk:
    push ebp                    ; 保存旧的基指针
    mov ebp, esp                ; 新的基指针是当前的栈顶
    push ecx                    ; 保存寄存器
    push edx                    ; 保存寄存器

    mov eax, [ebp + 16]         ; EAX = 逻辑扇区号，从栈上获取
    mov ebx, [ebp + 20]         ; EBX = 目标缓冲区地址，从栈上获取

    ; 以下是原始的磁盘读取代码，已经调整为使用新的参数

    mov dx, 0x1f2
    mov al, 1
    out dx, al                  ; 读取的扇区数

    inc dx                      ; 0x1f3
    out dx, al                  ; LBA地址7~0 (来自EAX的低8位)

    inc dx                      ; 0x1f4
    mov cl, 8
    shr eax, cl
    out dx, al                  ; LBA地址15~8

    inc dx                      ; 0x1f5
    shr eax, cl
    out dx, al                  ; LBA地址23~16

    inc dx                      ; 0x1f6
    shr eax, cl
    or al, 0xe0                 ; 第一硬盘  LBA地址27~24
    out dx, al

    inc dx                      ; 0x1f7
    mov al, 0x20                ; 读命令
    out dx, al

.waits:
    in al, dx
    and al, 0x88
    cmp al, 0x08
    jnz .waits                  ; 不忙，且硬盘已准备好数据传输

    mov ecx, 256                ; 总共要读取的字数
    mov dx, 0x1f0
.readw:
    in ax, dx
    mov [ebx], ax
    add ebx, 2
    loop .readw

    ; 参数传递完成，恢复寄存器并清理栈
    pop edx                     ; 恢复寄存器
    pop ecx                     ; 恢复寄存器
    pop ebp                     ; 恢复基指针
    ret 8                       ; 清理堆栈（因为我们推入了两个参数，每个参数4字节）




;----------------------------------------
         point_to_gdt    dw 0
                          dd 0x00008000     ;GDT的物理/线性地址
;----------------------------------------
    times 510 - ($ - $$) db 0
                         db 0x55,0xaa