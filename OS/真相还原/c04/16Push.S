    section loader vstart=0x7c00
    mov sp , 0x900
    push byte 0x7
    push word 0x8
    push dword 0x9
    xchg ebx,ebx

    times 510-($-$$) db 0
                     db 0x55,0xaa