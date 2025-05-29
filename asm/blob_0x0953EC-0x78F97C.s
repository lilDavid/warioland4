# I suspect that this is the start of the .rodata section

.include "macros.s.inc"

.section .rodata


baserom_blob 0x0953EC, 0x3C4B18

.global rock_oam_data
rock_oam_data:

baserom_blob 0x3C4B18, 0x78F97C
