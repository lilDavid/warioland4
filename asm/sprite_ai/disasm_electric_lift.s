.include "macros.s.inc"


thumb_func_start func_8037BF8
func_8037BF8:
	push	{r4, r5, lr}
	ldr	r0, .L_37c5c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r5, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	mov	r0, #29
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #36	@ 0x24
	strb	r3, [r0, #0]
	add	r1, #36	@ 0x24
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r3, [r0, #0]
	ldr	r0, .L_37c60
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r4, [r1, #22]
	strh	r5, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_37c5c:
	.4byte	gCurrentSprite
.L_37c60:
	.4byte	sUnk_83BDD54


thumb_func_start func_8037C64
func_8037C64:
	ldr	r2, .L_37c8c
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_37c88
	ldr	r0, .L_37c90
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #81	@ 0x51
	strb	r0, [r1, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
.L_37c88:
	bx	lr
	.align	2, 0
.L_37c8c:
	.4byte	gCurrentSprite
.L_37c90:
	.4byte	sUnk_83BDEA4


thumb_func_start func_8037C94
func_8037C94:
	push	{r4, r5, lr}
	ldr	r4, .L_37cd4
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #37	@ 0x25
	bne	.L_37cb0
	mov	r0, #244	@ 0xf4
	bl	m4aSongNumStart
.L_37cb0:
	ldrb	r1, [r5, #0]
	cmp	r1, #9
	bhi	.L_37cce
	mov	r0, #1
	strb	r0, [r4, #31]
	cmp	r1, #0
	bne	.L_37cce
	ldr	r0, .L_37cd8
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #60	@ 0x3c
	strb	r0, [r5, #0]
	mov	r0, #20
	strb	r0, [r4, #28]
.L_37cce:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_37cd4:
	.4byte	gCurrentSprite
.L_37cd8:
	.4byte	sUnk_83BDD64


thumb_func_start func_8037CDC
func_8037CDC:
	ldr	r2, .L_37d08
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_37d04
	ldr	r0, .L_37d0c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #70	@ 0x46
	strb	r0, [r3, #0]
	mov	r0, #22
	strb	r0, [r2, #28]
.L_37d04:
	bx	lr
	.align	2, 0
.L_37d08:
	.4byte	gCurrentSprite
.L_37d0c:
	.4byte	sUnk_83BDD74


thumb_func_start func_8037D10
func_8037D10:
	ldr	r2, .L_37d2c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #5
	bls	.L_37d30
	mov	r0, #1
	strb	r0, [r2, #31]
	b	.L_37d40
	.align	2, 0
.L_37d2c:
	.4byte	gCurrentSprite
.L_37d30:
	cmp	r1, #0
	bne	.L_37d40
	ldr	r0, .L_37d44
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_37d40:
	bx	lr
	.align	2, 0
.L_37d44:
	.4byte	sUnk_83BDD54


thumb_func_start SpriteElectricLiftStationary
SpriteElectricLiftStationary:
	push	{lr}
	ldr	r0, .L_37d60
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #22
	bhi	.L_37de2
	lsl	r0, r1, #2
	ldr	r1, .L_37d64
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_37d60:
	.4byte	gCurrentSprite
.L_37d64:
	.4byte	.L_37d68
.L_37d68:
	.4byte	.L_37dc4
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37de2
	.4byte	.L_37dca
	.4byte	.L_37de2
	.4byte	.L_37dd0
	.4byte	.L_37de2
	.4byte	.L_37dd6
	.4byte	.L_37de2
	.4byte	.L_37ddc
.L_37dc4:
	bl	func_8037BF8
	b	.L_37de6
.L_37dca:
	bl	func_8037C64
	b	.L_37de6
.L_37dd0:
	bl	func_8037C94
	b	.L_37de6
.L_37dd6:
	bl	func_8037CDC
	b	.L_37de6
.L_37ddc:
	bl	func_8037D10
	b	.L_37de6
.L_37de2:
	mov	r0, #0
	strb	r0, [r2, #28]
.L_37de6:
	bl	func_8026838
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8037DF0
func_8037DF0:
	push	{r4, r5, lr}
	ldr	r0, .L_37e54
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	mov	r0, #29
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r5, ip
	add	r5, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r5, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_37e58
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r3, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_37e54:
	.4byte	gCurrentSprite
.L_37e58:
	.4byte	sUnk_83BDFF0


thumb_func_start func_8037E5C
func_8037E5C:
	ldr	r1, .L_37e8c
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #15
	bls	.L_37e94
	ldrh	r0, [r1, #8]
	add	r0, #2
	strh	r0, [r1, #8]
	ldrh	r1, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_37ea8
	ldr	r1, .L_37e90
	ldrh	r0, [r1, #20]
	add	r0, #2
	strh	r0, [r1, #20]
	b	.L_37ea8
.L_37e8c:
	.4byte	gCurrentSprite
.L_37e90:
	.4byte	gWarioData
.L_37e94:
	cmp	r2, #0
	bne	.L_37ea8
	ldr	r0, .L_37eac
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #144	@ 0x90
	strb	r0, [r3, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
.L_37ea8:
	bx	lr
	.align	2, 0
.L_37eac:
	.4byte	sUnk_83BDFC0


thumb_func_start func_8037EB0
func_8037EB0:
	ldr	r1, .L_37ee0
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #15
	bls	.L_37ee8
	ldrh	r0, [r1, #8]
	sub	r0, #2
	strh	r0, [r1, #8]
	ldrh	r1, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_37efc
	ldr	r1, .L_37ee4
	ldrh	r0, [r1, #20]
	sub	r0, #2
	strh	r0, [r1, #20]
	b	.L_37efc
.L_37ee0:
	.4byte	gCurrentSprite
.L_37ee4:
	.4byte	gWarioData
.L_37ee8:
	cmp	r2, #0
	bne	.L_37efc
	ldr	r0, .L_37f00
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #144	@ 0x90
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
.L_37efc:
	bx	lr
	.align	2, 0
.L_37f00:
	.4byte	sUnk_83BDFF0


thumb_func_start func_8037F04
func_8037F04:
	ldr	r1, .L_37f34
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #15
	bls	.L_37f3c
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	ldrh	r1, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_37f48
	ldr	r1, .L_37f38
	ldrh	r0, [r1, #18]
	add	r0, #2
	strh	r0, [r1, #18]
	b	.L_37f48
.L_37f34:
	.4byte	gCurrentSprite
.L_37f38:
	.4byte	gWarioData
.L_37f3c:
	cmp	r0, #0
	bne	.L_37f48
	mov	r0, #176	@ 0xb0
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
.L_37f48:
	bx	lr
	.align	2, 0


thumb_func_start func_8037F4C
func_8037F4C:
	ldr	r1, .L_37f7c
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #15
	bls	.L_37f84
	ldrh	r0, [r1, #10]
	sub	r0, #2
	strh	r0, [r1, #10]
	ldrh	r1, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_37f90
	ldr	r1, .L_37f80
	ldrh	r0, [r1, #18]
	sub	r0, #2
	strh	r0, [r1, #18]
	b	.L_37f90
.L_37f7c:
	.4byte	gCurrentSprite
.L_37f80:
	.4byte	gWarioData
.L_37f84:
	cmp	r0, #0
	bne	.L_37f90
	mov	r0, #176	@ 0xb0
	strb	r0, [r2, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
.L_37f90:
	bx	lr
	.align	2, 0


thumb_func_start SpriteElectricLiftVertical
SpriteElectricLiftVertical:
	push	{r4, lr}
	ldr	r4, .L_37fa8
	ldrb	r0, [r4, #28]
	cmp	r0, #16
	beq	.L_37fc0
	cmp	r0, #16
	bgt	.L_37fac
	cmp	r0, #0
	beq	.L_37fb2
	b	.L_37fca
.L_37fa8:
	.4byte	gCurrentSprite
.L_37fac:
	cmp	r0, #18
	beq	.L_37fc6
	b	.L_37fca
.L_37fb2:
	bl	func_8037DF0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	b	.L_37fca
.L_37fc0:
	bl	func_8037E5C
	b	.L_37fca
.L_37fc6:
	bl	func_8037EB0
.L_37fca:
	bl	func_8026838
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start SpriteElectricLiftHorizontal
SpriteElectricLiftHorizontal:
	push	{r4, lr}
	ldr	r4, .L_37fe8
	ldrb	r0, [r4, #28]
	cmp	r0, #16
	beq	.L_38000
	cmp	r0, #16
	bgt	.L_37fec
	cmp	r0, #0
	beq	.L_37ff2
	b	.L_3800a
.L_37fe8:
	.4byte	gCurrentSprite
.L_37fec:
	cmp	r0, #18
	beq	.L_38006
	b	.L_3800a
.L_37ff2:
	bl	func_8037DF0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	b	.L_3800a
.L_38000:
	bl	func_8037F04
	b	.L_3800a
.L_38006:
	bl	func_8037F4C
.L_3800a:
	bl	func_8026838
	pop	{r4}
	pop	{r0}
	bx	r0
