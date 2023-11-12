[org 0x1000]
    xchg bx,bx

cheack_memory:
    mov ax,0
    mov es,ax
    xor ebx,ebx
    mov edx,0x534d4150
    mov di,ards_buffer

.next:
    mov eax,0xE820
    mov ecx,20
    int 0x15
    
    
    jmp $

ards_count:
    dw 0
ards_buffer:
