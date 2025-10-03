.include "macros.s.inc"


thumb_func_start func_804A3FC
func_804A3FC:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #4
	ldr	r4, .L_4a478
	ldrh	r1, [r4, #0]
	mov	r2, #145	@ 0x91
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	strb	r2, [r4, #30]
	add	r0, r4, #0
	add	r0, #32
	strb	r2, [r0, #0]
	add	r1, r4, #0
	add	r1, #33	@ 0x21
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #1
	strb	r0, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r0, #2
	strb	r2, [r0, #0]
	ldrb	r0, [r4, #23]
	cmp	r0, #83	@ 0x53
	bne	.L_4a480
	ldr	r0, .L_4a47c
	str	r0, [r4, #4]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r3, r3, r0
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #172	@ 0xac
	bl	SpriteSpawnAsChild
	b	.L_4a498
	.align	2, 0
.L_4a478:
	.4byte	gCurrentSprite
.L_4a47c:
	.4byte	sUnk_83CFB58
.L_4a480:
	ldr	r0, .L_4a4fc
	str	r0, [r4, #4]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #173	@ 0xad
	bl	SpriteSpawnAsChild
.L_4a498:
	ldr	r4, .L_4a500
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	ldr	r5, .L_4a504
	strh	r0, [r5, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_4a4fc:
	.4byte	sUnk_83CFB48
.L_4a500:
	.4byte	sSinCosTable
.L_4a504:
	.4byte	gCurrentSprite


thumb_func_start func_804A508
func_804A508:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	mov	r0, #0
	mov	r8, r0
	mov	r7, #0
	ldr	r2, .L_4a5a8
	ldr	r1, .L_4a5ac
	ldrb	r0, [r1, #0]
	add	r1, r0, #1
	ldr	r3, .L_4a5ac
	strb	r1, [r3, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	add	r4, r2, #0
	add	r4, #41	@ 0x29
	ldrb	r0, [r4, #0]
	str	r0, [sp, #0]
	ldrb	r1, [r2, #24]
	str	r1, [sp, #4]
	mov	r9, r2
	ldr	r2, .L_4a5b0
	mov	ip, r2
	ldr	r1, .L_4a5b4
	add	r0, r5, #0
	sub	r0, #60	@ 0x3c
	lsl	r0, r0, #1
	mov	sl, r0
	mov	r3, sl
	add	r3, r3, r1
	str	r3, [sp, #8]
	lsl	r3, r5, #1
	add	r1, r3, r1
	str	r1, [sp, #12]
	mov	r0, ip
	add	r0, #40	@ 0x28
	str	r0, [sp, #24]
	ldr	r6, .L_4a5b8
	ldr	r1, .L_4a5bc
	add	r0, r5, #0
	sub	r0, #48	@ 0x30
	lsl	r4, r0, #1
	add	r0, r4, r1
	str	r0, [sp, #16]
	add	r1, r3, r1
	str	r1, [sp, #20]
.L_4a56a:
	ldrb	r0, [r2, #24]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	beq	.L_4a574
	b	.L_4a6ac
.L_4a574:
	ldrb	r0, [r2, #23]
	cmp	r0, #172	@ 0xac
	beq	.L_4a57c
	b	.L_4a6ac
.L_4a57c:
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_4a588
	b	.L_4a6ac
.L_4a588:
	ldr	r0, [sp, #0]
	cmp	r0, #0
	beq	.L_4a61e
	cmp	r5, #59	@ 0x3b
	bls	.L_4a5c4
	ldr	r1, [sp, #8]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #18
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r0, .L_4a5c0
	add	r0, sl
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	b	.L_4a5dc
.L_4a5a8:
	.4byte	gCurrentSprite
.L_4a5ac:
	.4byte	gUnk_3000A4B
.L_4a5b0:
	.4byte	gSpriteData
.L_4a5b4:
	.4byte	sUnk_83D00E8
.L_4a5b8:
	.4byte	gWarioData
.L_4a5bc:
	.4byte	sUnk_83CFF98
.L_4a5c0:
	.4byte	sUnk_83D0070
.L_4a5c4:
	ldr	r1, [sp, #12]
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	lsl	r0, r0, #2
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r1, .L_4a5fc
	add	r0, r3, r1
	mov	r3, #0
	ldrsh	r0, [r0, r3]
.L_4a5dc:
	lsl	r0, r0, #2
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r4, [sp, #24]
	ldrb	r1, [r4, #0]
	cmp	r1, #0
	beq	.L_4a600
	ldrh	r0, [r6, #20]
	add	r0, r8
	strh	r0, [r6, #20]
	ldrh	r0, [r6, #18]
	add	r0, r7, r0
	strh	r0, [r6, #18]
	b	.L_4a69a
	.align	2, 0
.L_4a5fc:
	.4byte	sUnk_83CFFF8
.L_4a600:
	cmp	r5, #59	@ 0x3b
	bne	.L_4a618
	mov	r0, #48	@ 0x30
	ldr	r3, .L_4a610
	strb	r0, [r3, #0]
	ldr	r4, .L_4a614
	strb	r1, [r4, #0]
	b	.L_4a69a
.L_4a610:
	.4byte	gUnk_3000A4B
.L_4a614:
	.4byte	gUnk_3000A4D
.L_4a618:
	cmp	r5, #119	@ 0x77
	bne	.L_4a69a
	b	.L_4a67c
.L_4a61e:
	cmp	r5, #47	@ 0x2f
	bls	.L_4a63c
	ldr	r1, [sp, #16]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #18
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r1, .L_4a638
	add	r0, r4, r1
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	b	.L_4a654
.L_4a638:
	.4byte	sUnk_83CFF38
.L_4a63c:
	ldr	r4, [sp, #20]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	lsl	r0, r0, #2
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r4, .L_4a684
	add	r0, r3, r4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
.L_4a654:
	lsl	r0, r0, #2
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r3, [sp, #24]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_4a69a
	ldrh	r0, [r6, #20]
	add	r0, r8
	strh	r0, [r6, #20]
	ldrh	r0, [r6, #18]
	add	r0, r7, r0
	strh	r0, [r6, #18]
	cmp	r5, #47	@ 0x2f
	bne	.L_4a690
	mov	r0, #60	@ 0x3c
	ldr	r4, .L_4a688
	strb	r0, [r4, #0]
	mov	r1, #1
.L_4a67c:
	ldr	r0, .L_4a68c
	strb	r1, [r0, #0]
	b	.L_4a69a
	.align	2, 0
.L_4a684:
	.4byte	sUnk_83CFED8
.L_4a688:
	.4byte	gUnk_3000A4B
.L_4a68c:
	.4byte	gUnk_3000A4D
.L_4a690:
	cmp	r5, #95	@ 0x5f
	bne	.L_4a69a
	mov	r4, #1
	ldr	r3, .L_4a6a8
	strb	r4, [r3, #0]
.L_4a69a:
	ldrh	r0, [r2, #8]
	add	r0, r8
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, r7, r0
	strh	r0, [r2, #10]
	b	.L_4a6c0
.L_4a6a8:
	.4byte	gUnk_3000A4D
.L_4a6ac:
	ldr	r0, [sp, #24]
	add	r0, #44	@ 0x2c
	str	r0, [sp, #24]
	add	r2, #44	@ 0x2c
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r0, ip
	cmp	r2, r0
	bgt	.L_4a6c0
	b	.L_4a56a
.L_4a6c0:
	ldr	r1, [sp, #0]
	cmp	r1, #0
	beq	.L_4a748
	cmp	r5, #59	@ 0x3b
	bls	.L_4a710
	ldr	r0, .L_4a704
	add	r2, r5, #0
	sub	r2, #60	@ 0x3c
	lsl	r1, r2, #1
	add	r0, r1, r0
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	lsl	r0, r0, #2
	mov	r4, r9
	ldrh	r4, [r4, #8]
	add	r0, r0, r4
	mov	r3, r9
	strh	r0, [r3, #8]
	ldr	r0, .L_4a708
	add	r1, r1, r0
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	lsl	r0, r0, #2
	ldrh	r1, [r3, #10]
	add	r0, r0, r1
	strh	r0, [r3, #10]
	ldr	r0, .L_4a70c
	add	r2, r2, r0
	ldrb	r4, [r2, #0]
	cmp	r5, #119	@ 0x77
	bne	.L_4a7c4
	mov	r1, r9
	b	.L_4a782
	.align	2, 0
.L_4a704:
	.4byte	sUnk_83CFDE8
.L_4a708:
	.4byte	sUnk_83CFD70
.L_4a70c:
	.4byte	sUnk_83CFE9C
.L_4a710:
	ldr	r0, .L_4a73c
	lsl	r1, r5, #1
	add	r0, r1, r0
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4a740
	add	r1, r1, r0
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	lsl	r0, r0, #2
	ldrh	r3, [r4, #10]
	add	r0, r0, r3
	strh	r0, [r4, #10]
	ldr	r0, .L_4a744
	b	.L_4a7c0
	.align	2, 0
.L_4a73c:
	.4byte	sUnk_83CFDE8
.L_4a740:
	.4byte	sUnk_83CFCF8
.L_4a744:
	.4byte	sUnk_83CFE60
.L_4a748:
	cmp	r5, #47	@ 0x2f
	bls	.L_4a798
	ldr	r0, .L_4a78c
	add	r2, r5, #0
	sub	r2, #48	@ 0x30
	lsl	r1, r2, #1
	add	r0, r1, r0
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4a790
	add	r1, r1, r0
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #2
	ldrh	r4, [r4, #10]
	add	r0, r0, r4
	mov	r1, r9
	strh	r0, [r1, #10]
	ldr	r0, .L_4a794
	add	r2, r2, r0
	ldrb	r4, [r2, #0]
	cmp	r5, #95	@ 0x5f
	bne	.L_4a7c4
.L_4a782:
	add	r1, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_4a7c4
	.align	2, 0
.L_4a78c:
	.4byte	sUnk_83CFC38
.L_4a790:
	.4byte	sUnk_83CFBD8
.L_4a794:
	.4byte	sUnk_83CFCC8
.L_4a798:
	ldr	r0, .L_4a838
	lsl	r1, r5, #1
	add	r0, r1, r0
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4a83c
	add	r1, r1, r0
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	lsl	r0, r0, #2
	ldrh	r3, [r4, #10]
	add	r0, r0, r3
	strh	r0, [r4, #10]
	ldr	r0, .L_4a840
.L_4a7c0:
	add	r0, r5, r0
	ldrb	r4, [r0, #0]
.L_4a7c4:
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_4a844
	add	r0, r0, r1
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r8, r2
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	ldr	r5, .L_4a848
	strh	r0, [r5, #12]
	lsl	r0, r4, #1
	ldr	r4, .L_4a844
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4a838:
	.4byte	sUnk_83CFC38
.L_4a83c:
	.4byte	sUnk_83CFB78
.L_4a840:
	.4byte	sUnk_83CFC98
.L_4a844:
	.4byte	sSinCosTable
.L_4a848:
	.4byte	gCurrentSprite


thumb_func_start func_804A84C
func_804A84C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	mov	r0, #0
	mov	r8, r0
	mov	r7, #0
	ldr	r2, .L_4a8ec
	ldr	r1, .L_4a8f0
	ldrb	r0, [r1, #0]
	add	r1, r0, #1
	ldr	r3, .L_4a8f0
	strb	r1, [r3, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	add	r4, r2, #0
	add	r4, #41	@ 0x29
	ldrb	r0, [r4, #0]
	str	r0, [sp, #0]
	ldrb	r1, [r2, #24]
	str	r1, [sp, #4]
	mov	r9, r2
	ldr	r2, .L_4a8f4
	mov	ip, r2
	ldr	r1, .L_4a8f8
	add	r0, r5, #0
	sub	r0, #60	@ 0x3c
	lsl	r0, r0, #1
	mov	sl, r0
	mov	r3, sl
	add	r3, r3, r1
	str	r3, [sp, #8]
	lsl	r3, r5, #1
	add	r1, r3, r1
	str	r1, [sp, #12]
	mov	r0, ip
	add	r0, #40	@ 0x28
	str	r0, [sp, #24]
	ldr	r6, .L_4a8fc
	ldr	r1, .L_4a900
	add	r0, r5, #0
	sub	r0, #48	@ 0x30
	lsl	r4, r0, #1
	add	r0, r4, r1
	str	r0, [sp, #16]
	add	r1, r3, r1
	str	r1, [sp, #20]
.L_4a8ae:
	ldrb	r0, [r2, #24]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	beq	.L_4a8b8
	b	.L_4a9f0
.L_4a8b8:
	ldrb	r0, [r2, #23]
	cmp	r0, #173	@ 0xad
	beq	.L_4a8c0
	b	.L_4a9f0
.L_4a8c0:
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_4a8cc
	b	.L_4a9f0
.L_4a8cc:
	ldr	r0, [sp, #0]
	cmp	r0, #0
	beq	.L_4a962
	cmp	r5, #59	@ 0x3b
	bls	.L_4a908
	ldr	r1, [sp, #8]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #18
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r0, .L_4a904
	add	r0, sl
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	b	.L_4a920
.L_4a8ec:
	.4byte	gCurrentSprite
.L_4a8f0:
	.4byte	gUnk_3000A4B
.L_4a8f4:
	.4byte	gSpriteData
.L_4a8f8:
	.4byte	sUnk_83D0370
.L_4a8fc:
	.4byte	gWarioData
.L_4a900:
	.4byte	sUnk_83D0220
.L_4a904:
	.4byte	sUnk_83D02F8
.L_4a908:
	ldr	r1, [sp, #12]
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	lsl	r0, r0, #2
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r1, .L_4a940
	add	r0, r3, r1
	mov	r3, #0
	ldrsh	r0, [r0, r3]
.L_4a920:
	lsl	r0, r0, #2
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r4, [sp, #24]
	ldrb	r1, [r4, #0]
	cmp	r1, #0
	beq	.L_4a944
	ldrh	r0, [r6, #20]
	add	r0, r8
	strh	r0, [r6, #20]
	ldrh	r0, [r6, #18]
	add	r0, r7, r0
	strh	r0, [r6, #18]
	b	.L_4a9de
	.align	2, 0
.L_4a940:
	.4byte	sUnk_83D0280
.L_4a944:
	cmp	r5, #59	@ 0x3b
	bne	.L_4a95c
	mov	r0, #48	@ 0x30
	ldr	r3, .L_4a954
	strb	r0, [r3, #0]
	ldr	r4, .L_4a958
	strb	r1, [r4, #0]
	b	.L_4a9de
.L_4a954:
	.4byte	gUnk_3000A4B
.L_4a958:
	.4byte	gUnk_3000A4D
.L_4a95c:
	cmp	r5, #119	@ 0x77
	bne	.L_4a9de
	b	.L_4a9c0
.L_4a962:
	cmp	r5, #47	@ 0x2f
	bls	.L_4a980
	ldr	r1, [sp, #16]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #18
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r1, .L_4a97c
	add	r0, r4, r1
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	b	.L_4a998
.L_4a97c:
	.4byte	sUnk_83D01C0
.L_4a980:
	ldr	r4, [sp, #20]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	lsl	r0, r0, #2
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r4, .L_4a9c8
	add	r0, r3, r4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
.L_4a998:
	lsl	r0, r0, #2
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r3, [sp, #24]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_4a9de
	ldrh	r0, [r6, #20]
	add	r0, r8
	strh	r0, [r6, #20]
	ldrh	r0, [r6, #18]
	add	r0, r7, r0
	strh	r0, [r6, #18]
	cmp	r5, #47	@ 0x2f
	bne	.L_4a9d4
	mov	r0, #60	@ 0x3c
	ldr	r4, .L_4a9cc
	strb	r0, [r4, #0]
	mov	r1, #1
.L_4a9c0:
	ldr	r0, .L_4a9d0
	strb	r1, [r0, #0]
	b	.L_4a9de
	.align	2, 0
.L_4a9c8:
	.4byte	sUnk_83D0160
.L_4a9cc:
	.4byte	gUnk_3000A4B
.L_4a9d0:
	.4byte	gUnk_3000A4D
.L_4a9d4:
	cmp	r5, #95	@ 0x5f
	bne	.L_4a9de
	mov	r4, #1
	ldr	r3, .L_4a9ec
	strb	r4, [r3, #0]
.L_4a9de:
	ldrh	r0, [r2, #8]
	add	r0, r8
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, r7, r0
	strh	r0, [r2, #10]
	b	.L_4aa04
.L_4a9ec:
	.4byte	gUnk_3000A4D
.L_4a9f0:
	ldr	r0, [sp, #24]
	add	r0, #44	@ 0x2c
	str	r0, [sp, #24]
	add	r2, #44	@ 0x2c
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r0, ip
	cmp	r2, r0
	bgt	.L_4aa04
	b	.L_4a8ae
.L_4aa04:
	ldr	r1, [sp, #0]
	cmp	r1, #0
	beq	.L_4aa8c
	cmp	r5, #59	@ 0x3b
	bls	.L_4aa54
	ldr	r0, .L_4aa48
	add	r2, r5, #0
	sub	r2, #60	@ 0x3c
	lsl	r1, r2, #1
	add	r0, r1, r0
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	lsl	r0, r0, #2
	mov	r4, r9
	ldrh	r4, [r4, #8]
	add	r0, r0, r4
	mov	r3, r9
	strh	r0, [r3, #8]
	ldr	r0, .L_4aa4c
	add	r1, r1, r0
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	lsl	r0, r0, #2
	ldrh	r1, [r3, #10]
	add	r0, r0, r1
	strh	r0, [r3, #10]
	ldr	r0, .L_4aa50
	add	r2, r2, r0
	ldrb	r4, [r2, #0]
	cmp	r5, #119	@ 0x77
	bne	.L_4ab08
	mov	r1, r9
	b	.L_4aac6
	.align	2, 0
.L_4aa48:
	.4byte	sUnk_83CFDE8
.L_4aa4c:
	.4byte	sUnk_83CFD70
.L_4aa50:
	.4byte	sUnk_83CFE9C
.L_4aa54:
	ldr	r0, .L_4aa80
	lsl	r1, r5, #1
	add	r0, r1, r0
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4aa84
	add	r1, r1, r0
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	lsl	r0, r0, #2
	ldrh	r3, [r4, #10]
	add	r0, r0, r3
	strh	r0, [r4, #10]
	ldr	r0, .L_4aa88
	b	.L_4ab04
	.align	2, 0
.L_4aa80:
	.4byte	sUnk_83CFDE8
.L_4aa84:
	.4byte	sUnk_83CFCF8
.L_4aa88:
	.4byte	sUnk_83CFE60
.L_4aa8c:
	cmp	r5, #47	@ 0x2f
	bls	.L_4aadc
	ldr	r0, .L_4aad0
	add	r2, r5, #0
	sub	r2, #48	@ 0x30
	lsl	r1, r2, #1
	add	r0, r1, r0
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4aad4
	add	r1, r1, r0
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	lsl	r0, r0, #2
	ldrh	r4, [r4, #10]
	add	r0, r0, r4
	mov	r1, r9
	strh	r0, [r1, #10]
	ldr	r0, .L_4aad8
	add	r2, r2, r0
	ldrb	r4, [r2, #0]
	cmp	r5, #95	@ 0x5f
	bne	.L_4ab08
.L_4aac6:
	add	r1, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_4ab08
	.align	2, 0
.L_4aad0:
	.4byte	sUnk_83CFC38
.L_4aad4:
	.4byte	sUnk_83CFBD8
.L_4aad8:
	.4byte	sUnk_83CFCC8
.L_4aadc:
	ldr	r0, .L_4ab7c
	lsl	r1, r5, #1
	add	r0, r1, r0
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	lsl	r0, r0, #2
	mov	r3, r9
	ldrh	r3, [r3, #8]
	add	r0, r0, r3
	mov	r4, r9
	strh	r0, [r4, #8]
	ldr	r0, .L_4ab80
	add	r1, r1, r0
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	lsl	r0, r0, #2
	ldrh	r3, [r4, #10]
	add	r0, r0, r3
	strh	r0, [r4, #10]
	ldr	r0, .L_4ab84
.L_4ab04:
	add	r0, r5, r0
	ldrb	r4, [r0, #0]
.L_4ab08:
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_4ab88
	add	r0, r0, r1
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r8, r2
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	ldr	r5, .L_4ab8c
	strh	r0, [r5, #12]
	lsl	r0, r4, #1
	ldr	r4, .L_4ab88
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4ab7c:
	.4byte	sUnk_83CFC38
.L_4ab80:
	.4byte	sUnk_83CFB78
.L_4ab84:
	.4byte	sUnk_83CFC98
.L_4ab88:
	.4byte	sSinCosTable
.L_4ab8c:
	.4byte	gCurrentSprite


thumb_func_start func_804AB90
func_804AB90:
	push	{r4, lr}
	ldr	r0, .L_4abf4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_4abf8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #29
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #8
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r1, ip
	add	r1, #36	@ 0x24
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	ldr	r0, .L_4abfc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r3, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4abf4:
	.4byte	gCurrentSprite
.L_4abf8:
	.4byte	0xFFFB
.L_4abfc:
	.4byte	sUnk_83CFB68


thumb_func_start SpriteSwingingPlatform
SpriteSwingingPlatform:
	push	{lr}
	ldr	r0, .L_4ac14
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4ac18
	bl	func_804A3FC
	b	.L_4ac1c
.L_4ac14:
	.4byte	gCurrentSprite
.L_4ac18:
	bl	func_804A508
.L_4ac1c:
	pop	{r0}
	bx	r0


thumb_func_start SpriteSwingingPlatform2
SpriteSwingingPlatform2:
	push	{lr}
	ldr	r0, .L_4ac34
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4ac38
	bl	func_804A3FC
	b	.L_4ac3c
.L_4ac34:
	.4byte	gCurrentSprite
.L_4ac38:
	bl	func_804A84C
.L_4ac3c:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownAC
SpriteUnknownAC:
	push	{lr}
	mov	r0, #83	@ 0x53
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_4ac5c
	ldr	r0, .L_4ac60
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4ac58
	bl	func_804AB90
.L_4ac58:
	bl	func_8026838
.L_4ac5c:
	pop	{r0}
	bx	r0
.L_4ac60:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownAD
SpriteUnknownAD:
	push	{lr}
	mov	r0, #84	@ 0x54
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_4ac80
	ldr	r0, .L_4ac84
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4ac7c
	bl	func_804AB90
.L_4ac7c:
	bl	func_8026838
.L_4ac80:
	pop	{r0}
	bx	r0
.L_4ac84:
	.4byte	gCurrentSprite
