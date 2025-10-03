.include "macros.s.inc"


thumb_func_start func_8000CA8
func_8000CA8:
	push	{lr}
	sub	sp, #4
	mov	r1, sp
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_cd0
	str	r1, [r2, #0]
	ldr	r0, .L_cd4
	str	r0, [r2, #4]
	ldr	r1, .L_cd8
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	ldr	r1, .L_cdc
	mov	r2, #254	@ 0xfe
	lsl	r2, r2, #7
	bl	func_8003384
	add	sp, #4
	pop	{r0}
	bx	r0
.L_cd0:
	.4byte	0x040000d4
.L_cd4:
	.4byte	0x02038100
.L_cd8:
	.4byte	0x81003f80
.L_cdc:
	.4byte	0x0e000100


thumb_func_start func_8000CE0
func_8000CE0:
	push	{lr}
	sub	sp, #4
	mov	r1, sp
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_d0c
	str	r1, [r2, #0]
	ldr	r0, .L_d10
	str	r0, [r2, #4]
	ldr	r1, .L_d14
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #20
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	bl	func_8003384
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_d0c:
	.4byte	0x040000d4
.L_d10:
	.4byte	0x02038000
.L_d14:
	.4byte	0x81004000


thumb_func_start func_8000D18
func_8000D18:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #4
	mov	r0, sp
	mov	r1, #0
	mov	r9, r1
	strh	r1, [r0, #0]
	ldr	r4, .L_d80
	str	r0, [r4, #0]
	ldr	r0, .L_d84
	str	r0, [r4, #4]
	ldr	r6, .L_d88
	str	r6, [r4, #8]
	ldr	r1, [r4, #8]
	ldr	r2, .L_d8c
	mov	r8, r2
	ldr	r5, .L_d90
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r8
	ldr	r1, [r1, #0]
	mov	r2, #16
	bl	func_8003384
	mov	r0, sp
	mov	r1, r9
	strh	r1, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_d94
	str	r0, [r4, #4]
	str	r6, [r4, #8]
	ldr	r1, [r4, #8]
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r8
	ldr	r1, [r1, #0]
	mov	r2, #168	@ 0xa8
	lsl	r2, r2, #4
	add	r1, r1, r2
	mov	r2, #16
	bl	func_8003384
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_d80:
	.4byte	0x040000d4
.L_d84:
	.4byte	0x02039000
.L_d88:
	.4byte	0x81000008
.L_d8c:
	.4byte	sUnk_8095404
.L_d90:
	.4byte	gSelectedSaveFile
.L_d94:
	.4byte	0x02039a80


thumb_func_start func_8000D98
func_8000D98:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	r6, r0, #0
	lsl	r6, r6, #24
	ldr	r0, .L_e24
	lsr	r6, r6, #22
	add	r0, r6, r0
	ldr	r5, [r0, #0]
	ldr	r0, .L_e28
	add	r0, r6, r0
	ldr	r4, [r0, #0]
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	mov	r0, #176	@ 0xb0
	lsl	r0, r0, #1
	mov	r8, r0
	add	r5, r8
	add	r4, r8
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	ldr	r0, .L_e2c
	add	r0, r6, r0
	ldr	r5, [r0, #0]
	ldr	r0, .L_e30
	add	r0, r6, r0
	ldr	r4, [r0, #0]
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	add	r5, r8
	add	r4, r8
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	ldr	r0, .L_e34
	add	r0, r6, r0
	ldr	r5, [r0, #0]
	ldr	r0, .L_e38
	add	r6, r6, r0
	ldr	r4, [r6, #0]
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	mov	r0, #168	@ 0xa8
	lsl	r0, r0, #4
	add	r5, r5, r0
	add	r4, r4, r0
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #16
	bl	func_8003384
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_e24:
	.4byte	sUnk_84009BC
.L_e28:
	.4byte	sUnk_80953EC
.L_e2c:
	.4byte	sUnk_84009C4
.L_e30:
	.4byte	sUnk_80953F4
.L_e34:
	.4byte	sUnk_84009CC
.L_e38:
	.4byte	sUnk_8095404


thumb_func_start func_8000E3C
func_8000E3C:
	push	{lr}
	ldr	r0, .L_e50
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #20
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_e50:
	.4byte	0x02038000


thumb_func_start func_8000E54
func_8000E54:
	push	{r4, lr}
	ldr	r4, .L_e80
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #20
	add	r0, r4, #0
	mov	r2, #64	@ 0x40
	bl	func_8003384
	ldr	r2, .L_e84
	str	r4, [r2, #0]
	ldr	r0, .L_e88
	str	r0, [r2, #4]
	ldr	r1, .L_e8c
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	ldr	r1, .L_e90
	mov	r2, #64	@ 0x40
	bl	func_8003384
	pop	{r4}
	pop	{r0}
	bx	r0
.L_e80:
	.4byte	0x02038000
.L_e84:
	.4byte	0x040000d4
.L_e88:
	.4byte	0x02038900
.L_e8c:
	.4byte	0x80000020
.L_e90:
	.4byte	0x0e000900


thumb_func_start func_8000E94
func_8000E94:
	push	{lr}
	ldr	r0, .L_ea4
	ldr	r1, .L_ea8
	mov	r2, #64	@ 0x40
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_ea4:
	.4byte	0x02038040
.L_ea8:
	.4byte	0x0e000040


thumb_func_start func_8000EAC
func_8000EAC:
	push	{lr}
	ldr	r0, .L_ebc
	ldr	r1, .L_ec0
	mov	r2, #64	@ 0x40
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_ebc:
	.4byte	0x02038900
.L_ec0:
	.4byte	0x0e000900


thumb_func_start func_8000EC4
func_8000EC4:
	push	{lr}
	ldr	r0, .L_ee0
	ldr	r2, .L_ee4
	ldr	r1, .L_ee8
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #6
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_ee0:
	.4byte	0x02039000
.L_ee4:
	.4byte	sUnk_8095404
.L_ee8:
	.4byte	gSelectedSaveFile


thumb_func_start func_8000EEC
func_8000EEC:
	push	{lr}
	ldr	r0, .L_f08
	ldr	r2, .L_f0c
	ldr	r1, .L_f10
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_f08:
	.4byte	0x02038100
.L_f0c:
	.4byte	sUnk_80953EC
.L_f10:
	.4byte	gSelectedSaveFile


thumb_func_start func_8000F14
func_8000F14:
	push	{lr}
	ldr	r0, .L_f30
	ldr	r2, .L_f34
	ldr	r1, .L_f38
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_f30:
	.4byte	0x02038300
.L_f34:
	.4byte	sUnk_80953F4
.L_f38:
	.4byte	gSelectedSaveFile


thumb_func_start func_8000F3C
func_8000F3C:
	push	{lr}
	ldr	r0, .L_f58
	ldr	r2, .L_f5c
	ldr	r1, .L_f60
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #32
	bl	func_8003384
	pop	{r0}
	bx	r0
	.align	2, 0
.L_f58:
	.4byte	0x020382e0
.L_f5c:
	.4byte	sUnk_80953FC
.L_f60:
	.4byte	gSelectedSaveFile


thumb_func_start func_8000F64
func_8000F64:
	push	{lr}
	ldr	r2, .L_f84
	ldr	r0, .L_f88
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	add	r2, r1, r2
	ldr	r0, [r2, #0]
	ldr	r2, .L_f8c
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_f84:
	.4byte	sUnk_84009BC
.L_f88:
	.4byte	gSelectedSaveFile
.L_f8c:
	.4byte	sUnk_80953EC


thumb_func_start func_8000F90
func_8000F90:
	push	{lr}
	ldr	r2, .L_fb0
	ldr	r0, .L_fb4
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	add	r2, r1, r2
	ldr	r0, [r2, #0]
	ldr	r2, .L_fb8
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_fb0:
	.4byte	sUnk_84009C4
.L_fb4:
	.4byte	gSelectedSaveFile
.L_fb8:
	.4byte	sUnk_80953F4


thumb_func_start func_8000FBC
func_8000FBC:
	push	{lr}
	ldr	r2, .L_fdc
	ldr	r0, .L_fe0
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	add	r2, r1, r2
	ldr	r0, [r2, #0]
	ldr	r2, .L_fe4
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #6
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_fdc:
	.4byte	sUnk_84009CC
.L_fe0:
	.4byte	gSelectedSaveFile
.L_fe4:
	.4byte	sUnk_8095404


thumb_func_start func_8000FE8
func_8000FE8:
	push	{lr}
	ldr	r0, .L_ff8
	ldr	r1, .L_ffc
	mov	r2, #32
	bl	func_8003384
	pop	{r0}
	bx	r0
.L_ff8:
	.4byte	0x02038080
.L_ffc:
	.4byte	0x0e000080


thumb_func_start func_8001000
func_8001000:
	push	{lr}
	ldr	r0, .L_1014
	ldr	r1, .L_1018
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	bl	func_8003384
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1014:
	.4byte	0x02038c00
.L_1018:
	.4byte	0x0e000c00


thumb_func_start func_800101C
func_800101C:
	push	{lr}
	ldr	r0, .L_1030
	ldr	r1, .L_1034
	mov	r2, #255	@ 0xff
	lsl	r2, r2, #7
	bl	func_800324C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1030:
	.4byte	0x0e000080
.L_1034:
	.4byte	0x02038080


thumb_func_start func_8001038
func_8001038:
	push	{lr}
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #20
	ldr	r1, .L_1054
	mov	r2, #128	@ 0x80
	bl	func_800324C
	ldr	r0, .L_1058
	ldr	r1, .L_105c
	mov	r2, #64	@ 0x40
	bl	func_800324C
	pop	{r0}
	bx	r0
.L_1054:
	.4byte	0x02038000
.L_1058:
	.4byte	0x0e000900
.L_105c:
	.4byte	0x02038900


.section .rodata

.global sUnk_80953EC
sUnk_80953EC:
	.4byte 0xE000100, 0xE000500

.global sUnk_80953F4
sUnk_80953F4:
    .4byte 0xE000300, 0xE000700

.global sUnk_80953FC
sUnk_80953FC:
	.4byte 0xE0002E0, 0xE0006E0

.global sUnk_8095404
sUnk_8095404:
	.4byte 0xE001000, 0xE004800
