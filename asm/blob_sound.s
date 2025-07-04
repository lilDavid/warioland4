.include "macros.s.inc"


thumb_func_start func_8001060
func_8001060:
    adr r2, func_8001064
    bx r2


arm_func_start func_8001064
func_8001064:
    umull r2, r3, r0, r1
    add r0, r3, #0
    bx lr


thumb_func_start func_8001070
func_8001070:


    baserom_blob 0x001070, 0x0016C4


thumb_func_start func_80016C4
func_80016C4:


    baserom_blob 0x0016C4, 0x001D20


thumb_func_start Sound_Init
Sound_Init:
    baserom_blob 0x001D20, 0x001D98


thumb_func_start func_8001D98
func_8001D98:
    baserom_blob 0x001D98, 0x001DA4


thumb_func_start Sound_Play
Sound_Play:
    baserom_blob 0x001DA4, 0x001DD0


thumb_func_start func_8001DD0
func_8001DD0:
    baserom_blob 0x001DD0, 0x001E1C


thumb_func_start func_8001E1C
func_8001E1C:
    baserom_blob 0x001E1C, 0x001E70


thumb_func_start func_8001E70
func_8001E70:
    baserom_blob 0x001E70, 0x001EA4


thumb_func_start func_8001EA4
func_8001EA4:
    baserom_blob 0x001EA4, 0x001ED8


thumb_func_start func_8001ED8
func_8001ED8:


    baserom_blob 0x001ED8, 0x001F04


thumb_func_start func_8001F04
func_8001F04:


    baserom_blob 0x001F04, 0x001F3C


thumb_func_start func_8001F3C
func_8001F3C:
    baserom_blob 0x001F3C, 0x001F4C


thumb_func_start func_8001F4C
func_8001F4C:
    baserom_blob 0x001F4C, 0x001F6C


thumb_func_start func_8001F6C
func_8001F6C:


    baserom_blob 0x001F6C, 0x0022C8


thumb_func_start func_80022C8
func_80022C8:
    baserom_blob 0x0022C8, 0x002360


    baserom_blob 0x002360, 0x0023B4


thumb_func_start func_80023B4
func_80023B4:


    baserom_blob 0x0023B4, 0x002430


thumb_func_start func_8002430
func_8002430:


    baserom_blob 0x002430, 0x0025C8


thumb_func_start func_80025C8
func_80025C8:


    baserom_blob 0x0025C8, 0x002D30


thumb_func_start func_8002D30
func_8002D30:
    baserom_blob 0x002D30, 0x002D58


thumb_func_start func_8002D58
func_8002D58:
    baserom_blob 0x002D58, 0x002DC0


thumb_func_start func_8002DC0
func_8002DC0:


    baserom_blob 0x002DC0, 0x002EBC


thumb_func_start func_8002EBC
func_8002EBC:


    baserom_blob 0x002EBC, 0x003220
