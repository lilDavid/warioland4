.include "macros.s.inc"

thumb_func_start hardware_init
hardware_init:
baserom_blob 0x0006B0, 0x0007BC
