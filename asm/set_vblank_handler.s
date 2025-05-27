.include "constants.s.inc"
.include "macros.s.inc"

thumb_func_start set_vblank_handler
set_vblank_handler:
baserom_blob 0x000C14, 0x000C2C
