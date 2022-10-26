section .text
global _start

_start: 
    mov eax, 0x04
    mov ebx, 0x01
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80


section .data
msg db 'Hello Word', 0x0A
len equ $ - msg