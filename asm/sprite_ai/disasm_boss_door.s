.include "macros.s.inc"


thumb_func_start func_804E7F8
func_804E7F8:
	ldr	r1, .L_4e810
	ldrb	r0, [r1, #23]
	sub	r0, #100	@ 0x64
	add	r2, r1, #0
	cmp	r0, #4
	bhi	.L_4e868
	lsl	r0, r0, #2
	ldr	r1, .L_4e814
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4e810:
	.4byte	gCurrentSprite
.L_4e814:
	.4byte	.L_4e818
.L_4e818:
	.4byte	.L_4e82c
	.4byte	.L_4e838
	.4byte	.L_4e844
	.4byte	.L_4e850
	.4byte	.L_4e85c
.L_4e82c:
	ldr	r0, .L_4e834
	str	r0, [r2, #4]
	b	.L_4e86c
	.align	2, 0
.L_4e834:
	.4byte	sUnk_83D2A64
.L_4e838:
	ldr	r0, .L_4e840
	str	r0, [r2, #4]
	b	.L_4e86c
	.align	2, 0
.L_4e840:
	.4byte	sUnk_83D2C48
.L_4e844:
	ldr	r0, .L_4e84c
	str	r0, [r2, #4]
	b	.L_4e86c
	.align	2, 0
.L_4e84c:
	.4byte	sUnk_83D2E74
.L_4e850:
	ldr	r0, .L_4e858
	str	r0, [r2, #4]
	b	.L_4e86c
	.align	2, 0
.L_4e858:
	.4byte	sUnk_83D30A0
.L_4e85c:
	ldr	r0, .L_4e864
	str	r0, [r2, #4]
	b	.L_4e86c
	.align	2, 0
.L_4e864:
	.4byte	sUnk_83D32CC
.L_4e868:
	ldr	r0, .L_4e870
	str	r0, [r1, #4]
.L_4e86c:
	bx	lr
	.align	2, 0
.L_4e870:
	.4byte	sUnk_83D2820


thumb_func_start func_804E874
func_804E874:
	ldr	r1, .L_4e88c
	ldrb	r0, [r1, #23]
	sub	r0, #100	@ 0x64
	add	r2, r1, #0
	cmp	r0, #4
	bhi	.L_4e8e4
	lsl	r0, r0, #2
	ldr	r1, .L_4e890
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4e88c:
	.4byte	gCurrentSprite
.L_4e890:
	.4byte	.L_4e894
.L_4e894:
	.4byte	.L_4e8a8
	.4byte	.L_4e8b4
	.4byte	.L_4e8c0
	.4byte	.L_4e8cc
	.4byte	.L_4e8d8
.L_4e8a8:
	ldr	r0, .L_4e8b0
	str	r0, [r2, #4]
	b	.L_4e8e8
	.align	2, 0
.L_4e8b0:
	.4byte	sUnk_83D2A0C
.L_4e8b4:
	ldr	r0, .L_4e8bc
	str	r0, [r2, #4]
	b	.L_4e8e8
	.align	2, 0
.L_4e8bc:
	.4byte	sUnk_83D2BF0
.L_4e8c0:
	ldr	r0, .L_4e8c8
	str	r0, [r2, #4]
	b	.L_4e8e8
	.align	2, 0
.L_4e8c8:
	.4byte	sUnk_83D2E1C
.L_4e8cc:
	ldr	r0, .L_4e8d4
	str	r0, [r2, #4]
	b	.L_4e8e8
	.align	2, 0
.L_4e8d4:
	.4byte	sUnk_83D3048
.L_4e8d8:
	ldr	r0, .L_4e8e0
	str	r0, [r2, #4]
	b	.L_4e8e8
	.align	2, 0
.L_4e8e0:
	.4byte	sUnk_83D3274
.L_4e8e4:
	ldr	r0, .L_4e8ec
	str	r0, [r1, #4]
.L_4e8e8:
	bx	lr
	.align	2, 0
.L_4e8ec:
	.4byte	sUnk_83D27C8


thumb_func_start func_804E8F0
func_804E8F0:
	ldr	r1, .L_4e908
	ldrb	r0, [r1, #23]
	sub	r0, #100	@ 0x64
	add	r2, r1, #0
	cmp	r0, #4
	bhi	.L_4e960
	lsl	r0, r0, #2
	ldr	r1, .L_4e90c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4e908:
	.4byte	gCurrentSprite
.L_4e90c:
	.4byte	.L_4e910
.L_4e910:
	.4byte	.L_4e924
	.4byte	.L_4e930
	.4byte	.L_4e93c
	.4byte	.L_4e948
	.4byte	.L_4e954
.L_4e924:
	ldr	r0, .L_4e92c
	str	r0, [r2, #4]
	b	.L_4e964
	.align	2, 0
.L_4e92c:
	.4byte	sUnk_83D2A1C
.L_4e930:
	ldr	r0, .L_4e938
	str	r0, [r2, #4]
	b	.L_4e964
	.align	2, 0
.L_4e938:
	.4byte	sUnk_83D2C00
.L_4e93c:
	ldr	r0, .L_4e944
	str	r0, [r2, #4]
	b	.L_4e964
	.align	2, 0
.L_4e944:
	.4byte	sUnk_83D2E2C
.L_4e948:
	ldr	r0, .L_4e950
	str	r0, [r2, #4]
	b	.L_4e964
	.align	2, 0
.L_4e950:
	.4byte	sUnk_83D3058
.L_4e954:
	ldr	r0, .L_4e95c
	str	r0, [r2, #4]
	b	.L_4e964
	.align	2, 0
.L_4e95c:
	.4byte	sUnk_83D3284
.L_4e960:
	ldr	r0, .L_4e968
	str	r0, [r1, #4]
.L_4e964:
	bx	lr
	.align	2, 0
.L_4e968:
	.4byte	sUnk_83D27D8


thumb_func_start func_804E96C
func_804E96C:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_4e9c0
	ldrh	r1, [r6, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r5, #0
	orr	r0, r1
	strh	r0, [r6, #0]
	strb	r4, [r6, #30]
	add	r1, r6, #0
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r0, r6, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bl	func_804E874
	strb	r4, [r6, #22]
	strh	r5, [r6, #20]
	mov	r0, #1
	strb	r0, [r6, #28]
	mov	r0, #3
	strb	r0, [r6, #26]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_4e9c0:
	.4byte	gCurrentSprite


thumb_func_start func_804E9C4
func_804E9C4:
	push	{lr}
	ldr	r2, .L_4e9f8
	ldrh	r1, [r2, #18]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #3
	cmp	r1, r0
	bls	.L_4e9f2
	ldrb	r0, [r2, #1]
	cmp	r0, #49	@ 0x31
	bne	.L_4e9f2
	ldr	r0, .L_4e9fc
	mov	r1, #2
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #255	@ 0xff
	strb	r1, [r0, #0]
	ldr	r0, .L_4ea00
	bl	m4aSongNumStart
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	func_806ACA0
.L_4e9f2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4e9f8:
	.4byte	gWarioData
.L_4e9fc:
	.4byte	gCurrentSprite
.L_4ea00:
	.4byte	0x1BB


thumb_func_start func_804EA04
func_804EA04:
	push	{r4, lr}
	ldr	r4, .L_4ea30
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4ea34
	mov	r0, #31
	and	r1, r0
	cmp	r1, #0
	bne	.L_4ea28
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	func_806ACA0
.L_4ea28:
	ldrh	r0, [r4, #8]
	sub	r0, #1
	strh	r0, [r4, #8]
	b	.L_4ea48
.L_4ea30:
	.4byte	gCurrentSprite
.L_4ea34:
	ldrh	r0, [r4, #0]
	mov	r1, #4
	orr	r1, r0
	strh	r1, [r4, #0]
	mov	r0, #24
	strb	r0, [r4, #28]
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	func_806ACA0
.L_4ea48:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteBossDoor
SpriteBossDoor:
	push	{lr}
	ldr	r1, .L_4ea68
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #1
	beq	.L_4ea78
	cmp	r0, #1
	bgt	.L_4ea6c
	cmp	r0, #0
	beq	.L_4ea72
	b	.L_4ea82
.L_4ea68:
	.4byte	gCurrentSprite
.L_4ea6c:
	cmp	r0, #2
	beq	.L_4ea7e
	b	.L_4ea82
.L_4ea72:
	bl	func_804E96C
	b	.L_4ea82
.L_4ea78:
	bl	func_804E9C4
	b	.L_4ea82
.L_4ea7e:
	bl	func_804EA04
.L_4ea82:
	pop	{r0}
	bx	r0
	.align	2, 0
