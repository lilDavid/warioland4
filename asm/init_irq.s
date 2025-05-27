.include "macros.s.inc"

thumb_func_start init_irq
init_irq:
baserom_blob 0x0009E0, 0x000A0C
