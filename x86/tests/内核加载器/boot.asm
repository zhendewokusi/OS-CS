; [org 0x7c00]
    mov ax ,3
    int 0x10

    xchg bx, bx
    
    mov ax,0
    mov ds,ax
    mov ss,ax
    mov sp,0x7c00 ;初始化堆栈

    xchg bx,bx

    mov edi,0x1000
    mov ecx,2
    mov bl,4
    call read_disk

    xchg bx,bx

    jmp 0:0x1000
read_disk:
    ; 读取硬盘
    ; edi - 存储内存的位置
    ; ecx - 存储起始的扇区位置
    ; bl - 存储扇区数量
    pushad

    mov dx,0x1f2
    mov al,bl
    out dx,al    
    
    ;0x1f3 - 0x1f5
    inc dx
    mov al,cl
    out dx,al

    shr ecx,8
    inc dx
    mov al,cl
    out dx,al

    shr ecx,8
    inc dx
    mov al,cl
    out dx,al

    ;第6位，LBA模式读取磁盘
    ;LBA 24-27位存在低四位
    shr ecx,8
    and cl,1111b
    inc dx
    mov al,1110_0000b
    or al,cl
    out dx,al

    ; 读取硬盘
    inc dx
    mov al,0x20
    out dx,al

    .check:
        nop
        nop
        nop
        in al, dx
        and al,1000_1000b
        cmp al,0000_1000b       ;如果没有就绪循环等待
        jnz .check

    xor eax,eax
    mov al,bl
    mov bx,256  ;512字节，也就是256个字
    mul dx ; ax = bl * 256
    
    mov dx,0x1f0
    mov cx,ax

    .readw:
        nop
        nop
        nop

        in ax,dx
        mov [edi],ax
        add edi,2
        loop .readw

    xchg bx,bx
    
    popad
    ret

halt:
    jmp halt

times 510 - ($ - $$) db 0
    db 0x55,0xaa
