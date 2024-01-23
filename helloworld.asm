global _start

section .text

_start:
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, message
    mov edx, msglen
    int 0x80

    mov eax, 0x1
    mov ebx, 0x2
    int 0x80

section .data
    message: db "Hello World!", 0xA
    msglen equ $-message