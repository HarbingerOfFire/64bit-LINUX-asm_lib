%ifndef PRINTF_ASM
    %define PRINTF_ASM

section .data
    newline db 0xA

section .text
; printf(RAX buf, RDI size)
printf:
    ; Save registers that will be used
    push rax
    push rdi
    push rsi
    push rdx

    ; Set up the system call for writing
    mov rdx, rdi
    mov rsi, rax
    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor 1 (stdout)
    syscall

    ; Print newline
    mov rsi, newline
    mov rdx, 1
    mov rax, 1
    mov rdi, 1
    syscall

    ; Restore registers
    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret

%endif

