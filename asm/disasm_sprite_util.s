.include "macros.s.inc"


thumb_func_start func_80238A4
func_80238A4:
	ldr	r0, .L_238c0
	ldrb	r0, [r0, #0]
	cmp	r0, #57	@ 0x39
	bls	.L_238d8
	ldr	r0, .L_238c4
	ldr	r0, [r0, #0]
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_238cc
	ldr	r1, .L_238c8
	mov	r0, #51	@ 0x33
	b	.L_238e0
	.align	2, 0
.L_238c0:
	.4byte	gUnk_30000C8
.L_238c4:
	.4byte	gUnk_3000BEC
.L_238c8:
	.4byte	gCurrentSprite
.L_238cc:
	ldr	r1, .L_238d4
	mov	r0, #53	@ 0x35
	b	.L_238e0
	.align	2, 0
.L_238d4:
	.4byte	gCurrentSprite
.L_238d8:
	cmp	r0, #41	@ 0x29
	bls	.L_238e2
	ldr	r1, .L_238e4
	mov	r0, #75	@ 0x4b
.L_238e0:
	strb	r0, [r1, #28]
.L_238e2:
	bx	lr
.L_238e4:
	.4byte	gCurrentSprite


thumb_func_start func_80238E8
func_80238E8:
	ldr	r0, .L_23904
	ldrb	r0, [r0, #0]
	cmp	r0, #41	@ 0x29
	bls	.L_23916
	ldr	r0, .L_23908
	ldr	r0, [r0, #0]
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23910
	ldr	r1, .L_2390c
	mov	r0, #51	@ 0x33
	b	.L_23914
	.align	2, 0
.L_23904:
	.4byte	gUnk_30000C8
.L_23908:
	.4byte	gUnk_3000BEC
.L_2390c:
	.4byte	gCurrentSprite
.L_23910:
	ldr	r1, .L_23918
	mov	r0, #53	@ 0x35
.L_23914:
	strb	r0, [r1, #28]
.L_23916:
	bx	lr
.L_23918:
	.4byte	gCurrentSprite


thumb_func_start func_802391C
func_802391C:
	ldr	r0, .L_23934
	ldrb	r0, [r0, #0]
	cmp	r0, #41	@ 0x29
	bls	.L_23940
	ldr	r2, .L_23938
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2393c
	mov	r0, #53	@ 0x35
	b	.L_2393e
.L_23934:
	.4byte	gUnk_30000C8
.L_23938:
	.4byte	gCurrentSprite
.L_2393c:
	mov	r0, #51	@ 0x33
.L_2393e:
	strb	r0, [r2, #28]
.L_23940:
	bx	lr


thumb_func_start func_8023944
func_8023944:
	push	{r4, r5, lr}
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_806D5C0
	add	r3, r0, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #17
	and	r2, r3
	cmp	r2, #0
	beq	.L_23970
	ldr	r1, .L_2396c
	mov	r0, #17
	strb	r0, [r1, #0]
	add	r2, r1, #0
	b	.L_23976
.L_2396c:
	.4byte	gUnk_3000A50
.L_23970:
	ldr	r0, .L_2398c
	strb	r2, [r0, #0]
	add	r2, r0, #0
.L_23976:
	mov	r0, #255	@ 0xff
	and	r0, r3
	sub	r0, #2
	cmp	r0, #10
	bhi	.L_23a50
	lsl	r0, r0, #2
	ldr	r1, .L_23990
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2398c:
	.4byte	gUnk_3000A50
.L_23990:
	.4byte	.L_23994
.L_23994:
	.4byte	.L_23a0c
	.4byte	.L_239c0
	.4byte	.L_23a34
	.4byte	.L_23a20
	.4byte	.L_239dc
	.4byte	.L_239f0
	.4byte	.L_23a50
	.4byte	.L_23a50
	.4byte	.L_23a50
	.4byte	.L_23a50
	.4byte	.L_23a4c
.L_239c0:
	ldr	r0, .L_239d8
	and	r0, r4
	mov	r1, #63	@ 0x3f
	and	r1, r5
	sub	r1, #63	@ 0x3f
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	mov	r0, #5
	strb	r0, [r2, #0]
	b	.L_23a54
	.align	2, 0
.L_239d8:
	.4byte	0x0000ffc0
.L_239dc:
	ldr	r0, .L_239ec
	and	r0, r4
	mov	r1, #63	@ 0x3f
	and	r1, r5
	lsr	r1, r1, #1
	sub	r1, #63	@ 0x3f
	b	.L_239fc
	.align	2, 0
.L_239ec:
	.4byte	0x0000ffc0
.L_239f0:
	ldr	r0, .L_23a08
	and	r0, r4
	mov	r1, #63	@ 0x3f
	and	r1, r5
	lsr	r1, r1, #1
	sub	r1, #31
.L_239fc:
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	mov	r0, #3
	strb	r0, [r2, #0]
	b	.L_23a54
.L_23a08:
	.4byte	0x0000ffc0
.L_23a0c:
	ldr	r1, .L_23a1c
	and	r1, r4
	mov	r0, #63	@ 0x3f
	and	r0, r5
	orr	r1, r0
	mov	r0, #4
	strb	r0, [r2, #0]
	b	.L_23a54
.L_23a1c:
	.4byte	0x0000ffc0
.L_23a20:
	ldr	r1, .L_23a30
	and	r1, r4
	mov	r0, #63	@ 0x3f
	and	r0, r5
	lsr	r0, r0, #1
	add	r0, #31
	b	.L_23a3e
	.align	2, 0
.L_23a30:
	.4byte	0x0000ffc0
.L_23a34:
	ldr	r1, .L_23a48
	and	r1, r4
	mov	r0, #63	@ 0x3f
	and	r0, r5
	lsr	r0, r0, #1
.L_23a3e:
	orr	r1, r0
	mov	r0, #2
	strb	r0, [r2, #0]
	b	.L_23a54
	.align	2, 0
.L_23a48:
	.4byte	0x0000ffc0
.L_23a4c:
	mov	r0, #16
	strb	r0, [r2, #0]
.L_23a50:
	ldr	r1, .L_23a5c
	and	r1, r4
.L_23a54:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_23a5c:
	.4byte	0x0000ffc0


thumb_func_start func_8023A60
func_8023A60:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	add	r6, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r6
	mov	r3, #0
	cmp	r0, #0
	beq	.L_23a82
	mov	r3, #17
.L_23a82:
	mov	r0, #255	@ 0xff
	and	r6, r0
	sub	r0, r6, #2
	cmp	r0, #10
	bhi	.L_23b4e
	lsl	r0, r0, #2
	ldr	r1, .L_23a98
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_23a98:
	.4byte	.L_23a9c
.L_23a9c:
	.4byte	.L_23b10
	.4byte	.L_23ac8
	.4byte	.L_23b38
	.4byte	.L_23b24
	.4byte	.L_23ae0
	.4byte	.L_23af4
	.4byte	.L_23b4e
	.4byte	.L_23b4e
	.4byte	.L_23b4e
	.4byte	.L_23b4e
	.4byte	.L_23b4c
.L_23ac8:
	ldr	r1, .L_23adc
	and	r1, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	sub	r0, #63	@ 0x3f
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r2, r1, #16
	mov	r3, #5
	b	.L_23b52
.L_23adc:
	.4byte	0x0000ffc0
.L_23ae0:
	ldr	r1, .L_23af0
	and	r1, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	lsr	r0, r0, #1
	sub	r0, #63	@ 0x3f
	b	.L_23b00
	.align	2, 0
.L_23af0:
	.4byte	0x0000ffc0
.L_23af4:
	ldr	r1, .L_23b0c
	and	r1, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	lsr	r0, r0, #1
	sub	r0, #31
.L_23b00:
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r2, r1, #16
	mov	r3, #3
	b	.L_23b52
	.align	2, 0
.L_23b0c:
	.4byte	0x0000ffc0
.L_23b10:
	ldr	r2, .L_23b20
	and	r2, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	orr	r2, r0
	mov	r3, #4
	b	.L_23b52
	.align	2, 0
.L_23b20:
	.4byte	0x0000ffc0
.L_23b24:
	ldr	r2, .L_23b34
	and	r2, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	lsr	r0, r0, #1
	add	r0, #31
	b	.L_23b42
	.align	2, 0
.L_23b34:
	.4byte	0x0000ffc0
.L_23b38:
	ldr	r2, .L_23b48
	and	r2, r5
	mov	r0, #63	@ 0x3f
	and	r0, r4
	lsr	r0, r0, #1
.L_23b42:
	orr	r2, r0
	mov	r3, #2
	b	.L_23b52
.L_23b48:
	.4byte	0x0000ffc0
.L_23b4c:
	mov	r3, #16
.L_23b4e:
	ldr	r2, .L_23b60
	and	r2, r5
.L_23b52:
	cmp	r6, #12
	bne	.L_23b64
	sub	r0, r5, r2
	cmp	r0, #25
	bls	.L_23b68
	b	.L_23b74
	.align	2, 0
.L_23b60:
	.4byte	0x0000ffc0
.L_23b64:
	cmp	r5, r2
	bcc	.L_23b74
.L_23b68:
	ldr	r0, .L_23b70
	strb	r3, [r0, #0]
	b	.L_23b7a
	.align	2, 0
.L_23b70:
	.4byte	gUnk_3000A50
.L_23b74:
	ldr	r1, .L_23b84
	mov	r0, #0
	strb	r0, [r1, #0]
.L_23b7a:
	add	r0, r2, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_23b84:
	.4byte	gUnk_3000A50


thumb_func_start func_8023B88
func_8023B88:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, .L_23bf4
	ldrh	r5, [r7, #8]
	mov	r9, r5
	ldrh	r4, [r7, #10]
	mov	sl, r4
	sub	r0, r5, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	bl	func_8023944
	add	r2, r0, #0
	ldr	r6, .L_23bf8
	ldrb	r1, [r6, #0]
	mov	r0, #15
	mov	r8, r0
	and	r0, r1
	cmp	r0, #1
	bhi	.L_23be2
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_8023944
	add	r2, r0, #0
	ldrb	r1, [r6, #0]
	mov	r0, r8
	and	r0, r1
	cmp	r0, #1
	bhi	.L_23be2
	mov	r0, r9
	add	r0, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, sl
	bl	func_8023944
	add	r2, r0, #0
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_23be4
.L_23be2:
	strh	r2, [r7, #8]
.L_23be4:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_23bf4:
	.4byte	gCurrentSprite
.L_23bf8:
	.4byte	gUnk_3000A50


thumb_func_start func_8023BFC
func_8023BFC:
	push	{lr}
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_806D5C0
	add	r3, r0, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #17
	and	r2, r3
	cmp	r2, #0
	beq	.L_23c24
	ldr	r1, .L_23c20
	mov	r0, #17
	strb	r0, [r1, #0]
	add	r2, r1, #0
	b	.L_23c2a
.L_23c20:
	.4byte	gUnk_3000A51
.L_23c24:
	ldr	r0, .L_23c40
	strb	r2, [r0, #0]
	add	r2, r0, #0
.L_23c2a:
	mov	r0, #255	@ 0xff
	and	r0, r3
	sub	r0, #2
	cmp	r0, #10
	bhi	.L_23c90
	lsl	r0, r0, #2
	ldr	r1, .L_23c44
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_23c40:
	.4byte	gUnk_3000A51
.L_23c44:
	.4byte	.L_23c48
.L_23c48:
	.4byte	.L_23c80
	.4byte	.L_23c74
	.4byte	.L_23c88
	.4byte	.L_23c84
	.4byte	.L_23c78
	.4byte	.L_23c7c
	.4byte	.L_23c90
	.4byte	.L_23c90
	.4byte	.L_23c90
	.4byte	.L_23c90
	.4byte	.L_23c8c
.L_23c74:
	mov	r0, #5
	b	.L_23c8e
.L_23c78:
	mov	r0, #3
	b	.L_23c8e
.L_23c7c:
	mov	r0, #3
	b	.L_23c8e
.L_23c80:
	mov	r0, #4
	b	.L_23c8e
.L_23c84:
	mov	r0, #2
	b	.L_23c8e
.L_23c88:
	mov	r0, #2
	b	.L_23c8e
.L_23c8c:
	mov	r0, #16
.L_23c8e:
	strb	r0, [r2, #0]
.L_23c90:
	pop	{r0}
	bx	r0


thumb_func_start func_8023C94
func_8023C94:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_23cb0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_23cb8
	ldr	r1, .L_23cb4
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_23cce
	.align	2, 0
.L_23cb0:
	.4byte	gUnk_3000A50
.L_23cb4:
	.4byte	gCurrentSprite
.L_23cb8:
	ldr	r2, .L_23cd4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_23cce
	mov	r0, #15
	strb	r0, [r2, #28]
.L_23cce:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_23cd4:
	.4byte	gCurrentSprite


thumb_func_start func_8023CD8
func_8023CD8:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_23cf4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_23cfc
	ldr	r1, .L_23cf8
	mov	r0, #29
	strb	r0, [r1, #28]
	b	.L_23d42
	.align	2, 0
.L_23cf4:
	.4byte	gUnk_3000A50
.L_23cf8:
	.4byte	gCurrentSprite
.L_23cfc:
	ldr	r2, .L_23d28
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_23d42
	ldr	r1, .L_23d2c
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_23d30
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_23d3e
	mov	r0, #23
	b	.L_23d40
	.align	2, 0
.L_23d28:
	.4byte	gCurrentSprite
.L_23d2c:
	.4byte	gWarioData
.L_23d30:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_23d3e
	mov	r0, #23
	b	.L_23d40
.L_23d3e:
	mov	r0, #17
.L_23d40:
	strb	r0, [r2, #28]
.L_23d42:
	pop	{r0}
	bx	r0


thumb_func_start func_8023D48
func_8023D48:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_23d7c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_23d80
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_23d6a
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_23d6a:
	ldr	r0, .L_23d84
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_23d88
	strh	r2, [r4, #8]
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_23df8
	.align	2, 0
.L_23d7c:
	.4byte	gCurrentSprite
.L_23d80:
	.4byte	gUnk_30000A0
.L_23d84:
	.4byte	gUnk_3000A50
.L_23d88:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_23dc4
	ldr	r5, .L_23dbc
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23dc0
	cmp	r1, r0
	bne	.L_23dec
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23df6
	.align	2, 0
.L_23dbc:
	.4byte	sUnk_8352A68
.L_23dc0:
	.4byte	0x00007fff
.L_23dc4:
	ldr	r5, .L_23de4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23de8
	cmp	r1, r0
	bne	.L_23dec
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23df6
.L_23de4:
	.4byte	sUnk_8352A28
.L_23de8:
	.4byte	0x00007fff
.L_23dec:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_23df6:
	strh	r0, [r4, #8]
.L_23df8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8023E00
func_8023E00:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_23e44
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_23e48
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_23e22
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_23e22:
	ldr	r0, .L_23e4c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_23e6a
	strh	r2, [r4, #8]
	ldr	r1, .L_23e50
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_23e54
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_23e64
	b	.L_23e5e
	.align	2, 0
.L_23e44:
	.4byte	gCurrentSprite
.L_23e48:
	.4byte	gUnk_30000A0
.L_23e4c:
	.4byte	gUnk_3000A50
.L_23e50:
	.4byte	gWarioData
.L_23e54:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_23e64
.L_23e5e:
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_23ed8
.L_23e64:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_23ed8
.L_23e6a:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_23ea4
	ldr	r5, .L_23e9c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23ea0
	cmp	r1, r0
	bne	.L_23ecc
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23ed6
.L_23e9c:
	.4byte	sUnk_8352A68
.L_23ea0:
	.4byte	0x00007fff
.L_23ea4:
	ldr	r5, .L_23ec4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23ec8
	cmp	r1, r0
	bne	.L_23ecc
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23ed6
.L_23ec4:
	.4byte	sUnk_8352A28
.L_23ec8:
	.4byte	0x00007fff
.L_23ecc:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_23ed6:
	strh	r0, [r4, #8]
.L_23ed8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8023EE0
func_8023EE0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_23f1c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_23f20
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_23f02
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_23f02:
	ldr	r0, .L_23f24
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_23f32
	strh	r2, [r4, #8]
	ldr	r1, .L_23f28
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_23f2c
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	b	.L_23fa0
.L_23f1c:
	.4byte	gCurrentSprite
.L_23f20:
	.4byte	gUnk_30000A0
.L_23f24:
	.4byte	gUnk_3000A50
.L_23f28:
	.4byte	gWarioData
.L_23f2c:
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	b	.L_23fa0
.L_23f32:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_23f6c
	ldr	r5, .L_23f64
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23f68
	cmp	r1, r0
	bne	.L_23f94
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23f9e
.L_23f64:
	.4byte	sUnk_8352AFC
.L_23f68:
	.4byte	0x00007fff
.L_23f6c:
	ldr	r5, .L_23f8c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_23f90
	cmp	r1, r0
	bne	.L_23f94
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_23f9e
.L_23f8c:
	.4byte	sUnk_8352ADC
.L_23f90:
	.4byte	0x00007fff
.L_23f94:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_23f9e:
	strh	r0, [r4, #8]
.L_23fa0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8023FA8
func_8023FA8:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_23fdc
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_23fe0
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_23fca
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_23fca:
	ldr	r0, .L_23fe4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_23fe8
	strh	r2, [r4, #8]
	mov	r0, #108	@ 0x6c
	strb	r0, [r4, #28]
	b	.L_24058
	.align	2, 0
.L_23fdc:
	.4byte	gCurrentSprite
.L_23fe0:
	.4byte	gUnk_30000A0
.L_23fe4:
	.4byte	gUnk_3000A50
.L_23fe8:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24024
	ldr	r5, .L_2401c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24020
	cmp	r1, r0
	bne	.L_2404c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24056
	.align	2, 0
.L_2401c:
	.4byte	sUnk_8352AFC
.L_24020:
	.4byte	0x00007fff
.L_24024:
	ldr	r5, .L_24044
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24048
	cmp	r1, r0
	bne	.L_2404c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24056
.L_24044:
	.4byte	sUnk_8352ADC
.L_24048:
	.4byte	0x00007fff
.L_2404c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_24056:
	strh	r0, [r4, #8]
.L_24058:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024060
func_8024060:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_240a8
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r2, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r2, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_240b4
	ldr	r5, .L_240ac
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_240b0
	cmp	r1, r0
	bne	.L_240dc
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_240e6
	.align	2, 0
.L_240a8:
	.4byte	gCurrentSprite
.L_240ac:
	.4byte	sUnk_83529E8
.L_240b0:
	.4byte	0x00007fff
.L_240b4:
	ldr	r5, .L_240d4
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_240d8
	cmp	r1, r0
	bne	.L_240dc
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_240e6
.L_240d4:
	.4byte	sUnk_83529A8
.L_240d8:
	.4byte	0x00007fff
.L_240dc:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_240e6:
	strh	r0, [r2, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80240F0
func_80240F0:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_24138
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r2, #10]
	sub	r0, r0, r1
	strh	r0, [r2, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24144
	ldr	r5, .L_2413c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24140
	cmp	r1, r0
	bne	.L_2416c
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24176
	.align	2, 0
.L_24138:
	.4byte	gCurrentSprite
.L_2413c:
	.4byte	sUnk_83529E8
.L_24140:
	.4byte	0x00007fff
.L_24144:
	ldr	r5, .L_24164
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24168
	cmp	r1, r0
	bne	.L_2416c
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24176
.L_24164:
	.4byte	sUnk_83529A8
.L_24168:
	.4byte	0x00007fff
.L_2416c:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_24176:
	strh	r0, [r2, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024180
func_8024180:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_241ec
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #3
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_241f0
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_241f4
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bhi	.L_241da
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_241de
	ldrb	r0, [r5, #0]
.L_241da:
	sub	r0, #1
	strb	r0, [r5, #0]
.L_241de:
	ldr	r1, .L_241ec
	mov	r0, #45	@ 0x2d
	strb	r0, [r1, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_242c0
.L_241ec:
	.4byte	gCurrentSprite
.L_241f0:
	.4byte	gUnk_3000A51
.L_241f4:
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r1, [r5, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_24220
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_2429e
	cmp	r1, #0
	bne	.L_24224
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	bne	.L_24224
	mov	r0, #67	@ 0x43
	b	.L_242be
	.align	2, 0
.L_24220:
	.4byte	gUnk_3000A50
.L_24224:
	ldr	r4, .L_24260
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_24264
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_24268
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_24268
	mov	r0, #71	@ 0x47
	b	.L_242be
.L_24260:
	.4byte	gCurrentSprite
.L_24264:
	.4byte	gUnk_3000A51
.L_24268:
	ldr	r2, .L_24280
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24284
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #1
	b	.L_2428c
	.align	2, 0
.L_24280:
	.4byte	gCurrentSprite
.L_24284:
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #3
.L_2428c:
	and	r0, r1
	cmp	r0, #0
	bne	.L_242c0
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_242c0
.L_2429e:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #1
	bne	.L_242b0
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	beq	.L_242c0
	mov	r0, #71	@ 0x47
	b	.L_242be
.L_242b0:
	ldrb	r0, [r5, #0]
	cmp	r0, #4
	bls	.L_242bc
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_242c0
.L_242bc:
	mov	r0, #69	@ 0x45
.L_242be:
	strb	r0, [r4, #28]
.L_242c0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80242C8
func_80242C8:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_24334
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #2
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_24338
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_2433c
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bhi	.L_24322
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_24326
	ldrb	r0, [r5, #0]
.L_24322:
	sub	r0, #1
	strb	r0, [r5, #0]
.L_24326:
	ldr	r1, .L_24334
	mov	r0, #43	@ 0x2b
	strb	r0, [r1, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_24408
.L_24334:
	.4byte	gCurrentSprite
.L_24338:
	.4byte	gUnk_3000A51
.L_2433c:
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r5, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_24368
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_243e6
	cmp	r1, #0
	bne	.L_2436c
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	bne	.L_2436c
	mov	r0, #69	@ 0x45
	b	.L_24406
	.align	2, 0
.L_24368:
	.4byte	gUnk_3000A50
.L_2436c:
	ldr	r4, .L_243a8
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_243ac
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_243b0
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_243b0
	mov	r0, #73	@ 0x49
	b	.L_24406
.L_243a8:
	.4byte	gCurrentSprite
.L_243ac:
	.4byte	gUnk_3000A51
.L_243b0:
	ldr	r2, .L_243c8
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_243cc
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #1
	b	.L_243d4
	.align	2, 0
.L_243c8:
	.4byte	gCurrentSprite
.L_243cc:
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #3
.L_243d4:
	and	r0, r1
	cmp	r0, #0
	bne	.L_24408
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_24408
.L_243e6:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #0
	bne	.L_243f8
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	beq	.L_24408
	mov	r0, #73	@ 0x49
	b	.L_24406
.L_243f8:
	ldrb	r0, [r5, #0]
	cmp	r0, #4
	bls	.L_24404
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_24408
.L_24404:
	mov	r0, #67	@ 0x43
.L_24406:
	strb	r0, [r4, #28]
.L_24408:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024410
func_8024410:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_24428
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_2442c
	bl	func_8024180
	b	.L_24440
.L_24428:
	.4byte	gCurrentSprite
.L_2442c:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_24440
	mov	r0, #17
	strb	r0, [r1, #28]
.L_24440:
	pop	{r0}
	bx	r0


thumb_func_start func_8024444
func_8024444:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_2445c
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_24460
	bl	func_80242C8
	b	.L_24474
.L_2445c:
	.4byte	gCurrentSprite
.L_24460:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_24474
	mov	r0, #17
	strb	r0, [r1, #28]
.L_24474:
	pop	{r0}
	bx	r0


thumb_func_start func_8024478
func_8024478:
	push	{lr}
	bl	func_80238E8
	ldr	r1, .L_24490
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_24494
	bl	func_8024180
	b	.L_24498
.L_24490:
	.4byte	gCurrentSprite
.L_24494:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_24498:
	pop	{r0}
	bx	r0


thumb_func_start func_802449C
func_802449C:
	push	{lr}
	bl	func_80238E8
	ldr	r1, .L_244b4
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_244b8
	bl	func_80242C8
	b	.L_244bc
.L_244b4:
	.4byte	gCurrentSprite
.L_244b8:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_244bc:
	pop	{r0}
	bx	r0


thumb_func_start func_80244C0
func_80244C0:
	ldr	r1, .L_244d8
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r2, #0]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_244dc
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_244d8:
	.4byte	gCurrentSprite
.L_244dc:
	.4byte	0x0000feff


thumb_func_start func_80244E0
func_80244E0:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_244fc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_24504
	ldr	r1, .L_24500
	mov	r0, #29
	strb	r0, [r1, #28]
	b	.L_2451a
	.align	2, 0
.L_244fc:
	.4byte	gUnk_3000A50
.L_24500:
	.4byte	gCurrentSprite
.L_24504:
	ldr	r2, .L_24520
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2451a
	mov	r0, #25
	strb	r0, [r2, #28]
.L_2451a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_24520:
	.4byte	gCurrentSprite


thumb_func_start func_8024524
func_8024524:
	push	{lr}
	ldr	r2, .L_24550
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_2454c
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #5
	bl	Sprite_SpawnSecondary
.L_2454c:
	pop	{r0}
	bx	r0
.L_24550:
	.4byte	gCurrentSprite


thumb_func_start func_8024554
func_8024554:
	push	{lr}
	ldr	r1, .L_2456c
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	mov	r2, #5
	bl	Sprite_SpawnSecondary
	pop	{r0}
	bx	r0
.L_2456c:
	.4byte	gCurrentSprite


thumb_func_start func_8024570
func_8024570:
	push	{r4, r5, lr}
	ldr	r4, .L_245c8
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r0
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_245cc
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	beq	.L_245be
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_245d0
.L_245be:
	mov	r4, #69	@ 0x45
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_245e2
.L_245c8:
	.4byte	gCurrentSprite
.L_245cc:
	.4byte	gUnk_3000A51
.L_245d0:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_245ee
	mov	r4, #67	@ 0x43
.L_245e2:
	ldr	r0, .L_245f4
	strb	r4, [r0, #28]
	ldrh	r2, [r0, #0]
	ldr	r1, .L_245f8
	and	r1, r2
	strh	r1, [r0, #0]
.L_245ee:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_245f4:
	.4byte	gCurrentSprite
.L_245f8:
	.4byte	0x0000fdff


thumb_func_start func_80235FC
func_80235FC:
	push	{r4, r5, lr}
	ldr	r4, .L_24654
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r0
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_24658
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	beq	.L_2464a
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_2465c
.L_2464a:
	mov	r4, #67	@ 0x43
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_2466e
.L_24654:
	.4byte	gCurrentSprite
.L_24658:
	.4byte	gUnk_3000A51
.L_2465c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2467a
	mov	r4, #69	@ 0x45
.L_2466e:
	ldr	r0, .L_24680
	strb	r4, [r0, #28]
	ldrh	r2, [r0, #0]
	ldr	r1, .L_24684
	and	r1, r2
	strh	r1, [r0, #0]
.L_2467a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_24680:
	.4byte	gCurrentSprite
.L_24684:
	.4byte	0x0000fdff


thumb_func_start func_8024688
func_8024688:
	ldr	r2, .L_246a8
	mov	r1, #0
	mov	r0, #56	@ 0x38
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_246ac
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_246b2
.L_246a8:
	.4byte	gCurrentSprite
.L_246ac:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
.L_246b2:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80246B8
func_80246B8:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_246f0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_246fc
	ldr	r5, .L_246f4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_246f8
	cmp	r1, r0
	bne	.L_24724
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2472e
	.align	2, 0
.L_246f0:
	.4byte	gCurrentSprite
.L_246f4:
	.4byte	sUnk_8352AAC
.L_246f8:
	.4byte	0x00007fff
.L_246fc:
	ldr	r5, .L_2471c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24720
	cmp	r1, r0
	bne	.L_24724
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2472e
.L_2471c:
	.4byte	sUnk_8352AA2
.L_24720:
	.4byte	0x00007fff
.L_24724:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_2472e:
	strh	r0, [r3, #8]
	bl	func_8024570
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802473C
func_802473C:
	ldr	r2, .L_2475c
	mov	r1, #0
	mov	r0, #58	@ 0x3a
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24760
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_24766
.L_2475c:
	.4byte	gCurrentSprite
.L_24760:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #5
.L_24766:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_802476C
func_802476C:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_247a4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_247b0
	ldr	r5, .L_247a8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_247ac
	cmp	r1, r0
	bne	.L_247d8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_247e2
	.align	2, 0
.L_247a4:
	.4byte	gCurrentSprite
.L_247a8:
	.4byte	sUnk_8352ABE
.L_247ac:
	.4byte	0x00007fff
.L_247b0:
	ldr	r5, .L_247d0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_247d4
	cmp	r1, r0
	bne	.L_247d8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_247e2
.L_247d0:
	.4byte	sUnk_8352AB2
.L_247d4:
	.4byte	0x00007fff
.L_247d8:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_247e2:
	strh	r0, [r3, #8]
	bl	func_8024570
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80247F0
func_80247F0:
	ldr	r2, .L_24810
	mov	r1, #0
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24814
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_2481a
.L_24810:
	.4byte	gCurrentSprite
.L_24814:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #6
.L_2481a:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8024820
func_8024820:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_24858
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24864
	ldr	r5, .L_2485c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24860
	cmp	r1, r0
	bne	.L_2488c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24896
	.align	2, 0
.L_24858:
	.4byte	gCurrentSprite
.L_2485c:
	.4byte	sUnk_8352AD4
.L_24860:
	.4byte	0x00007fff
.L_24864:
	ldr	r5, .L_24884
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24888
	cmp	r1, r0
	bne	.L_2488c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24896
.L_24884:
	.4byte	sUnk_8352AC6
.L_24888:
	.4byte	0x00007fff
.L_2488c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_24896:
	strh	r0, [r3, #8]
	bl	func_8024570
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80248A4
func_80248A4:
	ldr	r2, .L_248c4
	mov	r1, #0
	mov	r0, #62	@ 0x3e
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_248c8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_248ce
.L_248c4:
	.4byte	gCurrentSprite
.L_248c8:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
.L_248ce:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80248D4
func_80248D4:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_2490c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24918
	ldr	r5, .L_24910
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24914
	cmp	r1, r0
	bne	.L_24940
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2494a
	.align	2, 0
.L_2490c:
	.4byte	gCurrentSprite
.L_24910:
	.4byte	sUnk_8352AAC
.L_24914:
	.4byte	0x00007fff
.L_24918:
	ldr	r5, .L_24938
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2493c
	cmp	r1, r0
	bne	.L_24940
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2494a
.L_24938:
	.4byte	sUnk_8352AA2
.L_2493c:
	.4byte	0x00007fff
.L_24940:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_2494a:
	strh	r0, [r3, #8]
	bl	func_80235FC
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024958
func_8024958:
	ldr	r2, .L_24978
	mov	r1, #0
	mov	r0, #64	@ 0x40
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_2497c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_24982
.L_24978:
	.4byte	gCurrentSprite
.L_2497c:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #5
.L_24982:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8024988
func_8024988:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_249c0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_249cc
	ldr	r5, .L_249c4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_249c8
	cmp	r1, r0
	bne	.L_249f4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_249fe
	.align	2, 0
.L_249c0:
	.4byte	gCurrentSprite
.L_249c4:
	.4byte	sUnk_8352ABE
.L_249c8:
	.4byte	0x00007fff
.L_249cc:
	ldr	r5, .L_249ec
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_249f0
	cmp	r1, r0
	bne	.L_249f4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_249fe
.L_249ec:
	.4byte	sUnk_8352AB2
.L_249f0:
	.4byte	0x00007fff
.L_249f4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_249fe:
	strh	r0, [r3, #8]
	bl	func_80235FC
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024A0C
func_8024A0C:
	ldr	r2, .L_24a2c
	mov	r1, #0
	mov	r0, #66	@ 0x42
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24a30
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_24a36
.L_24a2c:
	.4byte	gCurrentSprite
.L_24a30:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #6
.L_24a36:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8024A3C
func_8024A3C:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_24a74
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24a80
	ldr	r5, .L_24a78
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24a7c
	cmp	r1, r0
	bne	.L_24aa8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24ab2
	.align	2, 0
.L_24a74:
	.4byte	gCurrentSprite
.L_24a78:
	.4byte	sUnk_8352AD4
.L_24a7c:
	.4byte	0x00007fff
.L_24a80:
	ldr	r5, .L_24aa0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_24aa4
	cmp	r1, r0
	bne	.L_24aa8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_24ab2
.L_24aa0:
	.4byte	sUnk_8352AC6
.L_24aa4:
	.4byte	0x00007fff
.L_24aa8:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_24ab2:
	strh	r0, [r3, #8]
	bl	func_80235FC
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8024AC0
func_8024AC0:
	ldr	r0, .L_24ad0
	mov	r2, #0
	mov	r1, #68	@ 0x44
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_24ad0:
	.4byte	gCurrentSprite


thumb_func_start func_8024AD4
func_8024AD4:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_24b08
	add	r4, r0, #0
	add	r4, #42	@ 0x2a
	ldrb	r3, [r4, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_24b14
	ldr	r2, .L_24b0c
	lsl	r0, r3, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_24b10
	cmp	r1, r0
	bne	.L_24b38
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	b	.L_24b3c
	.align	2, 0
.L_24b08:
	.4byte	gCurrentSprite
.L_24b0c:
	.4byte	sUnk_8352AFC
.L_24b10:
	.4byte	0x00007fff
.L_24b14:
	ldr	r2, .L_24b30
	lsl	r0, r3, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_24b34
	cmp	r1, r0
	bne	.L_24b38
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	b	.L_24b3c
.L_24b30:
	.4byte	sUnk_8352ADC
.L_24b34:
	.4byte	0x00007fff
.L_24b38:
	add	r0, r3, #1
	strb	r0, [r4, #0]
.L_24b3c:
	ldrh	r0, [r6, #8]
	add	r0, r0, r5
	strh	r0, [r6, #8]
	add	r4, r6, #0
	add	r7, r4, #0
	add	r7, #41	@ 0x29
	ldrb	r1, [r7, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_24b90
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_24b6e
	ldrh	r0, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_24b6e:
	ldr	r0, .L_24b94
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_24bb4
	strh	r2, [r4, #8]
	ldrb	r0, [r7, #0]
	cmp	r0, #7
	bls	.L_24b82
	sub	r0, #4
	strb	r0, [r7, #0]
.L_24b82:
	lsl	r0, r5, #16
	asr	r0, r0, #16
	cmp	r0, #7
	bgt	.L_24b98
	mov	r0, #43	@ 0x2b
	b	.L_24baa
	.align	2, 0
.L_24b90:
	.4byte	gUnk_30000A0
.L_24b94:
	.4byte	gUnk_3000A50
.L_24b98:
	cmp	r0, #11
	bgt	.L_24ba0
	mov	r0, #55	@ 0x37
	b	.L_24baa
.L_24ba0:
	cmp	r0, #15
	bgt	.L_24ba8
	mov	r0, #57	@ 0x39
	b	.L_24baa
.L_24ba8:
	mov	r0, #59	@ 0x3b
.L_24baa:
	strb	r0, [r4, #28]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_24be0
.L_24bb4:
	ldrh	r0, [r6, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r6, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r6, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_24be8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_24be0
	mov	r0, #69	@ 0x45
	strb	r0, [r6, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
.L_24be0:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_24be8:
	.4byte	gUnk_3000A51


thumb_func_start func_8024BEC
func_8024BEC:
	ldr	r0, .L_24bfc
	mov	r2, #0
	mov	r1, #70	@ 0x46
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_24bfc:
	.4byte	gCurrentSprite


thumb_func_start func_8024C00
func_8024C00:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_24c34
	add	r4, r0, #0
	add	r4, #42	@ 0x2a
	ldrb	r3, [r4, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_24c40
	ldr	r2, .L_24c38
	lsl	r0, r3, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_24c3c
	cmp	r1, r0
	bne	.L_24c64
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	b	.L_24c68
	.align	2, 0
.L_24c34:
	.4byte	gCurrentSprite
.L_24c38:
	.4byte	sUnk_8352AFC
.L_24c3c:
	.4byte	0x00007fff
.L_24c40:
	ldr	r2, .L_24c5c
	lsl	r0, r3, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_24c60
	cmp	r1, r0
	bne	.L_24c64
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	b	.L_24c68
.L_24c5c:
	.4byte	sUnk_8352ADC
.L_24c60:
	.4byte	0x00007fff
.L_24c64:
	add	r0, r3, #1
	strb	r0, [r4, #0]
.L_24c68:
	ldrh	r0, [r6, #8]
	add	r0, r0, r5
	strh	r0, [r6, #8]
	add	r4, r6, #0
	add	r7, r4, #0
	add	r7, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r7, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_24cbc
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_24c9a
	ldrh	r0, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_24c9a:
	ldr	r0, .L_24cc0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_24ce0
	strh	r2, [r4, #8]
	ldrb	r0, [r7, #0]
	cmp	r0, #7
	bls	.L_24cae
	sub	r0, #4
	strb	r0, [r7, #0]
.L_24cae:
	lsl	r0, r5, #16
	asr	r0, r0, #16
	cmp	r0, #7
	bgt	.L_24cc4
	mov	r0, #45	@ 0x2d
	b	.L_24cd6
	.align	2, 0
.L_24cbc:
	.4byte	gUnk_30000A0
.L_24cc0:
	.4byte	gUnk_3000A50
.L_24cc4:
	cmp	r0, #11
	bgt	.L_24ccc
	mov	r0, #61	@ 0x3d
	b	.L_24cd6
.L_24ccc:
	cmp	r0, #15
	bgt	.L_24cd4
	mov	r0, #63	@ 0x3f
	b	.L_24cd6
.L_24cd4:
	mov	r0, #65	@ 0x41
.L_24cd6:
	strb	r0, [r4, #28]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_24d0c
.L_24ce0:
	ldrh	r0, [r6, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r6, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r6, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_24d14
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_24d0c
	mov	r0, #67	@ 0x43
	strb	r0, [r6, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
.L_24d0c:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_24d14:
	.4byte	gUnk_3000A51


thumb_func_start func_8024D18
func_8024D18:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, #0
	ldr	r1, .L_24d50
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r5, .L_24d54
	ldrb	r0, [r5, #0]
	add	r4, r1, #0
	cmp	r0, #1
	bge	.L_24d36
	b	.L_24e44
.L_24d36:
	cmp	r0, #3
	ble	.L_24d72
	cmp	r0, #4
	beq	.L_24d40
	b	.L_24e44
.L_24d40:
	ldr	r1, .L_24d58
	ldrb	r0, [r1, #1]
	cmp	r0, #4
	bne	.L_24d5c
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	strb	r7, [r5, #0]
	b	.L_24e48
.L_24d50:
	.4byte	gCurrentSprite
.L_24d54:
	.4byte	gCurrentCarriedSprite
.L_24d58:
	.4byte	gWarioData
.L_24d5c:
	mov	r0, #88	@ 0x58
	strb	r0, [r4, #28]
	ldrh	r0, [r5, #4]
	ldrh	r2, [r1, #20]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	ldrh	r0, [r5, #2]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_24e48
.L_24d72:
	ldrh	r3, [r4, #8]
	mov	r9, r3
	ldrh	r0, [r4, #10]
	mov	sl, r0
	ldr	r1, .L_24df8
	mov	r8, r1
	ldrh	r0, [r5, #4]
	ldrh	r2, [r1, #20]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	ldrh	r1, [r5, #2]
	mov	r3, r8
	ldrh	r3, [r3, #18]
	add	r1, r1, r3
	strh	r1, [r4, #10]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_24dfc
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_24db0
	mov	r7, #1
.L_24db0:
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_24dcc
	mov	r7, #2
.L_24dcc:
	cmp	r7, #0
	beq	.L_24e48
	mov	r0, r9
	strh	r0, [r4, #8]
	mov	r1, sl
	strh	r1, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24e00
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r1, #0]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r2, #0
	strb	r2, [r5, #0]
	b	.L_24e18
.L_24df8:
	.4byte	gWarioData
.L_24dfc:
	.4byte	gUnk_3000A51
.L_24e00:
	cmp	r7, #2
	bne	.L_24e20
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r3, #0
	strb	r3, [r5, #0]
.L_24e18:
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_24e48
.L_24e20:
	mov	r0, #87	@ 0x57
	strb	r0, [r4, #28]
	mov	r0, #1
	strb	r0, [r5, #1]
	mov	r0, #4
	strb	r0, [r5, #0]
	ldr	r1, .L_24e40
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_24e48
.L_24e40:
	.4byte	sUnk_82DECA0
.L_24e44:
	mov	r0, #29
	strb	r0, [r4, #28]
.L_24e48:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8024E58
func_8024E58:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, #0
	ldr	r1, .L_24e90
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r5, .L_24e94
	ldrb	r0, [r5, #0]
	add	r4, r1, #0
	cmp	r0, #1
	bge	.L_24e76
	b	.L_24f84
.L_24e76:
	cmp	r0, #3
	ble	.L_24eb2
	cmp	r0, #4
	beq	.L_24e80
	b	.L_24f84
.L_24e80:
	ldr	r1, .L_24e98
	ldrb	r0, [r1, #1]
	cmp	r0, #4
	bne	.L_24e9c
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	strb	r7, [r5, #0]
	b	.L_24f88
.L_24e90:
	.4byte	gCurrentSprite
.L_24e94:
	.4byte	gCurrentCarriedSprite
.L_24e98:
	.4byte	gWarioData
.L_24e9c:
	mov	r0, #86	@ 0x56
	strb	r0, [r4, #28]
	ldrh	r0, [r5, #4]
	ldrh	r2, [r1, #20]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	ldrh	r0, [r5, #2]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_24f88
.L_24eb2:
	ldrh	r3, [r4, #8]
	mov	r9, r3
	ldrh	r0, [r4, #10]
	mov	sl, r0
	ldr	r1, .L_24f38
	mov	r8, r1
	ldrh	r0, [r5, #4]
	ldrh	r2, [r1, #20]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	ldrh	r1, [r5, #2]
	mov	r3, r8
	ldrh	r3, [r3, #18]
	add	r1, r1, r3
	strh	r1, [r4, #10]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_24f3c
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_24ef0
	mov	r7, #1
.L_24ef0:
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_24f0c
	mov	r7, #2
.L_24f0c:
	cmp	r7, #0
	beq	.L_24f88
	mov	r0, r9
	strh	r0, [r4, #8]
	mov	r1, sl
	strh	r1, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_24f40
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r1, #0]
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r2, #0
	strb	r2, [r5, #0]
	b	.L_24f58
.L_24f38:
	.4byte	gWarioData
.L_24f3c:
	.4byte	gUnk_3000A51
.L_24f40:
	cmp	r7, #2
	bne	.L_24f60
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r3, #0
	strb	r3, [r5, #0]
.L_24f58:
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_24f88
.L_24f60:
	mov	r0, #85	@ 0x55
	strb	r0, [r4, #28]
	mov	r0, #1
	strb	r0, [r5, #1]
	mov	r0, #4
	strb	r0, [r5, #0]
	ldr	r1, .L_24f80
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_24f88
.L_24f80:
	.4byte	sUnk_82DECA0
.L_24f84:
	mov	r0, #29
	strb	r0, [r4, #28]
.L_24f88:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8024F98
func_8024F98:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, .L_24fc0
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r1, .L_24fc4
	ldrb	r0, [r1, #0]
	sub	r0, #4
	add	r4, r2, #0
	add	r7, r1, #0
	cmp	r0, #8
	bls	.L_24fb6
	b	.L_25210
.L_24fb6:
	lsl	r0, r0, #2
	ldr	r1, .L_24fc8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_24fc0:
	.4byte	gCurrentSprite
.L_24fc4:
	.4byte	gCurrentCarriedSprite
.L_24fc8:
	.4byte	.L_24fcc
.L_24fcc:
	.4byte	.L_24ff0
	.4byte	.L_25114
	.4byte	.L_25114
	.4byte	.L_25114
	.4byte	.L_24ff0
	.4byte	.L_25114
	.4byte	.L_25114
	.4byte	.L_25114
	.4byte	.L_25198
.L_24ff0:
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r2, #0
	mov	r2, #0
	mov	r8, r2
	add	r2, r0, #0
	orr	r2, r1
	strh	r2, [r4, #0]
	ldr	r6, .L_2502c
	ldrh	r0, [r7, #4]
	ldrh	r1, [r6, #20]
	add	r3, r0, r1
	strh	r3, [r4, #8]
	ldrh	r0, [r7, #2]
	ldrh	r1, [r6, #18]
	add	r5, r0, r1
	strh	r5, [r4, #10]
	ldrh	r1, [r6, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_25030
	mov	r0, #64	@ 0x40
	eor	r2, r0
	strh	r2, [r4, #0]
	mov	r0, #86	@ 0x56
	strb	r0, [r4, #28]
	b	.L_25230
	.align	2, 0
.L_2502c:
	.4byte	gWarioData
.L_25030:
	add	r0, r3, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r2, #38	@ 0x26
	add	r2, r2, r4
	mov	r9, r2
	ldrb	r1, [r2, #0]
	add	r1, r5, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25068
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_2506c
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r0, r8
	b	.L_25178
	.align	2, 0
.L_25068:
	.4byte	gUnk_3000A51
.L_2506c:
	mov	r1, #24
	ldrsh	r0, [r6, r1]
	cmp	r0, #0
	blt	.L_250aa
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_25094
	b	.L_25230
.L_25094:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r2, r8
	strb	r2, [r7, #0]
	b	.L_2517a
.L_250aa:
	ldrh	r0, [r4, #8]
	mov	r1, r9
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_25108
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_250d2
	ldrh	r0, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_250d2:
	ldr	r0, .L_2510c
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_250e2
	b	.L_25230
.L_250e2:
	strh	r3, [r4, #8]
	strb	r2, [r4, #31]
	mov	r0, #55	@ 0x37
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, r8
	strb	r0, [r7, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_25110
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_25230
	.align	2, 0
.L_25108:
	.4byte	gUnk_30000A0
.L_2510c:
	.4byte	gUnk_3000A50
.L_25110:
	.4byte	0x0000feff
.L_25114:
	ldr	r2, .L_2518c
	ldrh	r1, [r2, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_2512c
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #86	@ 0x56
	strb	r0, [r4, #28]
.L_2512c:
	ldrh	r5, [r4, #8]
	ldrh	r6, [r4, #10]
	ldrh	r0, [r7, #4]
	ldrh	r1, [r2, #20]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	ldrh	r1, [r7, #2]
	ldrh	r2, [r2, #18]
	add	r1, r1, r2
	strh	r1, [r4, #10]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25190
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_25230
	strh	r5, [r4, #8]
	strh	r6, [r4, #10]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	bl	func_801E4B0
	mov	r0, #0
.L_25178:
	strb	r0, [r7, #0]
.L_2517a:
	ldrh	r1, [r4, #0]
	ldr	r0, .L_25194
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_25230
	.align	2, 0
.L_2518c:
	.4byte	gWarioData
.L_25190:
	.4byte	gUnk_3000A51
.L_25194:
	.4byte	0x0000feff
.L_25198:
	mov	r1, #0
	mov	r0, #31
	strb	r0, [r4, #31]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #3
	strb	r1, [r0, #0]
	ldrb	r1, [r7, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_251d2
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_251c8
	ldrb	r0, [r0, #1]
	cmp	r0, #37	@ 0x25
	bne	.L_251cc
	mov	r0, #103	@ 0x67
	strb	r0, [r4, #28]
	b	.L_25230
.L_251c8:
	.4byte	gWarioData
.L_251cc:
	mov	r0, #99	@ 0x63
	strb	r0, [r4, #28]
	b	.L_25230
.L_251d2:
	ldr	r0, .L_251f4
	ldrb	r0, [r0, #1]
	cmp	r0, #37	@ 0x25
	bne	.L_25202
	mov	r0, #95	@ 0x5f
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_251f8
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #16
	strb	r0, [r1, #0]
	b	.L_25230
	.align	2, 0
.L_251f4:
	.4byte	gWarioData
.L_251f8:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #27
	strb	r0, [r1, #0]
	b	.L_25230
.L_25202:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	mov	r0, #91	@ 0x5b
	strb	r0, [r4, #28]
	b	.L_25230
.L_25210:
	ldr	r0, .L_2521c
	ldrb	r0, [r0, #1]
	cmp	r0, #5
	bne	.L_25220
	mov	r0, #73	@ 0x49
	b	.L_25222
.L_2521c:
	.4byte	gWarioData
.L_25220:
	mov	r0, #29
.L_25222:
	strb	r0, [r4, #28]
	mov	r0, #15
	strb	r0, [r4, #31]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_2523c
	and	r0, r1
	strh	r0, [r4, #0]
.L_25230:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_2523c:
	.4byte	0x0000feff


thumb_func_start func_8025240
func_8025240:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, .L_25268
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r1, .L_2526c
	ldrb	r0, [r1, #0]
	sub	r0, #4
	add	r4, r2, #0
	add	r7, r1, #0
	cmp	r0, #8
	bls	.L_2525e
	b	.L_254b8
.L_2525e:
	lsl	r0, r0, #2
	ldr	r1, .L_25270
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_25268:
	.4byte	gCurrentSprite
.L_2526c:
	.4byte	gCurrentCarriedSprite
.L_25270:
	.4byte	.L_25274
.L_25274:
	.4byte	.L_25298
	.4byte	.L_253bc
	.4byte	.L_253bc
	.4byte	.L_253bc
	.4byte	.L_25298
	.4byte	.L_253bc
	.4byte	.L_253bc
	.4byte	.L_253bc
	.4byte	.L_25440
.L_25298:
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r2, #0
	mov	r2, #0
	mov	r8, r2
	add	r2, r0, #0
	orr	r2, r1
	strh	r2, [r4, #0]
	ldr	r6, .L_252d4
	ldrh	r0, [r7, #4]
	ldrh	r1, [r6, #20]
	add	r3, r0, r1
	strh	r3, [r4, #8]
	ldrh	r0, [r7, #2]
	ldrh	r1, [r6, #18]
	add	r5, r0, r1
	strh	r5, [r4, #10]
	ldrh	r1, [r6, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_252d8
	mov	r0, #64	@ 0x40
	eor	r2, r0
	strh	r2, [r4, #0]
	mov	r0, #88	@ 0x58
	strb	r0, [r4, #28]
	b	.L_254d8
	.align	2, 0
.L_252d4:
	.4byte	gWarioData
.L_252d8:
	add	r0, r3, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r2, #37	@ 0x25
	add	r2, r2, r4
	mov	r9, r2
	ldrb	r1, [r2, #0]
	sub	r1, r5, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25310
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_25314
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r0, r8
	b	.L_25420
	.align	2, 0
.L_25310:
	.4byte	gUnk_3000A51
.L_25314:
	mov	r1, #24
	ldrsh	r0, [r6, r1]
	cmp	r0, #0
	blt	.L_25352
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_2533c
	b	.L_254d8
.L_2533c:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	mov	r2, r8
	strb	r2, [r7, #0]
	b	.L_25422
.L_25352:
	ldrh	r0, [r4, #8]
	mov	r1, r9
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_253b0
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_2537a
	ldrh	r0, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_2537a:
	ldr	r0, .L_253b4
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_2538a
	b	.L_254d8
.L_2538a:
	strh	r3, [r4, #8]
	strb	r2, [r4, #31]
	mov	r0, #61	@ 0x3d
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, r8
	strb	r0, [r7, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_253b8
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_254d8
	.align	2, 0
.L_253b0:
	.4byte	gUnk_30000A0
.L_253b4:
	.4byte	gUnk_3000A50
.L_253b8:
	.4byte	0x0000feff
.L_253bc:
	ldr	r2, .L_25434
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_253d4
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #88	@ 0x58
	strb	r0, [r4, #28]
.L_253d4:
	ldrh	r5, [r4, #8]
	ldrh	r6, [r4, #10]
	ldrh	r0, [r7, #4]
	ldrh	r1, [r2, #20]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	ldrh	r1, [r7, #2]
	ldrh	r2, [r2, #18]
	add	r1, r1, r2
	strh	r1, [r4, #10]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25438
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_254d8
	strh	r5, [r4, #8]
	strh	r6, [r4, #10]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
	mov	r0, #31
	strb	r0, [r4, #31]
	bl	func_801E4B0
	mov	r0, #0
.L_25420:
	strb	r0, [r7, #0]
.L_25422:
	ldrh	r1, [r4, #0]
	ldr	r0, .L_2543c
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_254d8
	.align	2, 0
.L_25434:
	.4byte	gWarioData
.L_25438:
	.4byte	gUnk_3000A51
.L_2543c:
	.4byte	0x0000feff
.L_25440:
	mov	r1, #0
	mov	r0, #31
	strb	r0, [r4, #31]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #3
	strb	r1, [r0, #0]
	ldrb	r1, [r7, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_2547a
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_25470
	ldrb	r0, [r0, #1]
	cmp	r0, #37	@ 0x25
	bne	.L_25474
	mov	r0, #101	@ 0x65
	strb	r0, [r4, #28]
	b	.L_254d8
.L_25470:
	.4byte	gWarioData
.L_25474:
	mov	r0, #97	@ 0x61
	strb	r0, [r4, #28]
	b	.L_254d8
.L_2547a:
	ldr	r0, .L_2549c
	ldrb	r0, [r0, #1]
	cmp	r0, #37	@ 0x25
	bne	.L_254aa
	mov	r0, #93	@ 0x5d
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_254a0
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #16
	strb	r0, [r1, #0]
	b	.L_254d8
	.align	2, 0
.L_2549c:
	.4byte	gWarioData
.L_254a0:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #27
	strb	r0, [r1, #0]
	b	.L_254d8
.L_254aa:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	mov	r0, #89	@ 0x59
	strb	r0, [r4, #28]
	b	.L_254d8
.L_254b8:
	ldr	r0, .L_254c4
	ldrb	r0, [r0, #1]
	cmp	r0, #5
	bne	.L_254c8
	mov	r0, #71	@ 0x47
	b	.L_254ca
.L_254c4:
	.4byte	gWarioData
.L_254c8:
	mov	r0, #29
.L_254ca:
	strb	r0, [r4, #28]
	mov	r0, #15
	strb	r0, [r4, #31]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_254e4
	and	r0, r1
	strh	r0, [r4, #0]
.L_254d8:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_254e4:
	.4byte	0x0000feff


thumb_func_start func_80254E8
func_80254E8:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_2554c
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_25590
	ldr	r1, .L_25550
	mov	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_25554
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_25520
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_25520:
	ldr	r0, .L_25558
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_25590
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_2555c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_25560
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_25590
.L_2554c:
	.4byte	gCurrentSprite
.L_25550:
	.4byte	gUnk_3000028
.L_25554:
	.4byte	gUnk_30000A0
.L_25558:
	.4byte	gUnk_3000A50
.L_2555c:
	.4byte	gUnk_3000A51
.L_25560:
	strh	r5, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r3, [r1, #0]
	lsl	r0, r3, #24
	lsr	r2, r0, #24
	cmp	r2, #15
	bls	.L_25574
	lsr	r0, r0, #25
	b	.L_2557a
.L_25574:
	cmp	r2, #7
	bls	.L_2557c
	sub	r0, r3, #4
.L_2557a:
	strb	r0, [r1, #0]
.L_2557c:
	ldr	r1, .L_2558c
	mov	r0, #57	@ 0x39
	strb	r0, [r1, #28]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_2562c
	.align	2, 0
.L_2558c:
	.4byte	gCurrentSprite
.L_25590:
	ldr	r7, .L_255d8
	mov	r6, #1
	strb	r6, [r7, #0]
	ldr	r4, .L_255dc
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_255e0
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_255e4
	ldrb	r0, [r4, #28]
	cmp	r0, #90	@ 0x5a
	beq	.L_255ce
	cmp	r0, #98	@ 0x62
	beq	.L_255ce
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_2560e
.L_255ce:
	ldr	r1, .L_255dc
	mov	r0, #73	@ 0x49
	strb	r0, [r1, #28]
	b	.L_25618
	.align	2, 0
.L_255d8:
	.4byte	gUnk_3000028
.L_255dc:
	.4byte	gCurrentSprite
.L_255e0:
	.4byte	gUnk_3000A51
.L_255e4:
	strb	r6, [r7, #0]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_25620
	ldrb	r0, [r4, #28]
	cmp	r0, #94	@ 0x5e
	beq	.L_2560e
	cmp	r0, #102	@ 0x66
	bne	.L_25614
.L_2560e:
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #28]
	b	.L_2562c
.L_25614:
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #28]
.L_25618:
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_2562c
.L_25620:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
.L_2562c:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8025634
func_8025634:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25668
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25674
	ldr	r5, .L_2566c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25670
	cmp	r1, r0
	bne	.L_25698
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2569e
.L_25668:
	.4byte	gCurrentSprite
.L_2566c:
	.4byte	sUnk_8352B78
.L_25670:
	.4byte	0x00007fff
.L_25674:
	ldr	r5, .L_25690
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25694
	cmp	r1, r0
	bne	.L_25698
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2569e
.L_25690:
	.4byte	sUnk_8352B58
.L_25694:
	.4byte	0x00007fff
.L_25698:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_2569e:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_256b4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_256c6
.L_256b4:
	cmp	r0, #0
	ble	.L_256c0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_256c6
.L_256c0:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_256c6:
	strb	r0, [r1, #0]
	bl	func_80254E8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80256D4
func_80256D4:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25708
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25714
	ldr	r5, .L_2570c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25710
	cmp	r1, r0
	bne	.L_25738
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2573e
.L_25708:
	.4byte	gCurrentSprite
.L_2570c:
	.4byte	sUnk_8352BD0
.L_25710:
	.4byte	0x00007fff
.L_25714:
	ldr	r5, .L_25730
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25734
	cmp	r1, r0
	bne	.L_25738
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2573e
.L_25730:
	.4byte	sUnk_8352B90
.L_25734:
	.4byte	0x00007fff
.L_25738:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_2573e:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25754
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25766
.L_25754:
	cmp	r0, #0
	ble	.L_25760
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25766
.L_25760:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25766:
	strb	r0, [r1, #0]
	bl	func_80254E8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025774
func_8025774:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_257a8
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_257b4
	ldr	r5, .L_257ac
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_257b0
	cmp	r1, r0
	bne	.L_257d8
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_257de
.L_257a8:
	.4byte	gCurrentSprite
.L_257ac:
	.4byte	sUnk_8352C3C
.L_257b0:
	.4byte	0x00007fff
.L_257b4:
	ldr	r5, .L_257d0
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_257d4
	cmp	r1, r0
	bne	.L_257d8
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_257de
.L_257d0:
	.4byte	sUnk_8352BFC
.L_257d4:
	.4byte	0x00007fff
.L_257d8:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_257de:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_257f4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25806
.L_257f4:
	cmp	r0, #0
	ble	.L_25800
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25806
.L_25800:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25806:
	strb	r0, [r1, #0]
	bl	func_80254E8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025814
func_8025814:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25848
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25854
	ldr	r5, .L_2584c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25850
	cmp	r1, r0
	bne	.L_25878
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2587e
.L_25848:
	.4byte	gCurrentSprite
.L_2584c:
	.4byte	sUnk_8352CB0
.L_25850:
	.4byte	0x00007fff
.L_25854:
	ldr	r5, .L_25870
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25874
	cmp	r1, r0
	bne	.L_25878
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_2587e
.L_25870:
	.4byte	sUnk_8352C70
.L_25874:
	.4byte	0x00007fff
.L_25878:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_2587e:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25894
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_258a6
.L_25894:
	cmp	r0, #0
	ble	.L_258a0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_258a6
.L_258a0:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_258a6:
	strb	r0, [r1, #0]
	bl	func_80254E8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80258B4
func_80258B4:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_25918
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_2595c
	ldr	r1, .L_2591c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_25920
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_258ec
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_258ec:
	ldr	r0, .L_25924
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_2595c
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_25928
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_2592c
	add	r0, r4, #0
	add	r0, #38	@ 0x26
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_2595c
.L_25918:
	.4byte	gCurrentSprite
.L_2591c:
	.4byte	gUnk_3000028
.L_25920:
	.4byte	gUnk_30000A0
.L_25924:
	.4byte	gUnk_3000A50
.L_25928:
	.4byte	gUnk_3000A51
.L_2592c:
	strh	r5, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r3, [r1, #0]
	lsl	r0, r3, #24
	lsr	r2, r0, #24
	cmp	r2, #15
	bls	.L_25940
	lsr	r0, r0, #25
	b	.L_25946
.L_25940:
	cmp	r2, #7
	bls	.L_25948
	sub	r0, r3, #4
.L_25946:
	strb	r0, [r1, #0]
.L_25948:
	ldr	r1, .L_25958
	mov	r0, #63	@ 0x3f
	strb	r0, [r1, #28]
	mov	r0, #54	@ 0x36
	bl	m4aSongNumStart
	b	.L_259f8
	.align	2, 0
.L_25958:
	.4byte	gCurrentSprite
.L_2595c:
	ldr	r7, .L_259a4
	mov	r6, #1
	strb	r6, [r7, #0]
	ldr	r4, .L_259a8
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_259ac
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_259b0
	ldrb	r0, [r4, #28]
	cmp	r0, #92	@ 0x5c
	beq	.L_2599a
	cmp	r0, #100	@ 0x64
	beq	.L_2599a
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_259da
.L_2599a:
	ldr	r1, .L_259a8
	mov	r0, #71	@ 0x47
	strb	r0, [r1, #28]
	b	.L_259e4
	.align	2, 0
.L_259a4:
	.4byte	gUnk_3000028
.L_259a8:
	.4byte	gCurrentSprite
.L_259ac:
	.4byte	gUnk_3000A51
.L_259b0:
	strb	r6, [r7, #0]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_259ec
	ldrb	r0, [r4, #28]
	cmp	r0, #96	@ 0x60
	beq	.L_259da
	cmp	r0, #104	@ 0x68
	bne	.L_259e0
.L_259da:
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #28]
	b	.L_259f8
.L_259e0:
	mov	r0, #73	@ 0x49
	strb	r0, [r4, #28]
.L_259e4:
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_259f8
.L_259ec:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
.L_259f8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8025A00
func_8025A00:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25a34
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25a40
	ldr	r5, .L_25a38
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25a3c
	cmp	r1, r0
	bne	.L_25a64
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25a6a
.L_25a34:
	.4byte	gCurrentSprite
.L_25a38:
	.4byte	sUnk_8352B78
.L_25a3c:
	.4byte	0x00007fff
.L_25a40:
	ldr	r5, .L_25a5c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25a60
	cmp	r1, r0
	bne	.L_25a64
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25a6a
.L_25a5c:
	.4byte	sUnk_8352B58
.L_25a60:
	.4byte	0x00007fff
.L_25a64:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_25a6a:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25a80
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25a92
.L_25a80:
	cmp	r0, #0
	ble	.L_25a8c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25a92
.L_25a8c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25a92:
	strb	r0, [r1, #0]
	bl	func_80258B4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025AA0
func_8025AA0:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25ad4
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25ae0
	ldr	r5, .L_25ad8
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25adc
	cmp	r1, r0
	bne	.L_25b04
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25b0a
.L_25ad4:
	.4byte	gCurrentSprite
.L_25ad8:
	.4byte	sUnk_8352BD0
.L_25adc:
	.4byte	0x00007fff
.L_25ae0:
	ldr	r5, .L_25afc
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25b00
	cmp	r1, r0
	bne	.L_25b04
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25b0a
.L_25afc:
	.4byte	sUnk_8352B90
.L_25b00:
	.4byte	0x00007fff
.L_25b04:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_25b0a:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25b20
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25b32
.L_25b20:
	cmp	r0, #0
	ble	.L_25b2c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25b32
.L_25b2c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25b32:
	strb	r0, [r1, #0]
	bl	func_80258B4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025B40
func_8025B40:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25b74
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25b80
	ldr	r5, .L_25b78
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25b7c
	cmp	r1, r0
	bne	.L_25ba4
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25baa
.L_25b74:
	.4byte	gCurrentSprite
.L_25b78:
	.4byte	sUnk_8352C3C
.L_25b7c:
	.4byte	0x00007fff
.L_25b80:
	ldr	r5, .L_25b9c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25ba0
	cmp	r1, r0
	bne	.L_25ba4
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25baa
.L_25b9c:
	.4byte	sUnk_8352BFC
.L_25ba0:
	.4byte	0x00007fff
.L_25ba4:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_25baa:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25bc0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25bd2
.L_25bc0:
	cmp	r0, #0
	ble	.L_25bcc
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25bd2
.L_25bcc:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25bd2:
	strb	r0, [r1, #0]
	bl	func_80258B4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025BE0
func_8025BE0:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_25c14
	mov	r1, #42	@ 0x2a
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldrh	r2, [r0, #0]
	mov	r1, #32
	and	r1, r2
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_25c20
	ldr	r5, .L_25c18
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25c1c
	cmp	r1, r0
	bne	.L_25c44
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25c4a
.L_25c14:
	.4byte	gCurrentSprite
.L_25c18:
	.4byte	sUnk_8352CB0
.L_25c1c:
	.4byte	0x00007fff
.L_25c20:
	ldr	r5, .L_25c3c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_25c40
	cmp	r1, r0
	bne	.L_25c44
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r2, [r0, #0]
	b	.L_25c4a
.L_25c3c:
	.4byte	sUnk_8352C70
.L_25c40:
	.4byte	0x00007fff
.L_25c44:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_25c4a:
	ldrh	r0, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bne	.L_25c60
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	b	.L_25c72
.L_25c60:
	cmp	r0, #0
	ble	.L_25c6c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #2
	b	.L_25c72
.L_25c6c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
.L_25c72:
	strb	r0, [r1, #0]
	bl	func_80258B4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8025C80
func_8025C80:
	push	{r4, r5, lr}
	ldr	r4, .L_25cd0
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25cd4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_25d28
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_25cd8
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_25d20
	cmp	r1, #0
	bne	.L_25cdc
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	bne	.L_25cdc
	mov	r0, #69	@ 0x45
	b	.L_25d2a
.L_25cd0:
	.4byte	gCurrentSprite
.L_25cd4:
	.4byte	gUnk_3000A51
.L_25cd8:
	.4byte	gUnk_3000A50
.L_25cdc:
	ldr	r4, .L_25d18
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25d1c
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25d2c
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25d2c
	mov	r0, #73	@ 0x49
	b	.L_25d2a
.L_25d18:
	.4byte	gCurrentSprite
.L_25d1c:
	.4byte	gUnk_3000A51
.L_25d20:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #0
	beq	.L_25d2c
.L_25d28:
	mov	r0, #49	@ 0x31
.L_25d2a:
	strb	r0, [r4, #28]
.L_25d2c:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8025D34
func_8025D34:
	push	{r4, r5, lr}
	ldr	r4, .L_25d84
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25d88
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_25ddc
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_25d8c
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_25dd4
	cmp	r1, #0
	bne	.L_25d90
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	bne	.L_25d90
	mov	r0, #67	@ 0x43
	b	.L_25dde
.L_25d84:
	.4byte	gCurrentSprite
.L_25d88:
	.4byte	gUnk_3000A51
.L_25d8c:
	.4byte	gUnk_3000A50
.L_25d90:
	ldr	r4, .L_25dcc
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25dd0
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25de0
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25de0
	mov	r0, #71	@ 0x47
	b	.L_25dde
.L_25dcc:
	.4byte	gCurrentSprite
.L_25dd0:
	.4byte	gUnk_3000A51
.L_25dd4:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #1
	beq	.L_25de0
.L_25ddc:
	mov	r0, #49	@ 0x31
.L_25dde:
	strb	r0, [r4, #28]
.L_25de0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8025DE8
func_8025DE8:
	push	{r4, r5, lr}
	ldr	r4, .L_25e14
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25e18
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_25e1c
	mov	r0, #49	@ 0x31
	b	.L_25e86
	.align	2, 0
.L_25e14:
	.4byte	gCurrentSprite
.L_25e18:
	.4byte	gUnk_3000A51
.L_25e1c:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_25e48
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_25e88
	cmp	r1, #0
	bne	.L_25e4c
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	bne	.L_25e4c
	mov	r0, #69	@ 0x45
	b	.L_25e86
	.align	2, 0
.L_25e48:
	.4byte	gUnk_3000A50
.L_25e4c:
	ldr	r4, .L_25e90
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25e94
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25e88
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25e88
	mov	r0, #73	@ 0x49
.L_25e86:
	strb	r0, [r4, #28]
.L_25e88:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_25e90:
	.4byte	gCurrentSprite
.L_25e94:
	.4byte	gUnk_3000A51


thumb_func_start func_8025E98
func_8025E98:
	push	{r4, r5, lr}
	ldr	r4, .L_25ec4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_25ec8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_25ecc
	mov	r0, #49	@ 0x31
	b	.L_25f36
	.align	2, 0
.L_25ec4:
	.4byte	gCurrentSprite
.L_25ec8:
	.4byte	gUnk_3000A51
.L_25ecc:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_25ef8
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_25f38
	cmp	r1, #0
	bne	.L_25efc
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	bne	.L_25efc
	mov	r0, #67	@ 0x43
	b	.L_25f36
	.align	2, 0
.L_25ef8:
	.4byte	gUnk_3000A50
.L_25efc:
	ldr	r4, .L_25f40
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_25f44
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25f38
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_25f38
	mov	r0, #71	@ 0x47
.L_25f36:
	strb	r0, [r4, #28]
.L_25f38:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_25f40:
	.4byte	gCurrentSprite
.L_25f44:
	.4byte	gUnk_3000A51


thumb_func_start func_8025F48
func_8025F48:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_25fa4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_25fa8
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_25fb8
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bls	.L_25f80
	sub	r0, #1
	strb	r0, [r5, #0]
.L_25f80:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_25fac
	mov	r0, #0
	strb	r0, [r5, #0]
	mov	r0, #47	@ 0x2f
	b	.L_25fae
	.align	2, 0
.L_25fa4:
	.4byte	gCurrentSprite
.L_25fa8:
	.4byte	gUnk_3000A51
.L_25fac:
	mov	r0, #45	@ 0x2d
.L_25fae:
	strb	r0, [r4, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_26084
.L_25fb8:
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r1, [r5, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_25fe4
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_26062
	cmp	r1, #0
	bne	.L_25fe8
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	bne	.L_25fe8
	mov	r0, #67	@ 0x43
	b	.L_26082
	.align	2, 0
.L_25fe4:
	.4byte	gUnk_3000A50
.L_25fe8:
	ldr	r4, .L_26024
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_26028
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_2602c
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_2602c
	mov	r0, #71	@ 0x47
	b	.L_26082
.L_26024:
	.4byte	gCurrentSprite
.L_26028:
	.4byte	gUnk_3000A51
.L_2602c:
	ldr	r2, .L_26044
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_26048
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #1
	b	.L_26050
	.align	2, 0
.L_26044:
	.4byte	gCurrentSprite
.L_26048:
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #3
.L_26050:
	and	r0, r1
	cmp	r0, #0
	bne	.L_26084
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_26084
.L_26062:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #1
	bne	.L_26074
	ldrb	r0, [r4, #28]
	cmp	r0, #44	@ 0x2c
	beq	.L_26084
	mov	r0, #71	@ 0x47
	b	.L_26082
.L_26074:
	ldrb	r0, [r5, #0]
	cmp	r0, #4
	bls	.L_26080
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_26084
.L_26080:
	mov	r0, #69	@ 0x45
.L_26082:
	strb	r0, [r4, #28]
.L_26084:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802608C
func_802608C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_260e8
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r6, .L_260ec
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_260fc
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bls	.L_260c4
	sub	r0, #1
	strb	r0, [r5, #0]
.L_260c4:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r6, #0]
	cmp	r0, #17
	bne	.L_260f0
	mov	r0, #0
	strb	r0, [r5, #0]
	mov	r0, #47	@ 0x2f
	b	.L_260f2
	.align	2, 0
.L_260e8:
	.4byte	gCurrentSprite
.L_260ec:
	.4byte	gUnk_3000A51
.L_260f0:
	mov	r0, #43	@ 0x2b
.L_260f2:
	strb	r0, [r4, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_261c8
.L_260fc:
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r5, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	bl	func_8023B88
	ldr	r0, .L_26128
	ldrb	r1, [r0, #0]
	mov	r0, #14
	and	r0, r1
	cmp	r0, #0
	bne	.L_261a6
	cmp	r1, #0
	bne	.L_2612c
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	bne	.L_2612c
	mov	r0, #69	@ 0x45
	b	.L_261c6
	.align	2, 0
.L_26128:
	.4byte	gUnk_3000A50
.L_2612c:
	ldr	r4, .L_26168
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_2616c
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_26170
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_26170
	mov	r0, #73	@ 0x49
	b	.L_261c6
.L_26168:
	.4byte	gCurrentSprite
.L_2616c:
	.4byte	gUnk_3000A51
.L_26170:
	ldr	r2, .L_26188
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_2618c
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #1
	b	.L_26194
	.align	2, 0
.L_26188:
	.4byte	gCurrentSprite
.L_2618c:
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #3
.L_26194:
	and	r0, r1
	cmp	r0, #0
	bne	.L_261c8
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_261c8
.L_261a6:
	mov	r0, #241	@ 0xf1
	and	r0, r1
	cmp	r0, #0
	bne	.L_261b8
	ldrb	r0, [r4, #28]
	cmp	r0, #46	@ 0x2e
	beq	.L_261c8
	mov	r0, #73	@ 0x49
	b	.L_261c6
.L_261b8:
	ldrb	r0, [r5, #0]
	cmp	r0, #4
	bls	.L_261c4
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_261c8
.L_261c4:
	mov	r0, #67	@ 0x43
.L_261c6:
	strb	r0, [r4, #28]
.L_261c8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80261D0
func_80261D0:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_261f8
	ldrb	r4, [r0, #24]
	mov	r3, #0
	ldr	r2, .L_261fc
.L_261de:
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	bne	.L_26200
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26200
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26200
	add	r0, r3, #0
	b	.L_2620a
.L_261f8:
	.4byte	gCurrentSprite
.L_261fc:
	.4byte	gSpriteData
.L_26200:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_261de
	mov	r0, #24
.L_2620a:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8026210
func_8026210:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	add	r6, r1, #0
	mov	r5, #0
	ldr	r3, .L_2622c
	add	r2, r3, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_26230
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #0
	b	.L_2626a
.L_2622c:
	.4byte	gCurrentSprite
.L_26230:
	ldr	r0, .L_26244
	ldrh	r2, [r0, #20]
	ldrh	r1, [r0, #18]
	ldrh	r0, [r3, #8]
	ldrh	r3, [r3, #10]
	cmp	r0, r2
	bls	.L_26248
	sub	r0, r0, r2
	b	.L_2624a
	.align	2, 0
.L_26244:
	.4byte	gWarioData
.L_26248:
	sub	r0, r2, r0
.L_2624a:
	cmp	r0, r4
	blt	.L_26252
	mov	r0, #0
	b	.L_2626a
.L_26252:
	cmp	r3, r1
	bls	.L_26260
	sub	r0, r3, r1
	cmp	r0, r6
	bge	.L_26268
	mov	r5, #4
	b	.L_26268
.L_26260:
	sub	r0, r1, r3
	cmp	r0, r6
	bge	.L_26268
	mov	r5, #8
.L_26268:
	add	r0, r5, #0
.L_2626a:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8026270
func_8026270:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r7, r1, #0
	mov	r6, #0
	ldr	r0, .L_2628c
	ldrh	r3, [r0, #20]
	ldrh	r4, [r0, #18]
	ldr	r0, .L_26290
	ldrh	r2, [r0, #8]
	ldrh	r1, [r0, #10]
	cmp	r2, r3
	bls	.L_26294
	sub	r0, r2, r3
	b	.L_26296
.L_2628c:
	.4byte	gWarioData
.L_26290:
	.4byte	gCurrentSprite
.L_26294:
	sub	r0, r3, r2
.L_26296:
	cmp	r0, r5
	blt	.L_2629e
	mov	r0, #0
	b	.L_262b6
.L_2629e:
	cmp	r1, r4
	bls	.L_262ac
	sub	r0, r1, r4
	cmp	r0, r7
	bge	.L_262b4
	mov	r6, #4
	b	.L_262b4
.L_262ac:
	sub	r0, r4, r1
	cmp	r0, r7
	bge	.L_262b4
	mov	r6, #8
.L_262b4:
	add	r0, r6, #0
.L_262b6:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_80262BC
func_80262BC:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	add	r4, r1, #0
	mov	r5, #0
	ldr	r0, .L_262d8
	ldrh	r1, [r0, #20]
	ldrh	r2, [r0, #18]
	ldr	r0, .L_262dc
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	cmp	r0, r2
	bls	.L_262e0
	sub	r0, r0, r2
	b	.L_262e2
.L_262d8:
	.4byte	gWarioData
.L_262dc:
	.4byte	gCurrentSprite
.L_262e0:
	sub	r0, r2, r0
.L_262e2:
	cmp	r0, r4
	blt	.L_262ea
	mov	r0, #0
	b	.L_26302
.L_262ea:
	cmp	r3, r1
	bls	.L_262f8
	sub	r0, r3, r1
	cmp	r0, r6
	bge	.L_26300
	mov	r5, #1
	b	.L_26300
.L_262f8:
	sub	r0, r1, r3
	cmp	r0, r6
	bge	.L_26300
	mov	r5, #2
.L_26300:
	add	r0, r5, #0
.L_26302:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start SpriteUtil_TurnTowardWario
SpriteUtil_TurnTowardWario:
	ldr	r2, .L_2631c
	ldr	r1, .L_26320
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_26328
	ldrh	r1, [r2, #0]
	ldr	r0, .L_26324
	and	r0, r1
	b	.L_2632e
.L_2631c:
	.4byte	gCurrentSprite
.L_26320:
	.4byte	gWarioData
.L_26324:
	.4byte	0x0000ffbf
.L_26328:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
.L_2632e:
	strh	r0, [r2, #0]
	bx	lr


thumb_func_start func_8026334
func_8026334:
	ldr	r2, .L_26348
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2634c
	ldrh	r0, [r2, #10]
	add	r0, #1
	b	.L_26350
	.align	2, 0
.L_26348:
	.4byte	gCurrentSprite
.L_2634c:
	ldrh	r0, [r2, #10]
	sub	r0, #1
.L_26350:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8026354
func_8026354:
	ldr	r2, .L_26368
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2636c
	ldrh	r0, [r2, #10]
	add	r0, #2
	b	.L_26370
	.align	2, 0
.L_26368:
	.4byte	gCurrentSprite
.L_2636c:
	ldrh	r0, [r2, #10]
	sub	r0, #2
.L_26370:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8026374
func_8026374:
	ldr	r0, .L_2639c
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	blt	.L_26388
	mov	r3, #2
	cmp	r0, #3
	ble	.L_2638a
	mov	r3, #1
	cmp	r0, #5
	ble	.L_2638a
.L_26388:
	mov	r3, #3
.L_2638a:
	ldr	r2, .L_263a0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_263a4
	ldrh	r0, [r2, #10]
	add	r0, r3, r0
	b	.L_263a8
.L_2639c:
	.4byte	gUnk_3000A50
.L_263a0:
	.4byte	gCurrentSprite
.L_263a4:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_263a8:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_80263AC
func_80263AC:
	ldr	r0, .L_263d0
	ldrb	r0, [r0, #0]
	mov	r3, #2
	cmp	r0, #5
	bgt	.L_263bc
	cmp	r0, #4
	blt	.L_263bc
	mov	r3, #1
.L_263bc:
	ldr	r2, .L_263d4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_263d8
	ldrh	r0, [r2, #10]
	add	r0, r3, r0
	b	.L_263dc
	.align	2, 0
.L_263d0:
	.4byte	gUnk_3000A50
.L_263d4:
	.4byte	gCurrentSprite
.L_263d8:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_263dc:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_80263E0
func_80263E0:
	ldr	r0, .L_26408
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	blt	.L_263f4
	mov	r3, #3
	cmp	r0, #3
	ble	.L_263f6
	mov	r3, #2
	cmp	r0, #5
	ble	.L_263f6
.L_263f4:
	mov	r3, #4
.L_263f6:
	ldr	r2, .L_2640c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_26410
	ldrh	r0, [r2, #10]
	add	r0, r3, r0
	b	.L_26414
.L_26408:
	.4byte	gUnk_3000A50
.L_2640c:
	.4byte	gCurrentSprite
.L_26410:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_26414:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8026418
func_8026418:
	ldr	r0, .L_26440
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	blt	.L_2642c
	mov	r3, #7
	cmp	r0, #3
	ble	.L_2642e
	mov	r3, #6
	cmp	r0, #5
	ble	.L_2642e
.L_2642c:
	mov	r3, #8
.L_2642e:
	ldr	r2, .L_26444
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_26448
	ldrh	r0, [r2, #10]
	add	r0, r3, r0
	b	.L_2644c
.L_26440:
	.4byte	gUnk_3000A50
.L_26444:
	.4byte	gCurrentSprite
.L_26448:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_2644c:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8026450
func_8026450:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_26494
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_26498
	lsl	r0, r2, #2
	add	r0, r0, r3
	ldrh	r5, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2649c
	cmp	r1, r0
	bne	.L_26472
	mov	r2, #0
	ldrh	r5, [r3, #0]
.L_26472:
	lsl	r0, r2, #2
	add	r1, r3, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r2, #1
	mov	r2, ip
	strb	r0, [r2, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26494:
	.4byte	gCurrentSprite
.L_26498:
	.4byte	sUnk_83B35F8
.L_2649c:
	.4byte	0x00007fff


thumb_func_start func_80264A0
func_80264A0:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_264fc
	mov	r0, #42	@ 0x2a
	add	r0, r0, r5
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_26500
	lsl	r0, r2, #2
	add	r0, r0, r3
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_26504
	cmp	r1, r0
	bne	.L_264c2
	mov	r2, #0
	ldrh	r4, [r3, #0]
.L_264c2:
	lsl	r0, r2, #2
	add	r1, r3, #2
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r4
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, r0, r3
	strh	r0, [r5, #10]
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_264f6
	ldr	r0, .L_26508
	ldrh	r1, [r0, #20]
	add	r1, r1, r4
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	add	r1, r1, r3
	strh	r1, [r0, #18]
.L_264f6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_264fc:
	.4byte	gCurrentSprite
.L_26500:
	.4byte	sUnk_83B35F8
.L_26504:
	.4byte	0x00007fff
.L_26508:
	.4byte	gWarioData


thumb_func_start func_802650C
func_802650C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_26550
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_26554
	lsl	r0, r2, #2
	add	r0, r0, r3
	ldrh	r5, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_26558
	cmp	r1, r0
	bne	.L_2652e
	mov	r2, #0
	ldrh	r5, [r3, #0]
.L_2652e:
	lsl	r0, r2, #2
	add	r1, r3, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r2, #1
	mov	r2, ip
	strb	r0, [r2, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26550:
	.4byte	gCurrentSprite
.L_26554:
	.4byte	sUnk_83B37FC
.L_26558:
	.4byte	0x00007fff


thumb_func_start func_802655C
func_802655C:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_265b8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r5
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_265bc
	lsl	r0, r2, #2
	add	r0, r0, r3
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_265c0
	cmp	r1, r0
	bne	.L_2657e
	mov	r2, #0
	ldrh	r4, [r3, #0]
.L_2657e:
	lsl	r0, r2, #2
	add	r1, r3, #2
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r4
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, r0, r3
	strh	r0, [r5, #10]
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_265b2
	ldr	r0, .L_265c4
	ldrh	r1, [r0, #20]
	add	r1, r1, r4
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	add	r1, r1, r3
	strh	r1, [r0, #18]
.L_265b2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_265b8:
	.4byte	gCurrentSprite
.L_265bc:
	.4byte	sUnk_83B37FC
.L_265c0:
	.4byte	0x00007fff
.L_265c4:
	.4byte	gWarioData


thumb_func_start func_80265C8
func_80265C8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #40	@ 0x28
	str	r0, [sp, #16]
	ldr	r2, .L_266c0
	mov	r0, #44	@ 0x2c
	ldr	r1, [sp, #16]
	mul	r0, r1
	add	r3, r0, r2
	ldrh	r1, [r3, #8]
	ldrh	r7, [r3, #10]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #20]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r1, [sp, #24]
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #28]
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #32]
	mov	r5, #0
	mov	r0, #106	@ 0x6a
	mov	sl, r0
	mov	r1, #105	@ 0x69
	mov	r9, r1
	mov	r8, r3
	str	r2, [sp, #36]	@ 0x24
.L_2662a:
	ldr	r2, [sp, #16]
	cmp	r5, r2
	bne	.L_26632
	b	.L_267a0
.L_26632:
	mov	r1, #44	@ 0x2c
	add	r0, r5, #0
	mul	r0, r1
	ldr	r2, .L_266c0
	add	r4, r0, r2
	ldrh	r0, [r4, #0]
	ldr	r1, .L_266c4
	and	r0, r1
	cmp	r0, #3
	beq	.L_26648
	b	.L_267a0
.L_26648:
	ldrh	r3, [r4, #8]
	ldrh	r6, [r4, #10]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r2, [r0, #0]
	sub	r2, r3, r2
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r3, r3, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, r4, #0
	add	r0, #37	@ 0x25
	ldrb	r1, [r0, #0]
	sub	r1, r6, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r0, r6, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r2, [sp, #0]
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #32]
	bl	func_801F5D8
	cmp	r0, #0
	bne	.L_26692
	b	.L_267a0
.L_26692:
	ldr	r2, [sp, #16]
	mov	r1, #44	@ 0x2c
	add	r0, r2, #0
	mul	r0, r1
	ldr	r2, .L_266c0
	add	r5, r0, r2
	ldrb	r0, [r5, #28]
	cmp	r0, #86	@ 0x56
	beq	.L_266a8
	cmp	r0, #88	@ 0x58
	bne	.L_266d4
.L_266a8:
	bl	func_801E4B0
	ldr	r0, .L_266c8
	mov	r1, #0
	strb	r1, [r0, #0]
	cmp	r7, r6
	bls	.L_266cc
	mov	r2, #51	@ 0x33
	strb	r2, [r5, #28]
	mov	r0, #53	@ 0x35
	b	.L_2675c
	.align	2, 0
.L_266c0:
	.4byte	gSpriteData
.L_266c4:
	.4byte	0x00000607
.L_266c8:
	.4byte	gCurrentCarriedSprite
.L_266cc:
	mov	r0, #53	@ 0x35
	strb	r0, [r5, #28]
	mov	r0, #51	@ 0x33
	b	.L_2675c
.L_266d4:
	ldrb	r0, [r4, #28]
	sub	r0, #81	@ 0x51
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #7
	bhi	.L_266ea
	bl	func_801E4B0
	ldr	r0, .L_2670c
	mov	r1, #0
	strb	r1, [r0, #0]
.L_266ea:
	ldrh	r1, [r5, #0]
	mov	r2, #32
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26728
	ldrh	r1, [r4, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26716
	cmp	r7, r6
	bls	.L_26710
	mov	r2, sl
	strb	r2, [r5, #28]
	mov	r0, r9
	b	.L_2675c
.L_2670c:
	.4byte	gCurrentCarriedSprite
.L_26710:
	mov	r1, r9
	strb	r1, [r5, #28]
	b	.L_26722
.L_26716:
	cmp	r7, r6
	bls	.L_2671e
	mov	r0, #51	@ 0x33
	b	.L_2674e
.L_2671e:
	mov	r0, #53	@ 0x35
	strb	r0, [r5, #28]
.L_26722:
	mov	r2, sl
	strb	r2, [r4, #28]
	b	.L_2675e
.L_26728:
	ldrh	r1, [r4, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26748
	cmp	r7, r6
	bls	.L_2673e
	mov	r0, sl
	strb	r0, [r5, #28]
	mov	r0, #53	@ 0x35
	b	.L_2675c
.L_2673e:
	mov	r1, r9
	strb	r1, [r5, #28]
	mov	r2, #51	@ 0x33
	strb	r2, [r4, #28]
	b	.L_2675e
.L_26748:
	cmp	r7, r6
	bls	.L_26756
	mov	r0, sl
.L_2674e:
	strb	r0, [r5, #28]
	mov	r1, r9
	strb	r1, [r4, #28]
	b	.L_2675e
.L_26756:
	mov	r2, r9
	strb	r2, [r5, #28]
	mov	r0, sl
.L_2675c:
	strb	r0, [r4, #28]
.L_2675e:
	ldr	r1, [sp, #36]	@ 0x24
	ldrh	r0, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	ldr	r2, [sp, #36]	@ 0x24
	strh	r0, [r2, #0]
	mov	r2, r8
	ldrh	r0, [r2, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, [sp, #36]	@ 0x24
	ldrh	r2, [r0, #0]
	ldr	r1, .L_2679c
	add	r0, r1, #0
	and	r0, r2
	ldr	r2, [sp, #36]	@ 0x24
	strh	r0, [r2, #0]
	mov	r2, r8
	ldrh	r0, [r2, #0]
	and	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #15
	ldr	r1, [sp, #36]	@ 0x24
	strb	r0, [r1, #31]
	strb	r0, [r2, #31]
	mov	r0, #59	@ 0x3b
	bl	m4aSongNumStart
	b	.L_267ae
.L_2679c:
	.4byte	0x0000feff
.L_267a0:
	ldr	r2, [sp, #36]	@ 0x24
	add	r2, #44	@ 0x2c
	str	r2, [sp, #36]	@ 0x24
	add	r5, #1
	cmp	r5, #23
	bgt	.L_267ae
	b	.L_2662a
.L_267ae:
	add	sp, #40	@ 0x28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_80267C0
func_80267C0:
	push	{r4, r5, lr}
	mov	r3, #0
	ldr	r5, .L_26830
	mov	r4, #0
	ldr	r1, .L_26834
	ldrh	r0, [r1, #0]
	and	r0, r5
	cmp	r0, r5
	beq	.L_267ec
.L_267d2:
	add	r4, #1
	cmp	r4, #23
	bgt	.L_267e8
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	and	r0, r5
	cmp	r0, r5
	bne	.L_267d2
	add	r3, #1
.L_267e8:
	cmp	r3, #0
	beq	.L_2682a
.L_267ec:
	add	r0, r4, #0
	bl	func_80265C8
	mov	r3, #0
	mov	r2, #0
	ldr	r0, .L_26834
	ldrh	r0, [r0, #0]
	and	r0, r5
	cmp	r0, r5
	bne	.L_26804
	cmp	r2, r4
	bne	.L_26824
.L_26804:
	add	r2, #1
	cmp	r2, #23
	bgt	.L_26820
	ldr	r1, .L_26834
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	and	r0, r5
	cmp	r0, r5
	bne	.L_26804
	cmp	r2, r4
	beq	.L_26804
	add	r3, #1
.L_26820:
	cmp	r3, #0
	beq	.L_2682a
.L_26824:
	add	r0, r2, #0
	bl	func_80265C8
.L_2682a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_26830:
	.4byte	0x00000101
.L_26834:
	.4byte	gSpriteData


thumb_func_start func_8026838
func_8026838:
	push	{r4, lr}
	ldr	r3, .L_26874
	ldrh	r1, [r3, #0]
	mov	r4, #1
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_268ca
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L_26880
	ldr	r1, .L_26878
	ldrb	r0, [r1, #26]
	cmp	r0, #1
	beq	.L_268c0
	strb	r4, [r1, #26]
	ldr	r0, .L_2687c
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #253	@ 0xfd
	bl	_call_via_r1
	b	.L_268c0
	.align	2, 0
.L_26874:
	.4byte	gCurrentSprite
.L_26878:
	.4byte	gWarioData
.L_2687c:
	.4byte	sUnk_82DECA0
.L_26880:
	add	r2, r3, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_268b4
	cmp	r0, #2
	bne	.L_268c0
	strb	r4, [r2, #0]
	ldr	r0, .L_268ac
	ldr	r2, .L_268b0
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #20]
	cmp	r0, r1
	bhi	.L_268c0
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r3, #8]
	sub	r0, r0, r1
	add	r0, #1
	strh	r0, [r2, #20]
	b	.L_268c0
.L_268ac:
	.4byte	gUnk_30019F4
.L_268b0:
	.4byte	gWarioData
.L_268b4:
	strb	r1, [r2, #0]
	ldr	r2, .L_268d0
	ldrb	r0, [r2, #26]
	cmp	r0, #1
	bne	.L_268c0
	strb	r1, [r2, #26]
.L_268c0:
	ldr	r2, .L_268d4
	ldrh	r1, [r2, #0]
	ldr	r0, .L_268d8
	and	r0, r1
	strh	r0, [r2, #0]
.L_268ca:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_268d0:
	.4byte	gWarioData
.L_268d4:
	.4byte	gCurrentSprite
.L_268d8:
	.4byte	0x0000efff


thumb_func_start SpriteUtil_DespawnChildWithParent
SpriteUtil_DespawnChildWithParent:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r0, .L_2690c
	ldrb	r3, [r0, #24]
	add	r6, r0, #0
	ldr	r2, .L_26910
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r5, r2, r0
.L_268f0:
	ldrb	r0, [r2, #24]
	cmp	r0, r3
	bne	.L_26914
	ldrb	r0, [r2, #23]
	cmp	r0, r4
	bne	.L_26914
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26914
	mov	r0, #0
	b	.L_26920
	.align	2, 0
.L_2690c:
	.4byte	gCurrentSprite
.L_26910:
	.4byte	gSpriteData
.L_26914:
	add	r2, #44	@ 0x2c
	cmp	r2, r5
	ble	.L_268f0
	mov	r0, #0
	strh	r0, [r6, #0]
	mov	r0, #1
.L_26920:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8026928
func_8026928:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_26950
	ldrb	r4, [r0, #24]
	mov	r3, #0
	ldr	r2, .L_26954
.L_26936:
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	bne	.L_26958
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26958
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26958
	add	r0, r3, #0
	b	.L_26962
.L_26950:
	.4byte	gCurrentSprite
.L_26954:
	.4byte	gSpriteData
.L_26958:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26936
	mov	r0, #255	@ 0xff
.L_26962:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8026968
func_8026968:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r0, .L_2699c
	ldrb	r3, [r0, #24]
	mov	r2, #0
	ldr	r5, .L_269a0
	add	r6, r0, #0
.L_26978:
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r5
	ldrb	r0, [r1, #23]
	cmp	r0, r4
	bne	.L_269a4
	ldrb	r0, [r1, #24]
	cmp	r0, r3
	beq	.L_269a4
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_269a4
	mov	r0, #0
	strh	r0, [r6, #0]
	mov	r0, #1
	b	.L_269ac
.L_2699c:
	.4byte	gCurrentSprite
.L_269a0:
	.4byte	gSpriteData
.L_269a4:
	add	r2, #1
	cmp	r2, #23
	ble	.L_26978
	mov	r0, #0
.L_269ac:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_80269B4
func_80269B4:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	mov	r3, #0
	mov	r6, #1
	ldr	r2, .L_269e8
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r5, r2, r0
.L_269c6:
	ldrb	r0, [r2, #23]
	cmp	r0, r4
	bne	.L_269d8
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_269d8
	add	r3, #1
.L_269d8:
	add	r2, #44	@ 0x2c
	cmp	r2, r5
	ble	.L_269c6
	add	r0, r3, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_269e8:
	.4byte	gSpriteData


thumb_func_start func_80269EC
func_80269EC:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, .L_26a4c
	ldrh	r1, [r0, #8]
	mov	r9, r1
	ldrh	r4, [r0, #10]
	ldr	r0, .L_26a50
	mov	r8, r0
	mov	r6, #3
	strb	r6, [r0, #0]
	mov	r0, r9
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r1, r8
	strb	r6, [r1, #0]
	mov	r5, r9
	sub	r5, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r8
	strb	r6, [r0, #0]
	sub	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r1, r8
	strb	r6, [r1, #0]
	mov	r0, r9
	add	r1, r4, #0
	bl	func_806D5C0
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26a4c:
	.4byte	gCurrentSprite
.L_26a50:
	.4byte	gUnk_3000028


thumb_func_start func_8026A54
func_8026A54:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, .L_26ab4
	ldrh	r1, [r0, #8]
	mov	r9, r1
	ldrh	r4, [r0, #10]
	ldr	r0, .L_26ab8
	mov	r8, r0
	mov	r6, #2
	strb	r6, [r0, #0]
	mov	r0, r9
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r1, r8
	strb	r6, [r1, #0]
	mov	r5, r9
	sub	r5, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r8
	strb	r6, [r0, #0]
	sub	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r1, r8
	strb	r6, [r1, #0]
	mov	r0, r9
	add	r1, r4, #0
	bl	func_806D5C0
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26ab4:
	.4byte	gCurrentSprite
.L_26ab8:
	.4byte	gUnk_3000028


thumb_func_start func_8026ABC
func_8026ABC:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	mov	r2, #0
	ldr	r0, .L_26ad4
	ldrb	r1, [r0, #23]
	add	r4, r0, #0
	ldr	r5, .L_26ad8
	cmp	r1, r3
	bne	.L_26adc
	ldrh	r1, [r4, #0]
	b	.L_26af0
.L_26ad4:
	.4byte	gSpriteData
.L_26ad8:
	.4byte	gCurrentSprite
.L_26adc:
	add	r2, #1
	cmp	r2, #23
	bgt	.L_26af8
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r4
	ldrb	r0, [r1, #23]
	cmp	r0, r3
	bne	.L_26adc
	ldrh	r1, [r1, #0]
.L_26af0:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26adc
.L_26af8:
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8026B04
func_8026B04:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	mov	r2, #0
	ldr	r0, .L_26b1c
	ldrb	r1, [r0, #23]
	add	r4, r0, #0
	cmp	r1, r3
	bne	.L_26b20
	ldrh	r1, [r4, #0]
	b	.L_26b34
	.align	2, 0
.L_26b1c:
	.4byte	gSpriteData
.L_26b20:
	add	r2, #1
	cmp	r2, #23
	bgt	.L_26b3c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r4
	ldrb	r0, [r1, #23]
	cmp	r0, r3
	bne	.L_26b20
	ldrh	r1, [r1, #0]
.L_26b34:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26b20
.L_26b3c:
	add	r0, r2, #0
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8026B44
func_8026B44:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	mov	r3, #0
	mov	r2, #0
	ldr	r6, .L_26b70
	mov	r5, #44	@ 0x2c
.L_26b52:
	add	r0, r2, #0
	mul	r0, r5
	add	r1, r0, r6
	ldrb	r0, [r1, #23]
	cmp	r0, r4
	bne	.L_26b74
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26b74
	add	r0, r3, #1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	b	.L_26b7e
.L_26b70:
	.4byte	gSpriteData
.L_26b74:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #23
	bls	.L_26b52
.L_26b7e:
	cmp	r3, #0
	bne	.L_26b84
	mov	r2, #255	@ 0xff
.L_26b84:
	add	r0, r2, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8026B8C
func_8026B8C:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r3, #0
	ldr	r7, .L_26bc8
	ldrb	r4, [r7, #23]
	mov	r6, #1
	ldr	r2, .L_26bcc
.L_26b9c:
	ldrb	r0, [r2, #23]
	cmp	r0, r4
	bne	.L_26bb2
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26bb2
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	beq	.L_26bba
.L_26bb2:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26b9c
.L_26bba:
	add	r0, r7, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26bc8:
	.4byte	gCurrentSprite
.L_26bcc:
	.4byte	gSpriteData


thumb_func_start func_8026BD0
func_8026BD0:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	lsl	r1, r1, #24
	lsr	r4, r1, #24
	mov	r3, #0
	ldr	r7, .L_26c0c
	mov	r6, #1
	ldr	r2, .L_26c10
.L_26be2:
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26bf8
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26bf8
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	beq	.L_26c00
.L_26bf8:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26be2
.L_26c00:
	add	r0, r7, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_26c0c:
	.4byte	gCurrentSprite
.L_26c10:
	.4byte	gSpriteData


thumb_func_start func_806C14
func_8026C14:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	lsl	r1, r1, #24
	lsr	r4, r1, #24
	mov	r3, #0
	mov	r6, #1
	ldr	r2, .L_26c4c
.L_26c24:
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26c3a
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26c3a
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	beq	.L_26c42
.L_26c3a:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26c24
.L_26c42:
	add	r0, r3, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_26c4c:
	.4byte	gSpriteData


thumb_func_start func_8026C50
func_8026C50:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_26c8c
	ldrb	r4, [r0, #24]
	mov	r3, #0
	add	r7, r0, #0
	mov	r6, #1
	ldr	r2, .L_26c90
.L_26c62:
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26c78
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	bne	.L_26c78
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_26c80
.L_26c78:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26c62
.L_26c80:
	add	r0, r7, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_26c8c:
	.4byte	gCurrentSprite
.L_26c90:
	.4byte	gSpriteData


thumb_func_start func_8026C94
func_8026C94:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_26cbc
	ldrb	r4, [r0, #24]
	mov	r3, #0
	ldr	r2, .L_26cc0
.L_26ca2:
	ldrb	r0, [r2, #23]
	cmp	r0, r5
	bne	.L_26cc4
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	bne	.L_26cc4
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26cc4
	add	r0, r3, #0
	b	.L_26cce
.L_26cbc:
	.4byte	gCurrentSprite
.L_26cc0:
	.4byte	gSpriteData
.L_26cc4:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26ca2
	mov	r0, #255	@ 0xff
.L_26cce:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8026CD4
func_8026CD4:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r4, #255	@ 0xff
	mov	r3, #0
	ldr	r2, .L_26cfc
.L_26ce0:
	ldrb	r0, [r2, #23]
	cmp	r0, #14
	bne	.L_26d00
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_26d00
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_26d00
	add	r4, r3, #0
	b	.L_26d08
	.align	2, 0
.L_26cfc:
	.4byte	gSpriteData
.L_26d00:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_26ce0
.L_26d08:
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8026D10
func_8026D10:
	push	{r4, r5, lr}
	ldr	r2, .L_26d48
	ldrh	r1, [r2, #0]
	ldr	r3, .L_26d4c
	add	r0, r3, #0
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r5, #1
	add	r4, r3, #0
	ldr	r2, .L_26d50
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r3, r2, r0
.L_26d2a:
	ldrh	r1, [r2, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26d3a
	add	r0, r4, #0
	and	r0, r1
	strh	r0, [r2, #0]
.L_26d3a:
	add	r2, #44	@ 0x2c
	cmp	r2, r3
	ble	.L_26d2a
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26d48:
	.4byte	gCurrentSprite
.L_26d4c:
	.4byte	0x0000fff7
.L_26d50:
	.4byte	gSpriteData


thumb_func_start func_8026D54
func_8026D54:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_26d88
	ldrb	r1, [r2, #26]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #26]
	mov	r5, #1
	ldr	r2, .L_26d8c
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r4, r2, r0
	mov	r3, #128	@ 0x80
.L_26d6c:
	ldrh	r1, [r2, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26d7c
	ldrb	r0, [r2, #26]
	orr	r0, r3
	strb	r0, [r2, #26]
.L_26d7c:
	add	r2, #44	@ 0x2c
	cmp	r2, r4
	ble	.L_26d6c
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_26d88:
	.4byte	gCurrentSprite
.L_26d8c:
	.4byte	gSpriteData


thumb_func_start func_8026D90
func_8026D90:
	push	{r4, r5, lr}
	ldr	r2, .L_26dc8
	ldrb	r1, [r2, #26]
	mov	r0, #127	@ 0x7f
	and	r0, r1
	strb	r0, [r2, #26]
	mov	r5, #1
	ldr	r2, .L_26dcc
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r4, r2, r0
	mov	r3, #127	@ 0x7f
.L_26da8:
	ldrh	r1, [r2, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_26dba
	ldrb	r1, [r2, #26]
	add	r0, r3, #0
	and	r0, r1
	strb	r0, [r2, #26]
.L_26dba:
	add	r2, #44	@ 0x2c
	cmp	r2, r4
	ble	.L_26da8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_26dc8:
	.4byte	gCurrentSprite
.L_26dcc:
	.4byte	gSpriteData


thumb_func_start func_8026DD0
func_8026DD0:
	push	{r4, lr}
	ldr	r1, .L_26e40
	ldr	r4, .L_26e44
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #2
	bl	_call_via_r1
	ldr	r1, .L_26e48
	mov	r0, #200	@ 0xc8
	strh	r0, [r1, #0]
	ldr	r1, .L_26e4c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_26e50
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_26e54
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_26e58
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #1
	mov	r0, #200	@ 0xc8
	mov	r2, #78	@ 0x4e
	bl	Sprite_SpawnSecondary
	ldrh	r0, [r4, #20]
	ldr	r1, .L_26e5c
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	ldrh	r1, [r4, #18]
	ldr	r2, .L_26e60
	ldrh	r2, [r2, #0]
	add	r2, #64	@ 0x40
	sub	r1, r1, r2
	mov	r2, #79	@ 0x4f
	bl	Sprite_SpawnSecondary
	mov	r0, #222	@ 0xde
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_26e64
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_26e68
	mov	r0, #172	@ 0xac
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_26e6e
.L_26e40:
	.4byte	sUnk_82DECA0
.L_26e44:
	.4byte	gWarioData
.L_26e48:
	.4byte	gWarioPauseTimer
.L_26e4c:
	.4byte	gUnk_3000047
.L_26e50:
	.4byte	gUnk_3000BEC
.L_26e54:
	.4byte	gUnk_3000C01
.L_26e58:
	.4byte	gUnk_3000C03
.L_26e5c:
	.4byte	gBg1YPosition
.L_26e60:
	.4byte	gBg1XPosition
.L_26e64:
	.4byte	gCurrentPassage
.L_26e68:
	ldr	r0, .L_26e74
	bl	m4aSongNumStart
.L_26e6e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_26e74:
	.4byte	0x000002af


thumb_func_start func_8026E78
func_8026E78:
	push	{lr}
	ldr	r0, .L_26e8c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bhi	.L_26f48
	lsl	r0, r0, #2
	ldr	r1, .L_26e90
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_26e8c:
	.4byte	gCurrentPassage
.L_26e90:
	.4byte	.L_26e94
.L_26e94:
	.4byte	.L_26eac
	.4byte	.L_26eb0
	.4byte	.L_26ed0
	.4byte	.L_26ef0
	.4byte	.L_26f10
	.4byte	.L_26f30
.L_26eac:
	mov	r0, #44	@ 0x2c
	b	.L_26f32
.L_26eb0:
	mov	r0, #216	@ 0xd8
	bl	func_8026ABC
	ldr	r2, .L_26ec8
	ldr	r0, .L_26ecc
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #122	@ 0x7a
	b	.L_26f46
.L_26ec8:
	.4byte	gSpriteData
.L_26ecc:
	.4byte	gCurrentSprite
.L_26ed0:
	mov	r0, #24
	bl	func_8026ABC
	ldr	r2, .L_26ee8
	ldr	r0, .L_26eec
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #122	@ 0x7a
	b	.L_26f46
.L_26ee8:
	.4byte	gSpriteData
.L_26eec:
	.4byte	gCurrentSprite
.L_26ef0:
	mov	r0, #203	@ 0xcb
	bl	func_8026ABC
	ldr	r2, .L_26f08
	ldr	r0, .L_26f0c
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #122	@ 0x7a
	b	.L_26f46
.L_26f08:
	.4byte	gSpriteData
.L_26f0c:
	.4byte	gCurrentSprite
.L_26f10:
	mov	r0, #81	@ 0x51
	bl	func_8026ABC
	ldr	r2, .L_26f28
	ldr	r0, .L_26f2c
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #122	@ 0x7a
	b	.L_26f46
.L_26f28:
	.4byte	gSpriteData
.L_26f2c:
	.4byte	gCurrentSprite
.L_26f30:
	mov	r0, #236	@ 0xec
.L_26f32:
	bl	func_8026ABC
	ldr	r2, .L_26f4c
	ldr	r0, .L_26f50
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #116	@ 0x74
.L_26f46:
	strb	r1, [r0, #28]
.L_26f48:
	pop	{r0}
	bx	r0
.L_26f4c:
	.4byte	gSpriteData
.L_26f50:
	.4byte	gCurrentSprite


thumb_func_start func_8026F54
func_8026F54:
	push	{lr}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #16
	bl	func_8070A84
	pop	{r0}
	bx	r0


thumb_func_start func_8026F64
func_8026F64:
	push	{lr}
	ldr	r1, .L_26f8c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_26fa4
	ldrb	r0, [r1, #26]
	cmp	r0, #3
	beq	.L_26fa4
	cmp	r0, #0
	bne	.L_26f94
	ldr	r0, .L_26f90
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #62	@ 0x3e
	bl	_call_via_r1
	b	.L_26fa4
	.align	2, 0
.L_26f8c:
	.4byte	gWarioData
.L_26f90:
	.4byte	sUnk_82DECA0
.L_26f94:
	ldr	r0, .L_26fa8
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #61	@ 0x3d
	bl	_call_via_r1
.L_26fa4:
	pop	{r0}
	bx	r0
.L_26fa8:
	.4byte	sUnk_82DECA0
