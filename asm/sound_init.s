.include "macros.s.inc"

thumb_func_start sound_init
sound_init:
baserom_blob 0x001D20, 0x001D98
