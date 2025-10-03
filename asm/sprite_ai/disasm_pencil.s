.include "macros.s.inc"


thumb_func_start func_80595FC
func_80595FC:
	ldr	r0, .L_5965c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_59660
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #26
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #23]
	cmp	r0, #112	@ 0x70
	beq	.L_59668
	cmp	r0, #113	@ 0x71
	bne	.L_59670
	ldr	r0, .L_59664
	b	.L_59672
.L_5965c:
	.4byte	gCurrentSprite
.L_59660:
	.4byte	0x8408
.L_59664:
	.4byte	sUnk_83DD678
.L_59668:
	ldr	r0, .L_5966c
	b	.L_59672
.L_5966c:
	.4byte	sUnk_83DD668
.L_59670:
	ldr	r0, .L_5967c
.L_59672:
	str	r0, [r1, #4]
	add	r1, #40	@ 0x28
	mov	r0, #0
	strb	r0, [r1, #0]
	bx	lr
.L_5967c:
	.4byte	sUnk_83DD658


thumb_func_start func_8059680
func_8059680:
	push	{lr}
	ldr	r0, .L_5969c
	add	r3, r0, #0
	add	r3, #41	@ 0x29
	ldrb	r1, [r3, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_596a0
	ldrb	r0, [r2, #23]
	cmp	r0, #112	@ 0x70
	bne	.L_596a6
	mov	r0, #0
	b	.L_596ae
	.align	2, 0
.L_5969c:
	.4byte	gCurrentSprite
.L_596a0:
	ldrb	r0, [r2, #23]
	cmp	r0, #112	@ 0x70
	bne	.L_596ac
.L_596a6:
	mov	r0, #16
	strb	r0, [r2, #28]
	b	.L_596c6
.L_596ac:
	mov	r0, #1
.L_596ae:
	strb	r0, [r3, #0]
	mov	r0, #32
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, #25
	strb	r0, [r2, #30]
	mov	r0, #219	@ 0xdb
	bl	m4aSongNumStart
.L_596c6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80596CC
func_80596CC:
	ldr	r2, .L_596f0
	ldrh	r0, [r2, #10]
	add	r0, #8
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_596ec
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #26
	strb	r0, [r2, #30]
.L_596ec:
	bx	lr
	.align	2, 0
.L_596f0:
	.4byte	gCurrentSprite


thumb_func_start func_80596F4
func_80596F4:
	push	{lr}
	ldr	r0, .L_59710
	add	r3, r0, #0
	add	r3, #41	@ 0x29
	ldrb	r1, [r3, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_59714
	ldrb	r0, [r2, #23]
	cmp	r0, #112	@ 0x70
	beq	.L_5971a
	mov	r0, #0
	b	.L_59722
	.align	2, 0
.L_59710:
	.4byte	gCurrentSprite
.L_59714:
	ldrb	r0, [r2, #23]
	cmp	r0, #112	@ 0x70
	beq	.L_59720
.L_5971a:
	mov	r0, #16
	strb	r0, [r2, #28]
	b	.L_5973a
.L_59720:
	mov	r0, #1
.L_59722:
	strb	r0, [r3, #0]
	mov	r0, #34	@ 0x22
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, #25
	strb	r0, [r2, #30]
	mov	r0, #219	@ 0xdb
	bl	m4aSongNumStart
.L_5973a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8059740
func_8059740:
	ldr	r2, .L_59764
	ldrh	r0, [r2, #10]
	sub	r0, #8
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_59760
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #26
	strb	r0, [r2, #30]
.L_59760:
	bx	lr
	.align	2, 0
.L_59764:
	.4byte	gCurrentSprite


thumb_func_start SpritePencil
SpritePencil:
	push	{lr}
	ldr	r0, .L_5977c
	ldrb	r0, [r0, #28]
	cmp	r0, #34	@ 0x22
	bhi	.L_5982c
	lsl	r0, r0, #2
	ldr	r1, .L_59780
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5977c:
	.4byte	gCurrentSprite
.L_59780:
	.4byte	.L_59784
.L_59784:
	.4byte	.L_59810
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_5982c
	.4byte	.L_59816
	.4byte	.L_5981c
	.4byte	.L_59822
	.4byte	.L_59828
.L_59810:
	bl	func_80595FC
	b	.L_5982c
.L_59816:
	bl	func_8059680
	b	.L_5982c
.L_5981c:
	bl	func_80596CC
	b	.L_5982c
.L_59822:
	bl	func_80596F4
	b	.L_5982c
.L_59828:
	bl	func_8059740
.L_5982c:
	bl	func_8026838
	pop	{r0}
	bx	r0
