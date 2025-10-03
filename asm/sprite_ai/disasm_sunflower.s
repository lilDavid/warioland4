.include "macros.s.inc"


thumb_func_start func_804C910
func_804C910:
	ldr	r0, .L_4c950
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r0, #8
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #28]
	ldrh	r0, [r1, #10]
	add	r0, #64	@ 0x40
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	bx	lr
.L_4c950:
	.4byte	gCurrentSprite


thumb_func_start func_804C954
func_804C954:
	ldr	r3, .L_4c974
	ldr	r0, .L_4c978
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r2, #112	@ 0x70
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4c974:
	.4byte	gCurrentSprite
.L_4c978:
	.4byte	sUnk_83D0E94


thumb_func_start func_804C97C
func_804C97C:
	ldr	r3, .L_4c99c
	ldr	r0, .L_4c9a0
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r2, #84	@ 0x54
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #80	@ 0x50
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4c99c:
	.4byte	gCurrentSprite
.L_4c9a0:
	.4byte	sUnk_83D0EA4


thumb_func_start func_804C9A4
func_804C9A4:
	ldr	r3, .L_4c9c4
	ldr	r0, .L_4c9c8
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r2, #56	@ 0x38
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #52	@ 0x34
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4c9c4:
	.4byte	gCurrentSprite
.L_4c9c8:
	.4byte	sUnk_83D0EB4


thumb_func_start func_804C9CC
func_804C9CC:
	ldr	r3, .L_4c9ec
	ldr	r0, .L_4c9f0
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4c9ec:
	.4byte	gCurrentSprite
.L_4c9f0:
	.4byte	sUnk_83D0EC4


thumb_func_start func_804C9F4
func_804C9F4:
	ldr	r3, .L_4ca20
	ldr	r0, .L_4ca24
	str	r0, [r3, #4]
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4ca20:
	.4byte	gCurrentSprite
.L_4ca24:
	.4byte	sUnk_83D0ED4


thumb_func_start func_804CA28
func_804CA28:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_4ca50
	ldr	r4, .L_4ca54
	ldr	r5, .L_4ca58
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r4, #24]
	add	r0, r0, r1
	add	r0, r0, r6
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	cmp	r1, #16
	beq	.L_4ca86
	cmp	r1, #16
	bgt	.L_4ca5c
	cmp	r1, #0
	beq	.L_4ca66
	b	.L_4cae6
	.align	2, 0
.L_4ca50:
	.4byte	gPersistentSpriteData
.L_4ca54:
	.4byte	gCurrentSprite
.L_4ca58:
	.4byte	gCurrentRoom
.L_4ca5c:
	cmp	r1, #32
	beq	.L_4caa6
	cmp	r1, #48	@ 0x30
	beq	.L_4cac6
	b	.L_4cae6
.L_4ca66:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #50	@ 0x32
	bl	func_80767DC
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	add	r1, #16
	strb	r1, [r0, #0]
	bl	func_804C97C
	b	.L_4caf4
.L_4ca86:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #50	@ 0x32
	bl	func_80767DC
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	add	r1, #16
	strb	r1, [r0, #0]
	bl	func_804C9A4
	b	.L_4caf4
.L_4caa6:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #50	@ 0x32
	bl	func_80767DC
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	add	r1, #16
	strb	r1, [r0, #0]
	bl	func_804C9CC
	b	.L_4caf4
.L_4cac6:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #50	@ 0x32
	bl	func_80767DC
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	add	r1, #16
	strb	r1, [r0, #0]
	bl	func_804C9F4
	b	.L_4caf4
.L_4cae6:
	ldr	r2, .L_4cb08
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
.L_4caf4:
	ldr	r0, .L_4cb08
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #60	@ 0x3c
	strb	r1, [r2, #0]
	mov	r1, #16
	strb	r1, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_4cb08:
	.4byte	gCurrentSprite


thumb_func_start SpriteMoneySunflower
SpriteMoneySunflower:
	push	{lr}
	ldr	r1, .L_4cb30
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	add	r2, r1, #0
	cmp	r0, #4
	beq	.L_4cb82
	cmp	r0, #4
	bgt	.L_4cb3e
	cmp	r0, #1
	beq	.L_4cb64
	cmp	r0, #1
	bgt	.L_4cb34
	cmp	r0, #0
	beq	.L_4cb5a
	b	.L_4cb9a
	.align	2, 0
.L_4cb30:
	.4byte	gCurrentSprite
.L_4cb34:
	cmp	r0, #2
	beq	.L_4cb6e
	cmp	r0, #3
	beq	.L_4cb78
	b	.L_4cb9a
.L_4cb3e:
	cmp	r0, #53	@ 0x35
	beq	.L_4cb8c
	cmp	r0, #53	@ 0x35
	bgt	.L_4cb4c
	cmp	r0, #51	@ 0x33
	beq	.L_4cb8c
	b	.L_4cb9a
.L_4cb4c:
	cmp	r0, #106	@ 0x6a
	bgt	.L_4cb9a
	cmp	r0, #105	@ 0x69
	blt	.L_4cb9a
	bl	func_804CA28
	b	.L_4cbb6
.L_4cb5a:
	bl	func_804C954
	bl	func_804C910
	b	.L_4cbb6
.L_4cb64:
	bl	func_804C97C
	bl	func_804C910
	b	.L_4cbb6
.L_4cb6e:
	bl	func_804C9A4
	bl	func_804C910
	b	.L_4cbb6
.L_4cb78:
	bl	func_804C9CC
	bl	func_804C910
	b	.L_4cbb6
.L_4cb82:
	bl	func_804C9F4
	bl	func_804C910
	b	.L_4cbb6
.L_4cb8c:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	b	.L_4cbb6
.L_4cb9a:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_4cbb6
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4cbb6
	ldrh	r1, [r2, #0]
	ldr	r0, .L_4cbbc
	and	r0, r1
	strh	r0, [r2, #0]
.L_4cbb6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4cbbc:
	.4byte	0xFDFF
