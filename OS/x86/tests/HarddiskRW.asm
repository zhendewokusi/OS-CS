; [org 0x7c00]

    mov ax ,3
    int 0x10

    xchg bx, bx
    
    mov ax,0
    mov ds,ax
    mov ss,ax
    mov sp,0x7c00 ;初始化堆栈

    ;0x1f2 设置扇区数量
    mov dx,0x1f2
    mov al,1
    out dx,al    
    
    mov al,0

    ;0x1f3 - 0x1f5 扇区
    inc dx
    out dx,al
    inc dx
    out dx,al
    inc dx
    out dx,al

    ;第6位，LBA模式读取磁盘
    inc dx
    mov al,1110_0000b
    out dx,al

    ; 读取硬盘
    inc dx
    mov al,0x20
    out dx,al

.check_read_status:
    nop
    nop
    nop
    in al, dx
    and al,1000_1000b
    cmp al,0000_1000b       ;如果没有就绪循环等待
    jnz .check_read_status

    mov ax,0x100
    mov es,ax
    mov di,0
    mov dx,0x1f0

read_loop:
    nop
    nop
    nop

    in ax,dx
    mov [es:di],ax

    add di,2
    cmp di,512
    jnz read_loop

    xchg bx,bx

.write:
;磁盘写
    ;0x1f2 设置扇区数量
    mov dx,0x1f2
    mov al,1
    out dx,al    
    
    ;0x1f3 - 0x1f5 扇区
    mov al,1
    inc dx
    out dx,al

    mov al,0
    inc dx
    out dx,al
    inc dx
    out dx,al

    ;第6位，LBA模式读取磁盘
    inc dx
    mov al,1110_0000b
    out dx,al

    ; 写硬盘
    inc dx
    mov al,0x30
    out dx,al

    mov ax,0x100
    mov es,ax
    mov di,0
    mov dx,0x1f0

wirte_loop:
    nop 
    nop

    mov ax,[es:di]
    out dx,ax

    add di,2
    cmp di,512
    jnz wirte_loop

    mov dx,0x1f7

.check_write_status:
    nop
    nop
    nop
     
    in al,dx
    and al,1000_0000b
    cmp al,1000_0000b
    jz .check_write_status

    xchg bx,bx

halt:
    jmp halt

times 510 - ($ - $$) db 0
    db 0x55,0xaa
