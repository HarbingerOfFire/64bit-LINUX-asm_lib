%include "std.asm"
%include "alloc.asm"
%include "printf.asm"

section .data
    filename db '/dev/urandom'

section .text
    global _start

_start:
    mov rax, 1024
    call malloc ; address in RAX as output of malloc

    mov rdi, rax

    mov rax, filename
    call open

    mov rsi, 1024
    call read

    mov rax, rdi
    mov rdi, rsi
    call printf

    call success