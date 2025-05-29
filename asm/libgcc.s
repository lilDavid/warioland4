#include "macros.s.inc"


thumb_func_start _call_via_r0
_call_via_r0:  @0x8094DFC
    bx r0
    nop

thumb_func_start _call_via_r1
_call_via_r1:  @0x8094E00
    bx r1
    nop

thumb_func_start _call_via_r2
_call_via_r2:  @0x094E04
    bx r2
    nop

thumb_func_start _call_via_r3
_call_via_r3:  @0x094E08
    bx r3
    nop

thumb_func_start _call_via_r4
_call_via_r4:  @0x094E0C
    bx r4
    nop

thumb_func_start _call_via_r5
_call_via_r5:  @0x094E10
    bx r5
    nop

thumb_func_start _call_via_r6
_call_via_r6:  @0x094E14
    bx r6
    nop

thumb_func_start _call_via_r7
_call_via_r7:  @0x094E18
    bx r7
    nop

thumb_func_start _call_via_r8
_call_via_r8:  @0x094E1C
    bx r8
    nop

thumb_func_start _call_via_r9
_call_via_r9:  @0x094E20
    bx r9
    nop

thumb_func_start _call_via_r10
_call_via_r10:  @0x094E24
    bx r10
    nop

thumb_func_start _call_via_r11
_call_via_r11:  @0x094E28
    bx r11
    nop

thumb_func_start _call_via_r12
_call_via_r12:  @0x094E2C
    bx r12
    nop

thumb_func_start _call_via_sp
_call_via_sp:  @0x094E30
    bx sp
    nop

thumb_func_start _call_via_lr
_call_via_lr:  @0x094E34
    bx lr
    nop

thumb_func_start __divsi3
__divsi3:
    baserom_blob 0x094E38, 0x094ECC

thumb_func_start __div_by_zero
__div_by_zero:  @ 0x8094ECC
    mov pc, lr

thumb_func_start __modsi3
__modsi3:
    baserom_blob 0x094ED0, 0x094FA0

thumb_func_start __udivsi3
__udivsi3:
    baserom_blob 0x094FA0, 0x095018

thumb_func_start __umodsi3
__umodsi3:
    baserom_blob 0x095018, 0x0950D8

thumb_func_start memcpy
memcpy:
    baserom_blob 0x0950D8, 0x095136

.align 2, 0
