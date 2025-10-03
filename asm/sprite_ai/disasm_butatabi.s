.include "macros.s.inc"


thumb_func_start func_80583B0
func_80583B0:
	ldr	r2, .L_583cc
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_583d0
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	b	.L_583dc
	.align	2, 0
.L_583cc:
	.4byte	gCurrentSprite
.L_583d0:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
.L_583dc:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80583E0
func_80583E0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_58440
	ldrh	r1, [r7, #0]
	ldr	r0, .L_58444
	and	r0, r1
	mov	r6, #0
	mov	r1, #0
	mov	r8, r1
	strh	r0, [r7, #0]
	mov	r0, #3
	strb	r0, [r7, #30]
	add	r1, r7, #0
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r7, #0
	add	r0, #33	@ 0x21
	mov	r4, #16
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r5, #32
	strb	r5, [r0, #0]
	bl	func_80583B0
	add	r0, r7, #0
	add	r0, #35	@ 0x23
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	ldr	r0, .L_58448
	str	r0, [r7, #4]
	strb	r6, [r7, #22]
	mov	r0, r8
	strh	r0, [r7, #20]
	strb	r4, [r7, #28]
	add	r0, r7, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r6, [r0, #0]
	strb	r6, [r7, #26]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_58440:
	.4byte	gCurrentSprite
.L_58444:
	.4byte	0xFFFB
.L_58448:
	.4byte	sUnk_83DCCBC


thumb_func_start func_805844C
func_805844C:
	push	{lr}
	ldr	r2, .L_5848c
	ldr	r0, .L_58490
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	sub	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_58494
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_5848c:
	.4byte	gCurrentSprite
.L_58490:
	.4byte	sUnk_83DCD74
.L_58494:
	.4byte	0xFEFF


thumb_func_start func_8058498
func_8058498:
	push	{lr}
	ldr	r1, .L_584a8
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805844C
	pop	{r0}
	bx	r0
.L_584a8:
	.4byte	gCurrentSprite


thumb_func_start func_80584AC
func_80584AC:
	push	{lr}
	ldr	r1, .L_584bc
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805844C
	pop	{r0}
	bx	r0
.L_584bc:
	.4byte	gCurrentSprite


thumb_func_start func_80584C0
func_80584C0:
	push	{lr}
	ldr	r2, .L_584f0
	ldr	r0, .L_584f4
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	sub	r1, #1
	mov	r0, #7
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_584f0:
	.4byte	gCurrentSprite
.L_584f4:
	.4byte	sUnk_83DCD74


thumb_func_start func_80584F8
func_80584F8:
	push	{lr}
	ldr	r1, .L_58508
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80584C0
	pop	{r0}
	bx	r0
.L_58508:
	.4byte	gCurrentSprite


thumb_func_start func_805850C
func_805850C:
	push	{lr}
	ldr	r1, .L_5851c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80584C0
	pop	{r0}
	bx	r0
.L_5851c:
	.4byte	gCurrentSprite


thumb_func_start func_8058520
func_8058520:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L_58554
	add	r6, r5, #0
	add	r6, #42	@ 0x2a
	ldrb	r4, [r6, #0]
	cmp	r4, #1
	bne	.L_58534
	mov	r0, #109	@ 0x6d
	bl	m4aSongNumStart
.L_58534:
	ldr	r2, .L_58558
	lsl	r0, r4, #1
	add	r0, r0, r2
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5855c
	cmp	r1, r0
	bne	.L_58560
	sub	r1, r4, #1
	lsl	r1, r1, #1
	add	r1, r1, r2
	ldrh	r0, [r5, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_58568
.L_58554:
	.4byte	gCurrentSprite
.L_58558:
	.4byte	sUnk_83DCE3E
.L_5855c:
	.4byte	0x7FFF
.L_58560:
	add	r0, r4, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
.L_58568:
	strh	r0, [r5, #8]
	ldr	r2, .L_58584
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r4, [r0, #0]
	cmp	r4, #80	@ 0x50
	bne	.L_5858c
	ldr	r0, .L_58588
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	b	.L_585a6
	.align	2, 0
.L_58584:
	.4byte	gCurrentSprite
.L_58588:
	.4byte	sUnk_83DCCE4
.L_5858c:
	cmp	r4, #88	@ 0x58
	bne	.L_585a6
	ldr	r0, .L_585d8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	bl	func_80583B0
.L_585a6:
	ldr	r5, .L_585dc
	lsr	r0, r4, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	ldr	r0, .L_585e0
	cmp	r1, r0
	bne	.L_585ec
	ldr	r0, .L_585e4
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	mov	r1, #1
	strb	r1, [r2, #0]
	add	r2, #1
	strb	r1, [r2, #0]
	mov	r4, #0
	ldrh	r3, [r5, #0]
	ldr	r1, .L_585e8
	str	r1, [r0, #4]
	strb	r4, [r0, #22]
	strh	r4, [r0, #20]
	b	.L_585f6
	.align	2, 0
.L_585d8:
	.4byte	sUnk_83DCD2C
.L_585dc:
	.4byte	sUnk_83DCDDC
.L_585e0:
	.4byte	0x7FFF
.L_585e4:
	.4byte	gCurrentSprite
.L_585e8:
	.4byte	sUnk_83DCCBC
.L_585ec:
	add	r1, r4, #1
	ldr	r0, .L_58608
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	strb	r1, [r2, #0]
.L_585f6:
	add	r2, r0, #0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5860c
	ldrh	r0, [r2, #10]
	add	r0, r0, r3
	b	.L_58610
.L_58608:
	.4byte	gCurrentSprite
.L_5860c:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_58610:
	strh	r0, [r2, #10]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteButatabi
SpriteButatabi:
	push	{lr}
	ldr	r0, .L_58630
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #106	@ 0x6a
	bls	.L_58626
	b	.L_58814
.L_58626:
	lsl	r0, r1, #2
	ldr	r1, .L_58634
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_58630:
	.4byte	gCurrentSprite
.L_58634:
	.4byte	.L_58638
.L_58638:
	.4byte	.L_587e4
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_587f0
	.4byte	.L_587f6
	.4byte	.L_587fc
	.4byte	.L_58802
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_587ea
	.4byte	.L_58814
	.4byte	.L_587f0
	.4byte	.L_58814
	.4byte	.L_587fc
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_587f0
	.4byte	.L_587fc
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58814
	.4byte	.L_58808
	.4byte	.L_5880e
.L_587e4:
	bl	func_80583E0
	b	.L_5881c
.L_587ea:
	bl	SpriteUtilDie
	b	.L_5881c
.L_587f0:
	bl	func_8058498
	b	.L_5881c
.L_587f6:
	bl	SpriteUtilFallOffscreenRight
	b	.L_5881c
.L_587fc:
	bl	func_80584AC
	b	.L_5881c
.L_58802:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_5881c
.L_58808:
	bl	func_805850C
	b	.L_5881c
.L_5880e:
	bl	func_80584F8
	b	.L_5881c
.L_58814:
	mov	r0, #16
	strb	r0, [r2, #28]
	bl	func_8058520
.L_5881c:
	pop	{r0}
	bx	r0
