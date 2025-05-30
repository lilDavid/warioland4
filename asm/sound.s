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
    baserom_blob 0x001070, 0x001D20


thumb_func_start Sound_Init
Sound_Init:
    baserom_blob 0x001D20, 0x001D98


    baserom_blob 0x001D98, 0x001DA4


thumb_func_start Sound_Play
Sound_Play:
    baserom_blob 0x001DA4, 0x001DD0


    baserom_blob 0x001DD0, 0x0022C8


thumb_func_start func_80022C8
func_80022C8:
    baserom_blob 0x0022C8, 0x002360


    baserom_blob 0x002360, 0x003220
