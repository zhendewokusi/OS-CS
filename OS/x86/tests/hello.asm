[bits 32]

; 使用外部函数


; extern printf
; extern exit

; section .text
; global main
; main:
;     push message
;     call printf
;     add esp,4
;     push 0
;     call exit


; section .data
;     message db "Hello,World!",10,13,0
;     message_end:


; 使用系统调用
section .text
global main
main:
    mov eax,4
    mov ebx,1
    mov ecx,message
    mov edx,message_end - message
    int 0x80

    mov eax,1
    mov ebx,0
    int 0x80

section .data
    message db "Hello,World!",10,13,0
    message_end:

