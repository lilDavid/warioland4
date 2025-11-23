.include "macros.s.inc"


thumb_func_start func_806E3BC
func_806E3BC:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	bl	func_806E5D4
	ldr	r0, .L_6e418
	ldrh	r6, [r0, #0]
	ldrh	r5, [r0, #2]
	ldr	r4, .L_6e41c
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_6e3e6
	add	r0, r4, #0
	add	r1, r7, #0
	bl	func_806E508
	add	r6, r0, #0
	add	r0, r4, #0
	add	r1, r7, #0
	bl	func_806E548
	add	r5, r0, #0
.L_6e3e6:
	add	r4, #12
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_6e406
	add	r0, r4, #0
	add	r1, r7, #0
	bl	func_806E508
	add	r0, r6, r0
	asr	r6, r0, #1
	add	r0, r4, #0
	add	r1, r7, #0
	bl	func_806E548
	add	r0, r5, r0
	asr	r5, r0, #1
.L_6e406:
	lsl	r0, r6, #16
	lsr	r0, r0, #16
	lsl	r1, r5, #16
	lsr	r1, r1, #16
	bl	func_806E420
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6e418:
	.4byte	gUnk_3003224
.L_6e41c:
	.4byte	gUnk_30000DC


thumb_func_start func_806E420
func_806E420:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldr	r1, .L_6e46c
	strh	r5, [r1, #0]
	strh	r3, [r1, #2]
	ldr	r0, .L_6e470
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	add	r6, r1, #0
	cmp	r0, #0
	beq	.L_6e502
	ldr	r0, .L_6e474
	add	r4, r0, #0
	ldrh	r0, [r4, #0]
	cmp	r3, r0
	beq	.L_6e4a2
	ldr	r0, .L_6e478
	ldrh	r1, [r0, #20]
	ldr	r0, .L_6e47c
	ldrh	r0, [r0, #0]
	sub	r2, r1, r0
	ldrh	r0, [r4, #0]
	sub	r1, r3, r0
	cmp	r1, #0
	ble	.L_6e480
	cmp	r1, #48	@ 0x30
	ble	.L_6e45e
	mov	r1, #48	@ 0x30
.L_6e45e:
	cmp	r2, #0
	blt	.L_6e498
	add	r2, #4
	cmp	r1, r2
	bge	.L_6e49a
	add	r2, r1, #0
	b	.L_6e49a
.L_6e46c:
	.4byte	gUnk_3003224
.L_6e470:
	.4byte	gSubGameMode
.L_6e474:
	.4byte	gBg1YPosition
.L_6e478:
	.4byte	gWarioData
.L_6e47c:
	.4byte	gPreviousYPosition
.L_6e480:
	mov	r0, #48	@ 0x30
	neg	r0, r0
	cmp	r1, r0
	bge	.L_6e48a
	add	r1, r0, #0
.L_6e48a:
	cmp	r2, #0
	bgt	.L_6e498
	sub	r2, #4
	cmp	r1, r2
	ble	.L_6e49a
	add	r2, r1, #0
	b	.L_6e49a
.L_6e498:
	mov	r2, #0
.L_6e49a:
	strb	r2, [r6, #5]
	ldrh	r0, [r4, #0]
	add	r0, r0, r2
	strh	r0, [r4, #0]
.L_6e4a2:
	ldr	r0, .L_6e4d4
	add	r3, r0, #0
	ldrh	r2, [r3, #0]
	cmp	r5, r2
	beq	.L_6e502
	ldr	r0, .L_6e4d8
	ldrh	r1, [r0, #18]
	ldr	r0, .L_6e4dc
	ldrh	r0, [r0, #0]
	sub	r2, r1, r0
	ldrh	r0, [r3, #0]
	sub	r1, r5, r0
	cmp	r1, #0
	ble	.L_6e4e0
	cmp	r1, #48	@ 0x30
	ble	.L_6e4c4
	mov	r1, #48	@ 0x30
.L_6e4c4:
	cmp	r2, #0
	blt	.L_6e4f8
	add	r2, #4
	cmp	r1, r2
	bge	.L_6e4fa
	add	r2, r1, #0
	b	.L_6e4fa
	.align	2, 0
.L_6e4d4:
	.4byte	gBg1XPosition
.L_6e4d8:
	.4byte	gWarioData
.L_6e4dc:
	.4byte	gPreviousXPosition
.L_6e4e0:
	mov	r0, #48	@ 0x30
	neg	r0, r0
	cmp	r1, r0
	bge	.L_6e4ea
	add	r1, r0, #0
.L_6e4ea:
	cmp	r2, #0
	bgt	.L_6e4f8
	sub	r2, #4
	cmp	r1, r2
	ble	.L_6e4fa
	add	r2, r1, #0
	b	.L_6e4fa
.L_6e4f8:
	mov	r2, #0
.L_6e4fa:
	strb	r2, [r6, #4]
	ldrh	r0, [r3, #0]
	add	r0, r0, r2
	strh	r0, [r3, #0]
.L_6e502:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_806E508
func_806E508:
	push	{r4, lr}
	add	r3, r0, #0
	ldrh	r1, [r1, #0]
	ldrh	r2, [r3, #4]
	mov	r4, #240	@ 0xf0
	lsl	r4, r4, #1
	add	r0, r2, r4
	cmp	r1, r0
	bge	.L_6e51e
	add	r0, r2, #0
	b	.L_6e53c
.L_6e51e:
	ldrh	r2, [r3, #2]
	ldr	r3, .L_6e530
	add	r0, r2, r3
	cmp	r1, r0
	ble	.L_6e538
	ldr	r4, .L_6e534
	add	r0, r2, r4
	b	.L_6e53c
	.align	2, 0
.L_6e530:
	.4byte	0xFFFFFE20
.L_6e534:
	.4byte	0xFFFFFC40
.L_6e538:
	ldr	r2, .L_6e544
	add	r0, r1, r2
.L_6e53c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_6e544:
	.4byte	0xFFFFFE20


thumb_func_start func_806E548
func_806E548:
	push	{r4, lr}
	add	r2, r0, #0
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bne	.L_6e588
	ldrh	r1, [r1, #2]
	ldrh	r3, [r2, #6]
	mov	r4, #224	@ 0xe0
	lsl	r4, r4, #1
	add	r0, r3, r4
	cmp	r1, r0
	blt	.L_6e572
	ldrh	r2, [r2, #8]
	add	r0, r2, #0
	sub	r0, #192	@ 0xc0
	cmp	r1, r0
	ble	.L_6e57c
	ldr	r1, .L_6e578
	add	r0, r2, r1
	cmp	r0, r3
	bge	.L_6e58e
.L_6e572:
	add	r0, r3, #0
	b	.L_6e58e
	.align	2, 0
.L_6e578:
	.4byte	0xFFFFFD80
.L_6e57c:
	ldr	r2, .L_6e584
	add	r0, r1, r2
	b	.L_6e58e
	.align	2, 0
.L_6e584:
	.4byte	0xFFFFFE40
.L_6e588:
	ldrh	r0, [r2, #8]
	ldr	r4, .L_6e594
	add	r0, r0, r4
.L_6e58e:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_6e594:
	.4byte	0xFFFFFD80


thumb_func_start func_806E598
func_806E598:
	push	{r4, r5, lr}
	ldr	r1, .L_6e5ac
	ldr	r0, .L_6e5b0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	ldr	r4, .L_6e5b4
	ldr	r3, .L_6e5b8
	b	.L_6e5be
.L_6e5ac:
	.4byte	sUnk_878F540
.L_6e5b0:
	.4byte	gUnk_3000023
.L_6e5b4:
	.4byte	gCurrentRoom
.L_6e5b8:
	.4byte	gUnk_3003BC8
.L_6e5bc:
	add	r0, #4
.L_6e5be:
	ldr	r2, [r0, #0]
	ldrb	r1, [r2, #0]
	ldrb	r5, [r4, #0]
	cmp	r1, r5
	beq	.L_6e5cc
	cmp	r1, #255	@ 0xff
	bne	.L_6e5bc
.L_6e5cc:
	str	r2, [r3, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_806E5D4
func_806E5D4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r2, .L_6e718
	mov	r0, #0
	strb	r0, [r2, #0]
	strb	r0, [r2, #12]
	ldr	r1, .L_6e71c
	ldrh	r0, [r1, #18]
	lsr	r0, r0, #6
	mov	r8, r0
	ldrh	r0, [r1, #20]
	lsr	r0, r0, #6
	mov	ip, r0
	ldr	r0, .L_6e720
	ldr	r0, [r0, #0]
	add	r0, #1
	ldrb	r1, [r0, #0]
	add	r4, r0, #1
	add	r7, r2, #0
	cmp	r1, #0
	beq	.L_6e6f0
	ldr	r6, .L_6e724
	add	r5, r7, #0
.L_6e60a:
	ldr	r0, .L_6e718
	add	r0, #24
	cmp	r5, r0
	beq	.L_6e706
	mov	r3, #1
	mov	r0, #9
	add	r0, r0, r4
	mov	sl, r0
	sub	r1, #1
	mov	r9, r1
	mov	r0, sp
.L_6e620:
	stmia	r0!, {r3}
	add	r3, #1
	cmp	r3, #4
	ble	.L_6e620
	ldrb	r0, [r4, #5]
	cmp	r0, #255	@ 0xff
	beq	.L_6e65a
	ldrb	r0, [r4, #8]
	cmp	r0, #255	@ 0xff
	beq	.L_6e65a
	ldrb	r1, [r4, #6]
	ldrh	r0, [r6, #12]
	mul	r0, r1
	ldrb	r1, [r4, #5]
	add	r3, r0, r1
	ldr	r1, [r6, #8]
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6e65a
	ldrb	r0, [r4, #7]
	cmp	r0, #255	@ 0xff
	beq	.L_6e65a
	lsl	r0, r0, #2
	mov	r2, sp
	add	r1, r2, r0
	mov	r0, #8
	str	r0, [r1, #0]
.L_6e65a:
	ldr	r0, [sp, #0]
	add	r0, r4, r0
	ldrb	r1, [r0, #0]
	cmp	r1, r8
	bhi	.L_6e6e8
	ldr	r0, [sp, #4]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	r8, r0
	bhi	.L_6e6e8
	ldr	r0, [sp, #8]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	r0, ip
	bhi	.L_6e6e8
	ldr	r0, [sp, #12]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	ip, r0
	bhi	.L_6e6e8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_6e6e8
	lsl	r1, r1, #6
	ldr	r2, .L_6e728
	ldrh	r0, [r2, #2]
	add	r3, r2, #0
	cmp	r0, r1
	bge	.L_6e696
	add	r0, r1, #0
.L_6e696:
	strh	r0, [r5, #4]
	ldrh	r0, [r6, #12]
	lsl	r0, r0, #6
	ldrh	r1, [r3, #0]
	sub	r3, r0, r1
	ldr	r0, [sp, #4]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	add	r0, #1
	lsl	r0, r0, #6
	add	r1, r3, #0
	cmp	r0, r3
	bge	.L_6e6b2
	add	r1, r0, #0
.L_6e6b2:
	strh	r1, [r5, #2]
	ldr	r0, [sp, #8]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrh	r1, [r2, #4]
	cmp	r1, r0
	bge	.L_6e6c4
	add	r1, r0, #0
.L_6e6c4:
	strh	r1, [r5, #6]
	ldrh	r0, [r6, #14]
	lsl	r0, r0, #6
	ldrh	r1, [r2, #6]
	sub	r3, r0, r1
	ldr	r0, [sp, #12]
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	add	r0, #1
	lsl	r0, r0, #6
	add	r1, r3, #0
	cmp	r0, r3
	bge	.L_6e6e0
	add	r1, r0, #0
.L_6e6e0:
	strh	r1, [r5, #8]
	ldrb	r0, [r4, #0]
	strb	r0, [r5, #0]
	add	r5, #12
.L_6e6e8:
	mov	r4, sl
	mov	r1, r9
	cmp	r1, #0
	bne	.L_6e60a
.L_6e6f0:
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	bne	.L_6e706
	ldrb	r0, [r7, #12]
	cmp	r0, #0
	bne	.L_6e706
	strb	r0, [r7, #0]
	strh	r0, [r7, #2]
	strh	r0, [r7, #4]
	strh	r0, [r7, #6]
	strh	r0, [r7, #8]
.L_6e706:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e718:
	.4byte	gUnk_30000DC
.L_6e71c:
	.4byte	gWarioData
.L_6e720:
	.4byte	gUnk_3003BC8
.L_6e724:
	.4byte	gBackgroundInfo
.L_6e728:
	.4byte	gUnk_300320C


thumb_func_start func_806E72C
func_806E72C:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	bl	func_806E780
	ldr	r4, .L_6e77c
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_806E508
	add	r7, r0, #0
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_806E548
	add	r6, r0, #0
	add	r4, #12
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_6e76a
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_806E508
	add	r0, r7, r0
	asr	r7, r0, #1
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_806E548
	add	r0, r6, r0
	asr	r6, r0, #1
.L_6e76a:
	lsl	r0, r7, #16
	lsr	r0, r0, #16
	lsl	r1, r6, #16
	lsr	r1, r1, #16
	bl	func_806E420
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6e77c:
	.4byte	gUnk_30000DC


thumb_func_start func_806E780
func_806E780:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_6e7ec
	mov	r0, #0
	strb	r0, [r3, #0]
	strb	r0, [r3, #12]
	mov	r4, #0
	ldr	r0, .L_6e7f0
	ldrh	r0, [r0, #20]
	lsr	r0, r0, #6
	add	r6, r0, #0
	ldr	r5, .L_6e7f4
	ldrh	r0, [r5, #14]
	add	r2, r0, #0
	sub	r2, #12
	cmp	r6, r2
	bge	.L_6e7b8
	mov	r0, #2
	strb	r0, [r3, #0]
	mov	r1, #128	@ 0x80
	strh	r1, [r3, #4]
	ldrh	r0, [r5, #12]
	sub	r0, #2
	lsl	r0, r0, #6
	strh	r0, [r3, #2]
	strh	r1, [r3, #6]
	lsl	r0, r2, #6
	strh	r0, [r3, #8]
	mov	r4, #1
.L_6e7b8:
	ldrh	r0, [r5, #14]
	add	r2, r0, #0
	sub	r2, #16
	cmp	r2, r6
	bgt	.L_6e7e6
	lsl	r1, r4, #1
	add	r1, r1, r4
	lsl	r1, r1, #2
	add	r1, r1, r3
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #4]
	ldrh	r0, [r5, #12]
	sub	r0, #2
	lsl	r0, r0, #6
	strh	r0, [r1, #2]
	lsl	r0, r2, #6
	strh	r0, [r1, #6]
	ldrh	r0, [r5, #14]
	sub	r0, #2
	lsl	r0, r0, #6
	strh	r0, [r1, #8]
.L_6e7e6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_6e7ec:
	.4byte	gUnk_30000DC
.L_6e7f0:
	.4byte	gWarioData
.L_6e7f4:
	.4byte	gBackgroundInfo


thumb_func_start func_806E7F8
func_806E7F8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r1, .L_6e844
	ldrb	r0, [r1, #2]
	ldr	r4, .L_6e848
	cmp	r0, #0
	beq	.L_6e80e
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	bne	.L_6e8d6
.L_6e80e:
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #3
	beq	.L_6e8d6
	ldrh	r0, [r1, #20]
	lsl	r0, r0, #16
	ldr	r3, .L_6e84c
	ldrh	r2, [r1, #18]
	orr	r2, r0
	str	r2, [sp, #0]
	lsr	r1, r2, #16
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_6e832
	and	r2, r3
	str	r2, [sp, #0]
.L_6e832:
	ldr	r0, .L_6e850
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6e868
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	cmp	r0, #8
	bne	.L_6e868
	b	.L_6e860
.L_6e844:
	.4byte	gWarioData
.L_6e848:
	.4byte	gSubGameMode
.L_6e84c:
	.4byte	0xFFFF
.L_6e850:
	.4byte	gUnk_300004C
.L_6e854:
	cmp	r0, #4
	beq	.L_6e890
	mov	r0, sp
	bl	func_806E904
	b	.L_6e876
.L_6e860:
	mov	r0, sp
	bl	func_806EBA8
	b	.L_6e876
.L_6e868:
	ldr	r0, .L_6e88c
	ldrb	r0, [r0, #24]
	cmp	r0, #3
	bne	.L_6e854
	mov	r0, sp
	bl	func_806E3BC
.L_6e876:
	ldr	r0, .L_6e88c
	ldrb	r1, [r0, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6e898
	mov	r0, sp
	bl	func_806EACC
	b	.L_6e8a8
	.align	2, 0
.L_6e88c:
	.4byte	gCurrentRoomHeader
.L_6e890:
	mov	r0, sp
	bl	func_806E72C
	b	.L_6e876
.L_6e898:
	ldr	r1, .L_6e8e0
	ldr	r0, .L_6e8e4
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_6e8e8
	ldr	r0, .L_6e8ec
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
.L_6e8a8:
	ldr	r0, .L_6e8f0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6e8b4
	bl	func_806EB78
.L_6e8b4:
	ldr	r3, .L_6e8f4
	ldr	r0, .L_6e8e4
	ldrh	r2, [r0, #0]
	strh	r2, [r3, #0]
	ldr	r1, .L_6e8f8
	ldr	r0, .L_6e8ec
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_6e8fc
	ldrb	r1, [r0, #3]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6e8d6
	ldr	r1, .L_6e900
	add	r0, r2, r1
	strh	r0, [r3, #0]
.L_6e8d6:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e8e0:
	.4byte	gUnk_3001876
.L_6e8e4:
	.4byte	gBg1XPosition
.L_6e8e8:
	.4byte	gUnk_3001878
.L_6e8ec:
	.4byte	gBg1YPosition
.L_6e8f0:
	.4byte	gUnk_3003218
.L_6e8f4:
	.4byte	gUnk_300187E
.L_6e8f8:
	.4byte	gUnk_3001880
.L_6e8fc:
	.4byte	gCurrentRoomHeader
.L_6e900:
	.4byte	0xFFE0


thumb_func_start func_806E904
func_806E904:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	ldrh	r2, [r4, #0]
	ldr	r0, .L_6e934
	ldrh	r3, [r0, #2]
	mov	r5, #240	@ 0xf0
	lsl	r5, r5, #1
	add	r1, r3, r5
	add	r5, r0, #0
	cmp	r2, r1
	blt	.L_6e944
	ldr	r0, .L_6e938
	ldrh	r0, [r0, #12]
	lsl	r0, r0, #6
	ldr	r1, .L_6e93c
	add	r0, r0, r1
	ldrh	r1, [r5, #0]
	sub	r0, r0, r1
	cmp	r2, r0
	ble	.L_6e940
	ldr	r2, .L_6e93c
	add	r3, r0, r2
	b	.L_6e944
	.align	2, 0
.L_6e934:
	.4byte	gUnk_300320C
.L_6e938:
	.4byte	gBackgroundInfo
.L_6e93c:
	.4byte	0xFFFFFE20
.L_6e940:
	ldr	r0, .L_6e95c
	add	r3, r2, r0
.L_6e944:
	ldr	r2, .L_6e960
	strh	r3, [r2, #0]
	ldr	r1, .L_6e964
	ldrh	r0, [r1, #0]
	sub	r3, r3, r0
	add	r6, r2, #0
	cmp	r3, #0
	ble	.L_6e968
	cmp	r3, #48	@ 0x30
	ble	.L_6e972
	mov	r3, #48	@ 0x30
	b	.L_6e972
.L_6e95c:
	.4byte	0xFFFFFE20
.L_6e960:
	.4byte	gUnk_3003224
.L_6e964:
	.4byte	gBg1XPosition
.L_6e968:
	mov	r0, #48	@ 0x30
	neg	r0, r0
	cmp	r3, r0
	bge	.L_6e972
	add	r3, r0, #0
.L_6e972:
	strb	r3, [r6, #4]
	ldrh	r0, [r1, #0]
	add	r0, r0, r3
	strh	r0, [r1, #0]
	ldr	r0, .L_6e994
	ldrb	r0, [r0, #24]
	cmp	r0, #1
	beq	.L_6e9e4
	ldrh	r2, [r4, #2]
	ldrh	r1, [r5, #4]
	mov	r3, #224	@ 0xe0
	lsl	r3, r3, #1
	add	r0, r1, r3
	cmp	r2, r0
	bge	.L_6e998
	add	r3, r1, #0
	b	.L_6e9ae
.L_6e994:
	.4byte	gCurrentRoomHeader
.L_6e998:
	ldr	r0, .L_6e9c4
	ldrh	r0, [r0, #14]
	lsl	r0, r0, #6
	sub	r0, #192	@ 0xc0
	ldrh	r1, [r5, #6]
	sub	r0, r0, r1
	ldr	r5, .L_6e9c8
	add	r3, r2, r5
	cmp	r2, r0
	ble	.L_6e9ae
	add	r3, r0, r5
.L_6e9ae:
	strh	r3, [r6, #2]
	ldr	r1, .L_6e9cc
	ldrh	r0, [r1, #0]
	sub	r3, r3, r0
	cmp	r3, #0
	ble	.L_6e9d0
	cmp	r3, #48	@ 0x30
	ble	.L_6e9da
	mov	r3, #48	@ 0x30
	b	.L_6e9da
	.align	2, 0
.L_6e9c4:
	.4byte	gBackgroundInfo
.L_6e9c8:
	.4byte	0xFFFFFE40
.L_6e9cc:
	.4byte	gBg1YPosition
.L_6e9d0:
	mov	r0, #48	@ 0x30
	neg	r0, r0
	cmp	r3, r0
	bge	.L_6e9da
	add	r3, r0, #0
.L_6e9da:
	strb	r3, [r6, #5]
	ldrh	r0, [r1, #0]
	add	r0, r0, r3
	strh	r0, [r1, #0]
	b	.L_6eac6
.L_6e9e4:
	ldr	r0, .L_6ea34
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	add	r7, r0, #0
	cmp	r1, #8
	beq	.L_6eac6
	ldrh	r0, [r5, #4]
	add	r3, r0, #0
	sub	r3, #32
	mov	r5, #152	@ 0x98
	lsl	r5, r5, #2
	add	r0, r0, r5
	ldrh	r1, [r4, #2]
	ldr	r5, .L_6ea38
	cmp	r0, r1
	bge	.L_6ea14
	mov	r4, #144	@ 0x90
	lsl	r4, r4, #2
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #2
.L_6ea0c:
	add	r3, r3, r4
	add	r0, r3, r2
	cmp	r0, r1
	blt	.L_6ea0c
.L_6ea14:
	strh	r3, [r6, #2]
	mov	r0, #0
	ldrsh	r4, [r7, r0]
	cmp	r4, #0
	bne	.L_6ea40
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #2
	add	r1, r3, r2
	ldrh	r0, [r5, #14]
	lsl	r0, r0, #6
	cmp	r1, r0
	ble	.L_6eac6
	ldr	r5, .L_6ea3c
	add	r0, r3, r5
	strh	r0, [r6, #2]
	b	.L_6eac6
.L_6ea34:
	.4byte	gSubGameMode
.L_6ea38:
	.4byte	gBackgroundInfo
.L_6ea3c:
	.4byte	0xFFFFFDC0
.L_6ea40:
	mov	r0, #168	@ 0xa8
	lsl	r0, r0, #2
	add	r1, r3, r0
	ldrh	r0, [r5, #14]
	lsl	r0, r0, #6
	cmp	r1, r0
	bgt	.L_6eac6
	ldr	r0, .L_6ea6c
	ldrh	r2, [r0, #0]
	add	r1, r0, #0
	cmp	r2, r3
	beq	.L_6eac6
	cmp	r4, #5
	bne	.L_6ea8a
	cmp	r2, r3
	ble	.L_6ea70
	sub	r0, r2, r3
	cmp	r0, #31
	ble	.L_6ea76
	add	r0, r2, #0
	sub	r0, #32
	b	.L_6ea7e
.L_6ea6c:
	.4byte	gBg1YPosition
.L_6ea70:
	sub	r0, r3, r2
	cmp	r0, #31
	bgt	.L_6ea7a
.L_6ea76:
	strh	r3, [r1, #0]
	b	.L_6ea80
.L_6ea7a:
	add	r0, r2, #0
	add	r0, #32
.L_6ea7e:
	strh	r0, [r1, #0]
.L_6ea80:
	ldrh	r0, [r1, #0]
	cmp	r0, r3
	bne	.L_6eac6
	mov	r0, #2
	b	.L_6eac4
.L_6ea8a:
	mov	r4, #0
	cmp	r2, r3
	ble	.L_6eabc
	ldr	r1, .L_6eab8
	ldrb	r0, [r1, #26]
	cmp	r0, #0
	beq	.L_6eac2
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_6eabe
	ldrb	r0, [r1, #1]
	cmp	r0, #40	@ 0x28
	beq	.L_6eac2
	cmp	r0, #43	@ 0x2b
	beq	.L_6eac2
	cmp	r0, #44	@ 0x2c
	beq	.L_6eac2
	cmp	r0, #41	@ 0x29
	beq	.L_6eac2
	cmp	r0, #45	@ 0x2d
	bne	.L_6eabe
	b	.L_6eac2
	.align	2, 0
.L_6eab8:
	.4byte	gWarioData
.L_6eabc:
	mov	r4, #1
.L_6eabe:
	cmp	r4, #0
	beq	.L_6eac6
.L_6eac2:
	mov	r0, #5
.L_6eac4:
	strh	r0, [r7, #0]
.L_6eac6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_806EACC
func_806EACC:
	ldr	r0, .L_6eae4
	ldrb	r0, [r0, #1]
	cmp	r0, #18
	bne	.L_6eaf8
	ldr	r1, .L_6eae8
	ldr	r0, .L_6eaec
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6eaf0
	ldr	r0, .L_6eaf4
	b	.L_6eb60
.L_6eae4:
	.4byte	gCurrentRoomHeader
.L_6eae8:
	.4byte	gUnk_3001876
.L_6eaec:
	.4byte	gBg1XPosition
.L_6eaf0:
	.4byte	gUnk_3001878
.L_6eaf4:
	.4byte	gBg1YPosition
.L_6eaf8:
	cmp	r0, #34	@ 0x22
	bne	.L_6eb1c
	ldr	r1, .L_6eb0c
	ldr	r0, .L_6eb10
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6eb14
	ldr	r0, .L_6eb18
	b	.L_6eb60
.L_6eb0c:
	.4byte	gUnk_3001876
.L_6eb10:
	.4byte	gBg1XPosition
.L_6eb14:
	.4byte	gUnk_3001878
.L_6eb18:
	.4byte	gBg1YPosition
.L_6eb1c:
	cmp	r0, #17
	bne	.L_6eb50
	ldr	r3, .L_6eb3c
	ldr	r1, .L_6eb40
	ldr	r2, .L_6eb44
	ldrh	r0, [r2, #2]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	sub	r0, #32
	strh	r0, [r3, #0]
	ldr	r1, .L_6eb48
	ldr	r3, .L_6eb4c
	add	r0, r3, #0
	ldrh	r2, [r2, #4]
	add	r0, r0, r2
	b	.L_6eb62
.L_6eb3c:
	.4byte	gUnk_3001876
.L_6eb40:
	.4byte	gUnk_300003A
.L_6eb44:
	.4byte	gUnk_300320C
.L_6eb48:
	.4byte	gUnk_3001878
.L_6eb4c:
	.4byte	0xFFE0
.L_6eb50:
	cmp	r0, #33	@ 0x21
	bne	.L_6eb64
	ldr	r1, .L_6eb68
	ldr	r0, .L_6eb6c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_6eb70
	ldr	r0, .L_6eb74
.L_6eb60:
	ldrh	r0, [r0, #0]
.L_6eb62:
	strh	r0, [r1, #0]
.L_6eb64:
	bx	lr
	.align	2, 0
.L_6eb68:
	.4byte	gUnk_3001876
.L_6eb6c:
	.4byte	gUnk_300003A
.L_6eb70:
	.4byte	gUnk_3001878
.L_6eb74:
	.4byte	gUnk_300003C


thumb_func_start func_806EB78
func_806EB78:
	ldr	r0, .L_6eb88
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #1
	bne	.L_6eb8c
	ldrb	r1, [r2, #1]
	mov	r0, #7
	b	.L_6eb94
.L_6eb88:
	.4byte	gUnk_3003218
.L_6eb8c:
	cmp	r1, #2
	bne	.L_6eba0
	ldrb	r1, [r2, #1]
	mov	r0, #3
.L_6eb94:
	and	r0, r1
	cmp	r0, #0
	bne	.L_6eba0
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
.L_6eba0:
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	bx	lr


thumb_func_start func_806EBA8
func_806EBA8:
	push	{r4, lr}
	add	r4, r0, #0
	ldrh	r1, [r4, #0]
	ldr	r0, .L_6ebbc
	cmp	r1, r0
	bhi	.L_6ebc4
	ldr	r1, .L_6ebc0
	mov	r0, #0
	b	.L_6ebf2
	.align	2, 0
.L_6ebbc:
	.4byte	0x1DF
.L_6ebc0:
	.4byte	gBg1XPosition
.L_6ebc4:
	ldrh	r3, [r4, #0]
	ldr	r0, .L_6ebdc
	ldrh	r0, [r0, #12]
	lsl	r2, r0, #6
	ldr	r1, .L_6ebe0
	add	r0, r2, r1
	cmp	r3, r0
	ble	.L_6ebec
	ldr	r1, .L_6ebe4
	ldr	r3, .L_6ebe8
	add	r0, r2, r3
	b	.L_6ebf2
.L_6ebdc:
	.4byte	gBackgroundInfo
.L_6ebe0:
	.4byte	0xFFFFFE20
.L_6ebe4:
	.4byte	gBg1XPosition
.L_6ebe8:
	.4byte	0xFFFFFC40
.L_6ebec:
	ldr	r1, .L_6ec04
	ldr	r2, .L_6ec08
	add	r0, r3, r2
.L_6ebf2:
	strh	r0, [r1, #0]
	ldrh	r1, [r4, #2]
	ldr	r0, .L_6ec0c
	cmp	r1, r0
	bhi	.L_6ec14
	ldr	r1, .L_6ec10
	mov	r0, #0
	b	.L_6ec3e
	.align	2, 0
.L_6ec04:
	.4byte	gBg1XPosition
.L_6ec08:
	.4byte	0xFFFFFE20
.L_6ec0c:
	.4byte	0x1BF
.L_6ec10:
	.4byte	gBg1YPosition
.L_6ec14:
	ldrh	r3, [r4, #2]
	ldr	r0, .L_6ec2c
	ldrh	r0, [r0, #14]
	lsl	r2, r0, #6
	add	r0, r2, #0
	sub	r0, #192	@ 0xc0
	cmp	r3, r0
	ble	.L_6ec38
	ldr	r1, .L_6ec30
	ldr	r3, .L_6ec34
	add	r0, r2, r3
	b	.L_6ec3e
.L_6ec2c:
	.4byte	gBackgroundInfo
.L_6ec30:
	.4byte	gBg1YPosition
.L_6ec34:
	.4byte	0xFFFFFD80
.L_6ec38:
	ldr	r1, .L_6ec48
	ldr	r2, .L_6ec4c
	add	r0, r3, r2
.L_6ec3e:
	strh	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6ec48:
	.4byte	gBg1YPosition
.L_6ec4c:
	.4byte	0xFFFFFE40
