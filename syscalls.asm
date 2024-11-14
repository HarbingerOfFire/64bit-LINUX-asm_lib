%ifndef SYSCALLS_ASM
    %define SYSCALLS_ASM

;if a return is not specified, it is either unknown or has no return. 
;if you know the return please feel free to add it

READ equ 0             
WRITE equ 1            
OPEN equ 2             
CLOSE equ 3            
STAT equ 4             
FSTAT equ 5            
LSTAT equ 6            
POLL equ 7             
LSEEK equ 8            
MMAP equ 9             
MPROTECT equ 10        
MUNMAP equ 11          
BRK equ 12              
RT_SIGACTION equ 13
RT_SIGPROCMASK equ 14
RT_SIGRETURN equ 15
IOCTL equ 16
PREAD64 equ 17
PWRITE64 equ 18
READV equ 19
WRITEV equ 20
ACCESS equ 21
PIPE equ 22
SELECT equ 23
SCHED_YIELD equ 24
MREMAP equ 25
MSYNC equ 26
MINCORE equ 27
MADVISE equ 28
SHMGET equ 29
SHMAT equ 30
SHMCTL equ 31
DUP equ 32
DUP2 equ 33
SYS_PAUSE equ 34
NANOSLEEP equ 35
GETITIMER equ 36
ALARM equ 37
SETITIMER equ 38
GETPID equ 39
SENDFILE equ 40
SOCKET equ 41
CONNECT equ 42
ACCEPT equ 43
SENDTO equ 44
RECVFROM equ 45
SENDMSG equ 46
RECVMSG equ 47
SHUTDOWN equ 48
BIND equ 49
LISTEN equ 50
GETSOCKNAME equ 51
GETPEERNAME equ 52
SOCKETPAIR equ 53
SETSOCKOPT equ 54
GETSOCKOPT equ 55
CLONE equ 56
FORK equ 57
VFORK equ 58
EXECVE equ 59
EXIT equ 60
WAIT4 equ 61
KILL equ 62
UNAME equ 63
SEMGET equ 64
SEMOP equ 65
SEMCTL equ 66
SHMDT equ 67
MSGGET equ 68
MSGSND equ 69
MSGRCV equ 70
MSGCTL equ 71
FCNTL equ 72
FLOCK equ 73
FSYNC equ 74
FDATASYNC equ 75
TRUNCATE equ 76
FTRUNCATE equ 77
GETDENTS equ 78
GETCWD equ 79
CHDIR equ 80
FCHDIR equ 81
RENAME equ 82
MKDIR equ 83
RMDIR equ 84
CREAT equ 85
LINK equ 86
UNLINK equ 87
SYMLINK equ 88
READLINK equ 89
CHMOD equ 90
FCHMOD equ 91
CHOWN equ 92
FCHOWN equ 93
LCHOWN equ 94
UMASK equ 95
GETTIMEOFDAY equ 96
GETRLIMIT equ 97
GETRUSAGE equ 98
SYSINFO equ 99
SYS_TIMES equ 100
PTRACE equ 101
GETUID equ 102
SYSLOG equ 103
GETGID equ 104
SETUID equ 105
SETGID equ 106
GETEUID equ 107
GETEGID equ 108
SETPGID equ 109
GETPPID equ 110
GETPGRP equ 111
SETSID equ 112
SETREUID equ 113
SETREGID equ 114
GETGROUPS equ 115
SETGROUPS equ 116
SETRESUID equ 117
GETRESUID equ 118
SETRESGID equ 119
GETRESGID equ 120
GETPGID equ 121
SETFSUID equ 122
SETFSGID equ 123
GETSID equ 124
CAPGET equ 125
CAPSET equ 126
RT_SIGPENDING equ 127
RT_SIGTIMEDWAIT equ 128
RT_SIGQUEUEINFO equ 129
RT_SIGSUSPEND equ 130
SIGALTSTACK equ 131
UTIME equ 132
MKNOD equ 133
USELIB equ 134 ; NOT IMPLEMENTED
PERSONALITY equ 135
USTAT equ 136
STATFS equ 137
FSTATFS equ 138
SYSFS equ 139
GETPRIORITY equ 140
SETPRIORITY equ 141
SCHED_SETPARAM equ 142
SCHED_GETPARAM equ 143
SCHED_SETSCHEDULER equ 144
SCHED_GETSCHEDULER equ 145
SCHED_GET_PRIORITY_MAX equ 146
SCHED_GET_PRIORITY_MIN equ 147
SCHED_RR_GET_INTERVAL equ 148
MLOCK equ 149
MUNLOCK equ 150
MLOCKALL equ 151
MUNLOCKALL equ 152
VHANGUP equ 153
MODIFY_LDT equ 154
PIVOT_ROOT equ 155
_SYSCTL equ 156
PRCTL equ 157
ARCH_PRCTL equ 158
ADJTIMEX equ 159
SETRLIMIT equ 160
CHROOT equ 161
SYNC equ 162
ACCT equ 163
SETTIMEOFDAY equ 164
MOUNT equ 165
UMOUNT2 equ 166
SWAPON equ 167
SWAPOFF equ 168
REBOOT equ 169
SETHOSTNAME equ 170
SETDOMAINNAME equ 171
IOPL equ 172
IOPERM equ 173
CREATE_MODULE equ 174 ; removed
INIT_MODULE equ 175
DELETE_MODULE equ 176
GET_KERNEL_SYMS equ 177 ; removed
QUERY_MODULE equ 178 ; removed
QUOTACTL equ 179
NFSSERVCTL equ 180 ; NOT IMPLEMENTED
GETPMSG equ 181  ; NOT IMPLEMENTED
PUTPMSG equ 182 ; NOT IMPLEMENTED
AFS_SYSCALL equ 183 ; NOT IMPLEMENTED
TUXCALL equ 184 ; NOT IMPLEMENTED
SECURITY equ 185 ; NOT IMPLEMENTED
GETTID equ 186 ;
READAHEAD equ 187
SETXATTR equ 188
LSETXATTR equ 189
FSETXATTR equ 190
GETXATTR equ 191
LGETXATTR equ 192
FGETXATTR equ 193
LISTXATTR equ 194
LLISTXATTR equ 195
FLISTXATTR equ 196
REMOVEXATTR equ 197
LREMOVEXATTR equ 198
FREMOVEXATTR equ 199
TKILL equ 200
TIME equ 201
FUTEX equ 202
SCHED_SETAFFINITY equ 203
SCHED_GETAFFINITY equ 204
SET_THREAD_AREA equ 205  ; NOT IMPLEMENTED (ARCH_PRCTL)
IO_SETUP equ 206
IO_DESTROY equ 207
IO_GETEVENTS equ 208
IO_SUBMIT equ 209
IO_CANCEL equ 210
GET_THREAD_AREA equ 211 ; NOT IMPLEMENTED (ARCH_PRCTL)
LOOKUP_DCOOKIE equ 212
EPOLL_CREATE equ 213
EPOLL_CTL_OLD equ 214  ; NOT IMPLEMENTED
EPOLL_WAIT_OLD equ 215 ; NOT IMPLEMENTED
REMAP_FILE_PAGES equ 216
GETDENTS64 equ 217
SET_TID_ADDRESS equ 218
RESTART_SYSCALL equ 219
SEMTIMEDOP equ 220
FADVISE64 equ 221
TIMER_CREATE equ 222
TIMER_SETTIME equ 223
TIMER_GETTIME equ 224
TIMER_GETOVERRUN equ 225
TIMER_DELETE equ 226
CLOCK_SETTIME equ 227
CLOCK_GETTIME equ 228
CLOCK_GETRES equ 229
CLOCK_NANOSLEEP equ 230
EXIT_GROUP equ 231
EPOLL_WAIT equ 232
EPOLL_CTL equ 233
TGKILL equ 234
UTIMES equ 235
VSERVER equ 236  ; NOT IMPLEMENTED
MBIND equ 237
SET_MEMPOLICY equ 238
GET_MEMPOLICY equ 239
MQ_OPEN equ 240
MQ_UNLINK equ 241
MQ_TIMEDSEND equ 242
MQ_TIMEDRECEIVE equ 243
MQ_NOTIFY equ 244
MQ_GETSETATTR equ 245
KEXEC_LOAD equ 246
WAITID equ 247
ADD_KEY equ 248
REQUEST_KEY equ 249
KEYCTL equ 250
IOPRIO_SET equ 251
IOPRIO_GET equ 252
INOTIFY_INIT equ 253
INOTIFY_ADD_WATCH equ 254
INOTIFY_RM_WATCH equ 255
MIGRATE_PAGES equ 256
OPENAT equ 257
MKDIRAT equ 258
MKNODAT equ 259
FCHOWNAT equ 260
FUTIMESAT equ 261
NEWFSTATAT equ 262
UNLINKAT equ 263
RENAMEAT equ 264
LINKAT equ 265
SYMLINKAT equ 266
READLINKAT equ 267
FCHMODAT equ 268
FACCESSAT equ 269
PSELECT6 equ 270
PPOLL equ 271
UNSHARE equ 272
SET_ROBUST_LIST equ 273
GET_ROBUST_LIST equ 274
SPLICE equ 275
TEE equ 276
SYNC_FILE_RANGE equ 277
VMSPLICE equ 278
MOVE_PAGES equ 279
UTIMENSAT equ 280
EPOLL_PWAIT equ 281
SIGNALFD equ 282
TIMERFD_CREATE equ 283
EVENTFD equ 284
FALLOCATE equ 285
TIMERFD_SETTIME equ 286
TIMERFD_GETTIME equ 287
ACCEPT4 equ 288
SIGNALFD4 equ 289
EVENTFD2 equ 290
EPOLL_CREATE1 equ 291
DUP3 equ 292
PIPE2 equ 293
INOTIFY_INIT1 equ 294
PREADV equ 295
PWRITEV equ 296
RT_TGSIGQUEUEINFO equ 297
PERF_EVENT_OPEN equ 298
RECVMMSG equ 299
FANOTIFY_INIT equ 300
FANOTIFY_MARK equ 301
PRLIMIT64 equ 302
NAME_TO_HANDLE_AT equ 303
OPEN_BY_HANDLE_AT equ 304
CLOCK_ADJTIME equ 305
SYNCFS equ 306
SENDMMSG equ 307
SYS_SETNS equ 308
GETCPU equ 309
PROCESS_VM_READV equ 310
PROCESS_VM_WRITEV equ 311
KCMP equ 312
FINIT_MODULE equ 313
SCHED_SETATTR equ 314
SCHED_GETATTR equ 315
RENAMEAT2 equ 316
SECCOMP equ 317
GETRANDOM equ 318
MEMFD_CREATE equ 319
KEXEC_FILE_LOAD equ 320
BPF equ 321
STUB_EXECVEAT equ 322
USERFAULTFD equ 323
MEMBARRIER equ 324
MLOCK2 equ 325
COPY_FILE_RANGE equ 326
PREADV2 equ 327
PWRITEV2 equ 328
PKEY_MPROTECT equ 329
PKEY_ALLOC equ 330
PKEY_FREE equ 331
STATX equ 332
IO_PGETEVENTS equ 333
RSEQ equ 334
;PKEY_MPROTECT equ 335

%endif