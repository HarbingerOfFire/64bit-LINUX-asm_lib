%ifndef STD_IO_ASM
    %define STD_IO_ASM

section .text
; open(RAX filename)
open:    
    push rdi
    push rsi
    push rdx

    mov rsi, O_RD_ONLY
    mov rdi, rax
    mov rax, SYS_OPEN
    syscall

    cmp rax, 0
    jl error 

    pop rdx
    pop rsi
    pop rdi

    ret

; read(RAX fd, RDI buf, RSI size)
read:
    push rax
    push rdi
    push rsi
    push rdx

    mov rdx, rsi
    mov rsi, rdi
    mov rdi, rax
    mov rax, SYS_READ
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret

; write(RAX fd, RDI buf, RSI size)
write:
    push rax
    push rdi
    push rsi
    push rdx

    mov rdx, rsi
    mov rsi, rdi
    mov rdi, rax
    mov rax, SYS_WRITE
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret



%endif