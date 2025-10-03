.include "macros.s.inc"


thumb_func_start func_8037128
func_8037128:
	ldr	r0, .L_37168
	mov	ip, r0
	add	r0, #32
	mov	r3, #0
	mov	r2, #16
	strb	r2, [r0, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_3716c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r3, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, #11
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	bx	lr
.L_37168:
	.4byte	gCurrentSprite
.L_3716c:
	.4byte	sUnk_83BD660


thumb_func_start func_8037170
func_8037170:
	ldr	r1, .L_3719c
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_37184
	ldr	r0, .L_371a0
	and	r0, r2
	strh	r0, [r1, #0]
.L_37184:
	ldr	r0, .L_371a4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #109	@ 0x6d
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_3719c:
	.4byte	gCurrentSprite
.L_371a0:
	.4byte	0xFDFF
.L_371a4:
	.4byte	sUnk_83BD6D8


thumb_func_start func_80371A8
func_80371A8:
	ldr	r2, .L_371d0
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_371cc
	ldr	r0, .L_371d4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	mov	r0, #128	@ 0x80
	strb	r0, [r3, #0]
.L_371cc:
	bx	lr
	.align	2, 0
.L_371d0:
	.4byte	gCurrentSprite
.L_371d4:
	.4byte	sUnk_83BD6F0


thumb_func_start func_80371D8
func_80371D8:
	ldr	r2, .L_371fc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_371f8
	ldr	r0, .L_37200
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_371f8:
	bx	lr
	.align	2, 0
.L_371fc:
	.4byte	gCurrentSprite
.L_37200:
	.4byte	sUnk_83BD660


thumb_func_start func_8037204
func_8037204:
	push	{r4, r5, lr}
	ldr	r5, .L_37248
	ldr	r0, .L_3724c
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #7
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
	ldr	r0, .L_37250
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_37248:
	.4byte	gCurrentSprite
.L_3724c:
	.4byte	sUnk_83BD6D8
.L_37250:
	.4byte	0xFEFF


thumb_func_start func_8037254
func_8037254:
	push	{lr}
	ldr	r1, .L_37264
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8037204
	pop	{r0}
	bx	r0
.L_37264:
	.4byte	gCurrentSprite


thumb_func_start func_8037268
func_8037268:
	push	{lr}
	ldr	r1, .L_37278
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8037204
	pop	{r0}
	bx	r0
.L_37278:
	.4byte	gCurrentSprite


thumb_func_start func_803727C
func_803727C:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteTogemasuku
SpriteTogemasuku:
	push	{lr}
	ldr	r0, .L_372a0
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #111	@ 0x6f
	bls	.L_37296
	b	.L_374a4
.L_37296:
	lsl	r0, r1, #2
	ldr	r1, .L_372a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_372a0:
	.4byte	gCurrentSprite
.L_372a4:
	.4byte	.L_372a8
.L_372a8:
	.4byte	.L_37468
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a8
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_37488
	.4byte	.L_37482
	.4byte	.L_37498
	.4byte	.L_37492
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_37488
	.4byte	.L_37498
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_374a4
	.4byte	.L_3748e
	.4byte	.L_3747e
	.4byte	.L_3749e
	.4byte	.L_3746e
	.4byte	.L_37472
	.4byte	.L_374a4
	.4byte	.L_37478
.L_37468:
	bl	func_8037128
	b	.L_374a8
.L_3746e:
	bl	func_8037170
.L_37472:
	bl	func_80371A8
	b	.L_374a8
.L_37478:
	bl	func_80371D8
	b	.L_374a8
.L_3747e:
	bl	func_8037254
.L_37482:
	bl	SpriteUtilFallOffscreenRight
	b	.L_374a8
.L_37488:
	bl	func_8037254
	b	.L_37482
.L_3748e:
	bl	func_8037268
.L_37492:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_374a8
.L_37498:
	bl	func_8037268
	b	.L_37492
.L_3749e:
	bl	func_803727C
	b	.L_374a8
.L_374a4:
	mov	r0, #108	@ 0x6c
	strb	r0, [r2, #28]
.L_374a8:
	pop	{r0}
	bx	r0
