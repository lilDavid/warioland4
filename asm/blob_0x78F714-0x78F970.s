.include "macros.s.inc"

.section .data


.global sSecondarySpriteAITable
sSecondarySpriteAITable:

baserom_blob 0x78F714, 0x78F87C

.global sUnk_878F87C
sUnk_878F87C:

baserom_blob 0x78F87C, 0x78F884

.global sUnk_878F884
sUnk_878F884:

baserom_blob 0x78F884, 0x78F88C

.global sUnk_878F88C
sUnk_878F88C:

baserom_blob 0x78F88C, 0x78F93C

.global sUnk_878F93C
sUnk_878F93C:
	baserom_blob 0x78F93C, 0x78F970
