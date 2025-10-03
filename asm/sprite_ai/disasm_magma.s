.include "macros.s.inc"


thumb_func_start func_804E64C
func_804E64C:
	push	{r4, lr}
	ldr	r0, .L_4e660
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	beq	.L_4e668
	ldr	r1, .L_4e664
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_4e6c4
	.align	2, 0
.L_4e660:
	.4byte	gSwitchPressed
.L_4e664:
	.4byte	gCurrentSprite
.L_4e668:
	ldr	r3, .L_4e6cc
	ldrh	r1, [r3, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	mov	r0, #56	@ 0x38
	strb	r0, [r3, #30]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #34	@ 0x22
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #200	@ 0xc8
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #104	@ 0x68
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
	mov	r0, #15
	strb	r0, [r3, #28]
	ldrh	r0, [r3, #10]
	add	r0, #32
	strh	r0, [r3, #10]
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r2, [r3, #8]
	add	r0, r0, r2
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r1, #0]
.L_4e6c4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4e6cc:
	.4byte	gCurrentSprite


thumb_func_start func_804E6D0
func_804E6D0:
	push	{lr}
	ldr	r2, .L_4e6fc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4e6f8
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #135	@ 0x87
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4e6f8:
	pop	{r0}
	bx	r0
.L_4e6fc:
	.4byte	gCurrentSprite


thumb_func_start func_804E700
func_804E700:
	push	{r4, r5, lr}
	ldr	r2, .L_4e734
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r1, .L_4e738
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_4e73c
	cmp	r1, r0
	bne	.L_4e740
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #247	@ 0xf7
	strb	r0, [r1, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
	add	r0, #253	@ 0xfd
	bl	m4aSongNumStart
	b	.L_4e74c
	.align	2, 0
.L_4e734:
	.4byte	gCurrentSprite
.L_4e738:
	.4byte	sUnk_83D25C0
.L_4e73c:
	.4byte	0x7FFF
.L_4e740:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
.L_4e74c:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804E754
func_804E754:
	ldr	r1, .L_4e76c
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_4e770
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrh	r0, [r1, #8]
	add	r0, #2
	strh	r0, [r1, #8]
	b	.L_4e778
.L_4e76c:
	.4byte	gCurrentSprite
.L_4e770:
	mov	r0, #15
	strb	r0, [r1, #28]
	mov	r0, #24
	strb	r0, [r2, #0]
.L_4e778:
	bx	lr
	.align	2, 0


thumb_func_start SpriteMagma
SpriteMagma:
	push	{lr}
	ldr	r0, .L_4e790
	ldrb	r0, [r0, #28]
	cmp	r0, #15
	beq	.L_4e7a4
	cmp	r0, #15
	bgt	.L_4e794
	cmp	r0, #0
	beq	.L_4e79e
	b	.L_4e7b4
.L_4e790:
	.4byte	gCurrentSprite
.L_4e794:
	cmp	r0, #16
	beq	.L_4e7aa
	cmp	r0, #18
	beq	.L_4e7b0
	b	.L_4e7b4
.L_4e79e:
	bl	func_804E64C
	b	.L_4e7b4
.L_4e7a4:
	bl	func_804E6D0
	b	.L_4e7b4
.L_4e7aa:
	bl	func_804E700
	b	.L_4e7b4
.L_4e7b0:
	bl	func_804E754
.L_4e7b4:
	ldr	r2, .L_4e7d8
	ldrh	r0, [r2, #8]
	lsr	r0, r0, #2
	ldr	r1, .L_4e7dc
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #160	@ 0xa0
	bhi	.L_4e7e4
	ldr	r0, .L_4e7e0
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #36	@ 0x24
	mov	r0, #127	@ 0x7f
	b	.L_4e7ee
	.align	2, 0
.L_4e7d8:
	.4byte	gCurrentSprite
.L_4e7dc:
	.4byte	gBg1YPosition
.L_4e7e0:
	.4byte	sUnk_83D2570
.L_4e7e4:
	ldr	r0, .L_4e7f4
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #36	@ 0x24
	mov	r0, #0
.L_4e7ee:
	strb	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_4e7f4:
	.4byte	sUnk_83D2598
