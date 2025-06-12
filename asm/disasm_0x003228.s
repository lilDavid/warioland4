.include "macros.s.inc"


thumb_func_start func_8003228
func_8003228:
	push	{r4, lr}
	add	r4, r0, #0
	sub	r3, r2, #1
	cmp	r2, #0
	beq	.L_3244
	mov	r2, #1
	neg	r2, r2
.L_3236:
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r1, #1
	sub	r3, #1
	cmp	r3, r2
	bne	.L_3236
.L_3244:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_800324C
func_800324C:
	push	{r4, r5, r6, lr}
	sub	sp, #128	@ 0x80
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	ldr	r2, .L_3278
	ldrh	r0, [r2, #0]
	ldr	r1, .L_327c
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r3, .L_3280
	mov	r0, #1
	eor	r3, r0
	mov	r2, sp
	ldr	r0, .L_3284
	ldr	r1, .L_3280
	sub	r0, r0, r1
	lsl	r0, r0, #15
	b	.L_3294
	.align	2, 0
.L_3278:
	.4byte	0x04000204
.L_327c:
	.4byte	0x0000fffc
.L_3280:
	.4byte	func_8003228
.L_3284:
	.4byte	func_800324C
.L_3288:
	ldrh	r0, [r3, #0]
	strh	r0, [r2, #0]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #1
	lsl	r0, r0, #16
.L_3294:
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L_3288
	mov	r3, sp
	add	r3, #1
	add	r0, r4, #0
	add	r1, r5, #0
	add	r2, r6, #0
	bl	_call_via_r3
	add	sp, #128	@ 0x80
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80032B0
func_80032B0:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	add	r3, r2, #0
	ldr	r2, .L_32e8
	ldrh	r0, [r2, #0]
	ldr	r1, .L_32ec
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2, #0]
	sub	r3, #1
	mov	r0, #1
	neg	r0, r0
	cmp	r3, r0
	beq	.L_32e0
	add	r1, r0, #0
.L_32d2:
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #0]
	add	r5, #1
	add	r4, #1
	sub	r3, #1
	cmp	r3, r1
	bne	.L_32d2
.L_32e0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_32e8:
	.4byte	0x04000204
.L_32ec:
	.4byte	0x0000fffc


thumb_func_start func_80032F0
func_80032F0:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r3, r1, #0
	sub	r4, r2, #1
	cmp	r2, #0
	beq	.L_3316
	mov	r2, #1
	neg	r2, r2
.L_3300:
	ldrb	r1, [r3, #0]
	ldrb	r0, [r5, #0]
	add	r5, #1
	add	r3, #1
	cmp	r1, r0
	beq	.L_3310
	sub	r0, r3, #1
	b	.L_3318
.L_3310:
	sub	r4, #1
	cmp	r4, r2
	bne	.L_3300
.L_3316:
	mov	r0, #0
.L_3318:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8003320
func_8003320:
	push	{r4, r5, r6, lr}
	sub	sp, #192	@ 0xc0
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	ldr	r2, .L_334c
	ldrh	r0, [r2, #0]
	ldr	r1, .L_3350
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r3, .L_3354
	mov	r0, #1
	eor	r3, r0
	mov	r2, sp
	ldr	r0, .L_3358
	ldr	r1, .L_3354
	sub	r0, r0, r1
	lsl	r0, r0, #15
	b	.L_3368
	.align	2, 0
.L_334c:
	.4byte	0x04000204
.L_3350:
	.4byte	0x0000fffc
.L_3354:
	.4byte	func_80032F0
.L_3358:
	.4byte	func_8003320
.L_335c:
	ldrh	r0, [r3, #0]
	strh	r0, [r2, #0]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #1
	lsl	r0, r0, #16
.L_3368:
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L_335c
	mov	r3, sp
	add	r3, #1
	add	r0, r4, #0
	add	r1, r5, #0
	add	r2, r6, #0
	bl	_call_via_r3
	add	sp, #192	@ 0xc0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8003384
func_8003384:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	add	r5, r1, #0
	add	r4, r2, #0
	mov	r7, #0
	b	.L_3396
.L_3390:
	add	r0, r7, #1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
.L_3396:
	cmp	r7, #2
	bhi	.L_33b4
	add	r0, r6, #0
	add	r1, r5, #0
	add	r2, r4, #0
	bl	func_80032B0
	add	r0, r6, #0
	add	r1, r5, #0
	add	r2, r4, #0
	bl	func_8003320
	add	r3, r0, #0
	cmp	r3, #0
	bne	.L_3390
.L_33b4:
	add	r0, r3, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
