.include "macros.s.inc"


thumb_func_start func_806E08C
func_806E08C:
	push	{r4, r5, r6, lr}
	bl	func_806E2B8
	ldr	r3, .L_6e0ac
	mov	r5, #0
.L_6e096:
	mov	r4, #0
	ldrb	r0, [r3, #0]
	cmp	r0, #6
	bls	.L_6e0a0
	b	.L_6e19a
.L_6e0a0:
	lsl	r0, r0, #2
	ldr	r1, .L_6e0b0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6e0ac:
	.4byte	gUnk_3003B08
.L_6e0b0:
	.4byte	.L_6e0b4
.L_6e0b4:
	.4byte	.L_6e19a
	.4byte	.L_6e0d0
	.4byte	.L_6e19a
	.4byte	.L_6e0fa
	.4byte	.L_6e122
	.4byte	.L_6e14e
	.4byte	.L_6e172
.L_6e0d0:
	ldrb	r0, [r3, #2]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r2, [r3, #1]
	cmp	r0, r2
	bne	.L_6e19a
	mov	r4, #1
	strb	r1, [r3, #2]
	ldrb	r0, [r3, #4]
	add	r0, #1
	strb	r0, [r3, #4]
	mov	r0, #4
	ldrsb	r0, [r3, r0]
	ldrb	r6, [r3, #3]
	cmp	r0, r6
	bne	.L_6e19a
	strb	r1, [r3, #4]
	b	.L_6e19a
.L_6e0fa:
	mov	r1, #4
	ldrsb	r1, [r3, r1]
	ldrb	r0, [r3, #3]
	sub	r0, #1
	cmp	r1, r0
	beq	.L_6e19a
	ldrb	r0, [r3, #2]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r2, [r3, #1]
	cmp	r0, r2
	bne	.L_6e19a
	mov	r4, #1
	strb	r1, [r3, #2]
	ldrb	r0, [r3, #4]
	add	r0, #1
	b	.L_6e198
.L_6e122:
	ldrb	r0, [r3, #2]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r6, [r3, #1]
	cmp	r0, r6
	bne	.L_6e19a
	mov	r4, #1
	strb	r1, [r3, #2]
	ldrb	r0, [r3, #4]
	add	r0, #1
	strb	r0, [r3, #4]
	mov	r1, #4
	ldrsb	r1, [r3, r1]
	ldrb	r0, [r3, #3]
	cmp	r1, r0
	bne	.L_6e19a
	mov	r0, #2
	sub	r0, r0, r1
	b	.L_6e198
.L_6e14e:
	ldrb	r1, [r3, #4]
	mov	r0, #4
	ldrsb	r0, [r3, r0]
	cmp	r0, #0
	beq	.L_6e19a
	ldrb	r0, [r3, #2]
	add	r0, #1
	mov	r2, #0
	strb	r0, [r3, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r6, [r3, #1]
	cmp	r0, r6
	bne	.L_6e19a
	mov	r4, #1
	strb	r2, [r3, #2]
	sub	r0, r1, #1
	b	.L_6e198
.L_6e172:
	ldrb	r0, [r3, #2]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r2, [r3, #1]
	cmp	r0, r2
	bne	.L_6e19a
	mov	r4, #1
	strb	r1, [r3, #2]
	ldrb	r0, [r3, #4]
	sub	r0, #1
	strb	r0, [r3, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bge	.L_6e19a
	ldrb	r0, [r3, #3]
	sub	r0, #1
.L_6e198:
	strb	r0, [r3, #4]
.L_6e19a:
	cmp	r4, #0
	beq	.L_6e1ca
	ldrb	r1, [r3, #4]
	mov	r0, #4
	ldrsb	r0, [r3, r0]
	cmp	r0, #0
	bge	.L_6e1b0
	mvn	r0, r0
	add	r0, #1
	lsl	r0, r0, #24
	lsr	r1, r0, #24
.L_6e1b0:
	lsl	r0, r1, #24
	asr	r0, r0, #17
	ldr	r2, [r3, #8]
	add	r2, r2, r0
	lsl	r0, r5, #7
	ldr	r6, .L_6e1dc
	add	r0, r0, r6
	ldr	r1, .L_6e1e0
	str	r2, [r1, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_6e1e4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_6e1ca:
	add	r5, #1
	add	r3, #12
	cmp	r5, #15
	bgt	.L_6e1d4
	b	.L_6e096
.L_6e1d4:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e1dc:
	.4byte	0x6004000
.L_6e1e0:
	.4byte	0x40000D4
.L_6e1e4:
	.4byte	0x80000040


thumb_func_start func_806E1E8
func_806E1E8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, .L_6e22c
	mov	r4, #0
	ldr	r0, .L_6e230
	mov	sl, r0
	ldr	r2, .L_6e234
	mov	r9, r2
	ldr	r0, .L_6e238
	mov	r8, r0
	ldr	r2, .L_6e23c
	mov	ip, r2
	mov	r7, #0
	mov	r6, #0
	ldr	r5, .L_6e240
.L_6e20c:
	ldr	r0, .L_6e244
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #4
	add	r0, r4, r0
	add	r0, r9
	ldrb	r0, [r0, #0]
	add	r0, sl
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_6e248
	lsl	r0, r2, #5
	add	r0, r6, r0
	add	r0, r8
	b	.L_6e24e
.L_6e22c:
	.4byte	gUnk_3003B08
.L_6e230:
	.4byte	gSwitchStates
.L_6e234:
	.4byte	sUnk_83F8C18
.L_6e238:
	.4byte	sUnk_83F91D8
.L_6e23c:
	.4byte	sUnk_83F8098
.L_6e240:
	.4byte	0x40000D4
.L_6e244:
	.4byte	gCurrentRoomHeader
.L_6e248:
	lsl	r0, r2, #5
	add	r0, r6, r0
	add	r0, ip
.L_6e24e:
	ldrh	r0, [r0, #0]
	lsl	r1, r0, #3
	ldr	r2, .L_6e2ac
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	strb	r0, [r3, #0]
	ldrb	r0, [r1, #1]
	strb	r0, [r3, #1]
	ldrb	r2, [r1, #2]
	strb	r2, [r3, #3]
	strb	r7, [r3, #2]
	strb	r7, [r3, #4]
	ldr	r0, [r1, #4]
	str	r0, [r3, #8]
	ldrb	r0, [r3, #0]
	cmp	r0, #3
	beq	.L_6e274
	cmp	r0, #6
	bne	.L_6e278
.L_6e274:
	sub	r0, r2, #1
	strb	r0, [r3, #4]
.L_6e278:
	mov	r0, #4
	ldrsb	r0, [r3, r0]
	lsl	r0, r0, #7
	ldr	r1, [r3, #8]
	add	r1, r1, r0
	lsl	r0, r4, #7
	ldr	r2, .L_6e2b0
	add	r0, r0, r2
	str	r1, [r5, #0]
	str	r0, [r5, #4]
	ldr	r0, .L_6e2b4
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	add	r6, #2
	add	r4, #1
	add	r3, #12
	cmp	r4, #15
	ble	.L_6e20c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e2ac:
	.4byte	sUnk_83F7828
.L_6e2b0:
	.4byte	0x6004000
.L_6e2b4:
	.4byte	0x80000040


thumb_func_start func_806E2B8
func_806E2B8:
	push	{r4, lr}
	mov	r4, #1
.L_6e2bc:
	ldr	r0, .L_6e2e4
	add	r2, r4, r0
	ldrb	r1, [r2, #0]
	cmp	r1, #1
	bls	.L_6e2d2
	mov	r0, #3
	eor	r0, r1
	strb	r0, [r2, #0]
	add	r0, r4, #0
	bl	func_806E2E8
.L_6e2d2:
	add	r0, r4, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #4
	bls	.L_6e2bc
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e2e4:
	.4byte	gSwitchStates


thumb_func_start func_806E2E8
func_806E2E8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	ldr	r3, .L_6e330
	mov	r4, #0
	ldr	r0, .L_6e334
	add	r0, r0, r7
	mov	r8, r0
	mov	ip, r4
	ldr	r5, .L_6e338
	mov	r6, #0
	ldr	r0, .L_6e33c
	mov	sl, r0
	ldr	r2, .L_6e340
	mov	r9, r2
.L_6e30e:
	ldr	r0, .L_6e344
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #4
	add	r0, r4, r0
	ldr	r2, .L_6e348
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	cmp	r7, r0
	bne	.L_6e398
	mov	r2, r8
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_6e34c
	lsl	r0, r1, #5
	add	r0, r6, r0
	add	r0, sl
	b	.L_6e352
.L_6e330:
	.4byte	gUnk_3003B08
.L_6e334:
	.4byte	gSwitchStates
.L_6e338:
	.4byte	0x40000D4
.L_6e33c:
	.4byte	sUnk_83F91D8
.L_6e340:
	.4byte	sUnk_83F8098
.L_6e344:
	.4byte	gCurrentRoomHeader
.L_6e348:
	.4byte	sUnk_83F8C18
.L_6e34c:
	lsl	r0, r1, #5
	add	r0, r6, r0
	add	r0, r9
.L_6e352:
	ldrh	r0, [r0, #0]
	lsl	r1, r0, #3
	ldr	r0, .L_6e3b0
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	strb	r0, [r3, #0]
	ldrb	r0, [r1, #1]
	strb	r0, [r3, #1]
	ldrb	r2, [r1, #2]
	strb	r2, [r3, #3]
	mov	r0, ip
	strb	r0, [r3, #2]
	strb	r0, [r3, #4]
	ldr	r0, [r1, #4]
	str	r0, [r3, #8]
	ldrb	r0, [r1, #0]
	cmp	r0, #6
	bgt	.L_6e37e
	cmp	r0, #5
	blt	.L_6e37e
	sub	r0, r2, #1
	strb	r0, [r3, #4]
.L_6e37e:
	mov	r0, #4
	ldrsb	r0, [r3, r0]
	lsl	r0, r0, #7
	ldr	r1, [r3, #8]
	add	r1, r1, r0
	lsl	r0, r4, #7
	ldr	r2, .L_6e3b4
	add	r0, r0, r2
	str	r1, [r5, #0]
	str	r0, [r5, #4]
	ldr	r0, .L_6e3b8
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_6e398:
	add	r6, #2
	add	r4, #1
	add	r3, #12
	cmp	r4, #15
	ble	.L_6e30e
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6e3b0:
	.4byte	sUnk_83F7828
.L_6e3b4:
	.4byte	0x6004000
.L_6e3b8:
	.4byte	0x80000040
