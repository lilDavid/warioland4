.include "macros.s.inc"

thumb_func_start soft_reset_check
soft_reset_check:
baserom_blob 0x0007BC, 0x0007EC
