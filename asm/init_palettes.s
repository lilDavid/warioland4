.include "constants.s.inc"
.include "macros.s.inc"

thumb_func_start init_palettes
init_palettes:
baserom_blob 0x00098C, 0x0009E0
