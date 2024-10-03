%include "std.asm"
%include "alloc.asm"
%include "printf.asm"

section .data
    filename db '/dev/urandom'

section .text
    global _start

_start:
    mov rax, filename
    call open

    mov rax, 1024
    call malloc ; address in RAX as output of malloc

    mov rdi, 1024
    call read
    call printf

    call success