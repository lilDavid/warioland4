.include "macros.s.inc"


@ These are mostly arrays of pointers with some other arrays mixed in. These are ordered among themselves by the file
@ they're used in, just like the .rodata section. The fact the data is laid out like this suggests the arrays weren't
@ properly marked const.

.section .data

baserom_blob 0x78E6CC, 0x78E800


@ Sprite AI and sprite sets

.global sUnk_878E800
sUnk_878E800:
	baserom_blob 0x78E800, 0x78EBF0

.global sUnk_878EBF0
sUnk_878EBF0:
	baserom_blob 0x78EBF0, 0x78EDB4

.global sUnk_878EDB4
sUnk_878EDB4:
	baserom_blob 0x78EDB4, 0x78EF78

.global sUnk_878EF78
sUnk_878EF78:
	baserom_blob 0x78EF78, 0x78F0E4


baserom_blob 0x78F0E4, 0x78F5A4
