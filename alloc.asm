%include "std.asm"

; malloc(RAX size)
malloc:
    push rsi
    push rdi
    push rdx
    push r10
    push r9
    push r8

    xor r9, r9 ;r9 offset
    mov r8, -1 ;r8 fd
    mov r10, 34;r10 flags
    mov rdx, 3 ;rdx prot
    mov rsi, rax ;rsi len
    xor rdi, rdi ;rdi addr
    mov rax, SYS_MMAP     ; syscall number for mmap
    syscall               ; call mmap to allocate memory

    test rax, rax       ; check if rax is zero
    jl mmap_error       ; jump to error handler if negative

    pop r8
    pop r9
    pop r10
    pop rdx
    pop rdi
    pop rsi
    ret
