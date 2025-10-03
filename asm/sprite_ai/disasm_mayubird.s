.include "macros.s.inc"


thumb_func_start func_803DF78
func_803DF78:
	ldr	r0, .L_3dfcc
	mov	ip, r0
	add	r0, #32
	mov	r3, #0
	mov	r2, #16
	strb	r2, [r0, #0]
	mov	r1, ip
	add	r1, #33	@ 0x21
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #34	@ 0x22
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r0, .L_3dfd0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	mov	r1, #0
	mov	r0, ip
	strh	r3, [r0, #20]
	strb	r2, [r0, #28]
	mov	r0, #46	@ 0x2e
	mov	r2, ip
	strb	r0, [r2, #30]
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
.L_3dfcc:
	.4byte	gCurrentSprite
.L_3dfd0:
	.4byte	sUnk_83C4984


thumb_func_start func_803DFD4
func_803DFD4:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_3e000
	mov	r0, #41	@ 0x29
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r4, [r0, #0]
	lsr	r0, r4, #3
	ldr	r6, .L_3e004
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r3, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_3e008
	add	r5, r2, #0
	cmp	r1, r0
	bne	.L_3e00c
	ldrh	r3, [r6, #0]
	mov	r0, #0
	mov	r6, ip
	strb	r0, [r6, #0]
	b	.L_3e012
.L_3e000:
	.4byte	gCurrentSprite
.L_3e004:
	.4byte	sUnk_83C4A24
.L_3e008:
	.4byte	0x7FFF
.L_3e00c:
	add	r0, r4, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_3e012:
	ldrh	r0, [r5, #10]
	add	r0, r0, r3
	strh	r0, [r5, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r5
	mov	ip, r6
	ldrb	r2, [r6, #0]
	lsr	r0, r2, #1
	ldr	r4, .L_3e040
	lsl	r0, r0, #1
	add	r0, r0, r4
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3e044
	cmp	r1, r0
	bne	.L_3e048
	ldrh	r3, [r4, #0]
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_3e04e
	.align	2, 0
.L_3e040:
	.4byte	sUnk_83C4A46
.L_3e044:
	.4byte	0x7FFF
.L_3e048:
	add	r0, r2, #1
	mov	r6, ip
	strb	r0, [r6, #0]
.L_3e04e:
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
	strh	r0, [r5, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803E05C
func_803E05C:
	ldr	r0, .L_3e074
	ldr	r1, .L_3e078
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #90	@ 0x5a
	strb	r1, [r0, #0]
	bx	lr
.L_3e074:
	.4byte	gCurrentSprite
.L_3e078:
	.4byte	sUnk_83C49D4


thumb_func_start func_803E07C
func_803E07C:
	ldr	r2, .L_3e0a4
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3e0a0
	ldr	r0, .L_3e0a8
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_3e0a0:
	bx	lr
	.align	2, 0
.L_3e0a4:
	.4byte	gCurrentSprite
.L_3e0a8:
	.4byte	sUnk_83C4984


thumb_func_start func_803E0AC
func_803E0AC:
	push	{r4, r5, lr}
	ldr	r5, .L_3e0f0
	ldr	r0, .L_3e0f4
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_3e0f8
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3e0f0:
	.4byte	gCurrentSprite
.L_3e0f4:
	.4byte	sUnk_83C4A04
.L_3e0f8:
	.4byte	0xFEFF


thumb_func_start func_803E0FC
func_803E0FC:
	push	{lr}
	ldr	r1, .L_3e10c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_803E0AC
	pop	{r0}
	bx	r0
.L_3e10c:
	.4byte	gCurrentSprite


thumb_func_start func_803E110
func_803E110:
	push	{lr}
	ldr	r1, .L_3e120
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_803E0AC
	pop	{r0}
	bx	r0
.L_3e120:
	.4byte	gCurrentSprite


thumb_func_start func_803E124
func_803E124:
	push	{r4, r5, lr}
	ldr	r5, .L_3e16c
	ldr	r0, .L_3e170
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r0, [r5, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	orr	r0, r4
	ldr	r1, .L_3e174
	and	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3e16c:
	.4byte	gCurrentSprite
.L_3e170:
	.4byte	sUnk_83C4A04
.L_3e174:
	.4byte	0xFEFF


thumb_func_start func_803E178
func_803E178:
	push	{lr}
	ldr	r1, .L_3e188
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_803E124
	pop	{r0}
	bx	r0
.L_3e188:
	.4byte	gCurrentSprite


thumb_func_start func_803E18C
func_803E18C:
	push	{lr}
	ldr	r1, .L_3e19c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_803E124
	pop	{r0}
	bx	r0
.L_3e19c:
	.4byte	gCurrentSprite


thumb_func_start func_803E1A0
func_803E1A0:
	ldr	r0, .L_3e1bc
	ldr	r1, .L_3e1c0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #30
	strb	r1, [r3, #0]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	bx	lr
.L_3e1bc:
	.4byte	gCurrentSprite
.L_3e1c0:
	.4byte	sUnk_83C49EC


thumb_func_start func_803E1C4
func_803E1C4:
	push	{lr}
	ldr	r1, .L_3e1d4
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_803E1A0
	pop	{r0}
	bx	r0
.L_3e1d4:
	.4byte	gCurrentSprite


thumb_func_start func_803E1D8
func_803E1D8:
	push	{lr}
	ldr	r1, .L_3e1e8
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_803E1A0
	pop	{r0}
	bx	r0
.L_3e1e8:
	.4byte	gCurrentSprite


thumb_func_start func_803E1EC
func_803E1EC:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_3e220
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #41	@ 0x29
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_3e224
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r2, [r0, r4]
	ldr	r0, .L_3e228
	add	r4, r1, #0
	cmp	r2, r0
	bne	.L_3e22c
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3e236
	.align	2, 0
.L_3e220:
	.4byte	gCurrentSprite
.L_3e224:
	.4byte	sUnk_83C4AD8
.L_3e228:
	.4byte	0x7FFF
.L_3e22c:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #10]
	add	r0, r0, r5
.L_3e236:
	strh	r0, [r4, #10]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3e264
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_3e254
	ldrh	r0, [r4, #8]
	sub	r0, #2
	b	.L_3e268
.L_3e254:
	ldr	r0, .L_3e260
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_3e26a
	.align	2, 0
.L_3e260:
	.4byte	sUnk_83C49AC
.L_3e264:
	ldrh	r0, [r4, #8]
	sub	r0, #12
.L_3e268:
	strh	r0, [r4, #8]
.L_3e26a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_803E270
func_803E270:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_3e2a4
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #41	@ 0x29
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_3e2a8
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r2, [r0, r4]
	ldr	r0, .L_3e2ac
	add	r4, r1, #0
	cmp	r2, r0
	bne	.L_3e2b0
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3e2ba
	.align	2, 0
.L_3e2a4:
	.4byte	gCurrentSprite
.L_3e2a8:
	.4byte	sUnk_83C4AC8
.L_3e2ac:
	.4byte	0x7FFF
.L_3e2b0:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #10]
	add	r0, r0, r5
.L_3e2ba:
	strh	r0, [r4, #10]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3e2e8
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_3e2d8
	ldrh	r0, [r4, #8]
	sub	r0, #2
	b	.L_3e2ec
.L_3e2d8:
	ldr	r0, .L_3e2e4
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_3e2ee
	.align	2, 0
.L_3e2e4:
	.4byte	sUnk_83C49AC
.L_3e2e8:
	ldrh	r0, [r4, #8]
	sub	r0, #12
.L_3e2ec:
	strh	r0, [r4, #8]
.L_3e2ee:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_803E2F4
func_803E2F4:
	ldr	r2, .L_3e320
	mov	r1, #0
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r0, .L_3e324
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_3e328
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_3e320:
	.4byte	gCurrentSprite
.L_3e324:
	.4byte	sUnk_83C4A04
.L_3e328:
	.4byte	0xFEFF


thumb_func_start func_803E32C
func_803E32C:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteMayubird
SpriteMayubird:
	push	{lr}
	ldr	r0, .L_3e350
	ldrb	r0, [r0, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_3e344
	b	.L_3e556
.L_3e344:
	lsl	r0, r0, #2
	ldr	r1, .L_3e354
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3e350:
	.4byte	gCurrentSprite
.L_3e354:
	.4byte	.L_3e358
.L_3e358:
	.4byte	.L_3e504
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e508
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e50e
	.4byte	.L_3e51e
	.4byte	.L_3e514
	.4byte	.L_3e528
	.4byte	.L_3e52e
	.4byte	.L_3e532
	.4byte	.L_3e538
	.4byte	.L_3e53c
	.4byte	.L_3e542
	.4byte	.L_3e546
	.4byte	.L_3e542
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e54c
	.4byte	.L_3e550
	.4byte	.L_3e51a
	.4byte	.L_3e51e
	.4byte	.L_3e524
	.4byte	.L_3e528
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e50e
	.4byte	.L_3e514
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e556
	.4byte	.L_3e514
	.4byte	.L_3e50e
.L_3e504:
	bl	func_803DF78
.L_3e508:
	bl	func_803DFD4
	b	.L_3e55a
.L_3e50e:
	bl	func_803E0FC
	b	.L_3e51e
.L_3e514:
	bl	func_803E110
	b	.L_3e528
.L_3e51a:
	bl	func_803E178
.L_3e51e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_3e55a
.L_3e524:
	bl	func_803E18C
.L_3e528:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_3e55a
.L_3e52e:
	bl	func_803E1C4
.L_3e532:
	bl	func_803E1EC
	b	.L_3e55a
.L_3e538:
	bl	func_803E1D8
.L_3e53c:
	bl	func_803E270
	b	.L_3e55a
.L_3e542:
	bl	func_803E05C
.L_3e546:
	bl	func_803E07C
	b	.L_3e55a
.L_3e54c:
	bl	func_803E2F4
.L_3e550:
	bl	SpriteUtilDieAfterDelay
	b	.L_3e55a
.L_3e556:
	bl	func_803E32C
.L_3e55a:
	pop	{r0}
	bx	r0

	.align 2, 0
