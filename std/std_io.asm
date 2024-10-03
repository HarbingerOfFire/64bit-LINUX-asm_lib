%ifndef STD_IO_ASM
    %define STD_IO_ASM

section .bss
    fd resq 1

section .text
; open(RAX filename)
open:    
    push rax
    push rdi
    push rsi
    push rdx

    mov rsi, O_RD_ONLY
    mov rdi, rax
    mov rax, SYS_OPEN
    syscall

    mov [fd], rax
    cmp rax, 0
    jl error 

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret



; read(RAX buf, RDI size)
read:
    push rax
    push rdi
    push rsi
    push rdx

    mov rdx, rdi
    mov rsi, rax
    mov rdi, [fd]
    mov rax, SYS_READ
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret

; write(RAX buf, RDI size)
write:
    push rax
    push rdi
    push rsi
    push rdx

    mov rdx, rdi
    mov rsi, rax
    mov rdi, STD_OUT
    mov rax, SYS_WRITE
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret



%endif