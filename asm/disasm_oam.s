.include "macros.s.inc"


thumb_func_start func_8000A0C
func_8000A0C:
	ldr	r2, .L_a34
	ldr	r0, .L_a38
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #3
	add	r2, r0, r2
	cmp	r1, #127	@ 0x7f
	bgt	.L_a30
	mov	r0, #255	@ 0xff
	mov	r3, #0
.L_a1e:
	strh	r0, [r2, #0]
	add	r2, #2
	strh	r0, [r2, #0]
	add	r2, #2
	strh	r3, [r2, #0]
	add	r2, #4
	add	r1, #1
	cmp	r1, #127	@ 0x7f
	ble	.L_a1e
.L_a30:
	bx	lr
	.align	2, 0
.L_a34:
	.4byte	gUnk_3001444
.L_a38:
	.4byte	gUnk_300184A
