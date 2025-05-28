.include "macros.s.inc"


thumb_func_start handle_vblank_intr
handle_vblank_intr:
    baserom_blob 0x000BE8, 0x000C14

thumb_func_start set_vblank_callback
set_vblank_callback:
    baserom_blob 0x000C14, 0x000C2C

thumb_func_start handle_hblank_intr
handle_hblank_intr:
    baserom_blob 0x000C2C, 0x000C50

thumb_func_start set_hblank_callback
set_hblank_callback:
    baserom_blob 0x000C50, 0x000C68

thumb_func_start handle_vcount_intr
handle_vcount_intr:
    baserom_blob 0x000C68, 0x000C8C

thumb_func_start set_vcount_callback
set_vcount_callback:
    baserom_blob 0x000C8C, 0x000CA4

thumb_func_start null_callback
null_callback:  @ 0x8000CA4
    bx lr

thumb_func_start_non_aligned func_000CA6
func_000CA6:
    baserom_blob 0x000CA6, 0x000CE0
