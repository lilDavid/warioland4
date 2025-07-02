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


thumb_func_start FixedMul
FixedMul:
	lsl	r0, r0, #16
	asr	r0, r0, #16
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mul	r0, r1
	add	r1, r0, #0
	cmp	r0, #0
	bge	.L_a4e
	add	r1, #255	@ 0xff
.L_a4e:
	lsl	r0, r1, #8
	asr	r0, r0, #16
	bx	lr


thumb_func_start FixedDiv
FixedDiv:
	push	{lr}
	lsl	r0, r0, #16
	asr	r0, r0, #8
	lsl	r1, r1, #16
	asr	r1, r1, #16
	bl	__divsi3
	lsl	r0, r0, #16
	asr	r0, r0, #16
	pop	{r1}
	bx	r1


thumb_func_start FixedInverse
FixedInverse:
	push	{lr}
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #9
	lsl	r1, r1, #16
	asr	r1, r1, #16
	bl	__divsi3
	lsl	r0, r0, #16
	asr	r0, r0, #16
	pop	{r1}
	bx	r1
