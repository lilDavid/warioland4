.include "macros.s.inc"


thumb_func_start func_8000A84
func_8000A84:
	add	r3, r0, #0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r0, .L_aac
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	beq	.L_ab0
	cmp	r0, #4
	bgt	.L_aec
	cmp	r0, #3
	bne	.L_aec
	lsl	r0, r1, #4
	sub	r0, r0, r1
	lsl	r0, r0, #5
	lsl	r1, r3, #1
	add	r0, r0, r1
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	b	.L_b12
	.align	2, 0
.L_aac:
	.4byte	gUnk_300188B
.L_ab0:
	ldr	r0, .L_ac8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_acc
	lsl	r0, r1, #4
	sub	r0, r0, r1
	lsl	r0, r0, #4
	add	r0, r0, r3
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	b	.L_ad6
	.align	2, 0
.L_ac8:
	.4byte	gUnk_300188C
.L_acc:
	lsl	r0, r1, #4
	sub	r0, r0, r1
	lsl	r0, r0, #4
	add	r0, r0, r3
	ldr	r1, .L_ae8
.L_ad6:
	add	r3, r0, r1
	ldrh	r1, [r3, #0]
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #8
	and	r0, r1
	orr	r0, r2
	strh	r0, [r3, #0]
	b	.L_b16
	.align	2, 0
.L_ae8:
	.4byte	0x0600a000
.L_aec:
	ldr	r0, .L_b04
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_b08
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #6
	lsl	r1, r3, #1
	add	r0, r0, r1
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	b	.L_b12
.L_b04:
	.4byte	gUnk_300188C
.L_b08:
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #6
	add	r0, r0, r3
	ldr	r1, .L_b18
.L_b12:
	add	r3, r0, r1
	strh	r2, [r3, #0]
.L_b16:
	bx	lr
.L_b18:
	.4byte	0x0600a000


thumb_func_start func_8000B1C
func_8000B1C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	add	r4, r0, #0
	add	r6, r1, #0
	add	r1, r3, #0
	ldr	r0, [sp, #40]	@ 0x28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #0]
	sub	r5, r2, r4
	cmp	r5, #0
	bge	.L_b3e
	neg	r5, r5
.L_b3e:
	sub	r0, r1, r6
	cmp	r0, #0
	bge	.L_b46
	neg	r0, r0
.L_b46:
	cmp	r5, r0
	blt	.L_b90
	cmp	r4, r2
	bgt	.L_b58
	mov	sl, r4
	str	r2, [sp, #4]
	add	r7, r6, #0
	mov	r9, r1
	b	.L_b60
.L_b58:
	mov	sl, r2
	str	r4, [sp, #4]
	add	r7, r1, #0
	mov	r9, r6
.L_b60:
	mov	r6, #0
	ldr	r0, [sp, #4]
	mov	r1, sl
	sub	r4, r0, r1
	cmp	r6, r4
	bgt	.L_bd6
.L_b6c:
	mov	r2, r9
	sub	r0, r2, r7
	mul	r0, r6
	mov	r8, r4
	add	r1, r4, #0
	bl	__divsi3
	add	r5, r0, #0
	mov	r1, sl
	add	r0, r6, r1
	add	r1, r5, r7
	ldr	r2, [sp, #0]
	bl	func_8000A84
	add	r6, #1
	cmp	r6, r8
	ble	.L_b6c
	b	.L_bd6
.L_b90:
	cmp	r6, r1
	bgt	.L_b9e
	mov	sl, r4
	str	r2, [sp, #4]
	add	r7, r6, #0
	mov	r9, r1
	b	.L_ba6
.L_b9e:
	mov	sl, r2
	str	r4, [sp, #4]
	add	r7, r1, #0
	mov	r9, r6
.L_ba6:
	mov	r5, #0
	mov	r2, r9
	sub	r2, r2, r7
	mov	r8, r2
	cmp	r5, r8
	bgt	.L_bd6
.L_bb2:
	ldr	r1, [sp, #4]
	mov	r2, sl
	sub	r0, r1, r2
	mul	r0, r5
	mov	r9, r8
	mov	r1, r8
	bl	__divsi3
	add	r6, r0, #0
	mov	r1, sl
	add	r0, r6, r1
	add	r1, r5, r7
	ldr	r2, [sp, #0]
	bl	func_8000A84
	add	r5, #1
	cmp	r5, r9
	ble	.L_bb2
.L_bd6:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
