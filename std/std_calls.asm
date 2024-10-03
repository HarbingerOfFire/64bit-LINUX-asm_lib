%ifndef STD_CALLS_ASM
    %define STD_CALLS_ASM
    
    %include "std/syscalls.asm"

    ; Exit Codes
    EXIT_SUCCESS equ 0
    EXIT_ERROR equ 1

    ; STD Codes
    STD_IN equ 0
    STD_OUT equ 1
    STD_ERR equ 2

    ; File Codes
    O_RD_ONLY equ 0
    O_WR_ONLY equ 1
    O_RD_WR equ 2

    ; File Command Codes
    O_CREAT equ 64
    O_EXCL equ 128
    O_NOCTTY equ 256
    O_TRUNC equ 512
    O_APPEND equ 1024
    O_NONBLOCK equ 2048
    O_NDELAY equ 2048
    O_DSYNC equ 4096
    O_ASYNC equ 8192
    O_DIRECT equ 16384
    O_DIRECTORY equ 65536
    O_NOFOLLOW equ 131072
    O_NOATIME equ 262144
    O_CLOEXEC equ 524288
    O_SYNC equ 1052672
    O_PATH equ 2097152
    O_TMPFILE equ 4259840



%endif
