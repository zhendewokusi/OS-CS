[org 0x7c00]

    mov ax ,3
    int 0x10
    
    xchg bx,bx

    ;数据段初始化
    mov ax,0
    mov ds,ax
    
    ;显示器
    mov ax, 0xb800
    mov es,ax

    mov si,message
    mov di,0

    mov cx,(message_end - message)

loop1:
    mov al,[ds:si]
    mov [es:di],al
    add di
    inc si
    
    loop loop1
halt:
    jmp halt

message:
    db "hello,linuxGroup!",0
message_end:

    times 510 - ($ - $$) db 0
    db 0x55,0xaa






