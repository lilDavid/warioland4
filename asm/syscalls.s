.include "macros.s.inc"
.include "syscalls.s.inc"


thumb_func_start CPUSet
CPUSet:  @ 0x8003220
    svc SYSCALL_CPUSet
    bx lr

thumb_func_start LZ77UnCompVram
LZ77UnCompVram:  @ 0x8003224
    svc SYSCALL_LZ77UnCompVram
    bx lr
