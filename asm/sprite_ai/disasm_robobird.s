.include "macros.s.inc"


thumb_func_start func_8059AFC
func_8059AFC:
	push	{r4, lr}
	ldr	r0, .L_59b4c
	mov	ip, r0
	add	r0, #32
	mov	r4, #0
	mov	r2, #32
	strb	r2, [r0, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	mov	r3, #16
	strb	r3, [r0, #0]
	mov	r1, ip
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #12
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_59b50
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r4, [r1, #22]
	strh	r4, [r1, #20]
	strb	r3, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #30]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
.L_59b4c:
	.4byte	gCurrentSprite
.L_59b50:
	.4byte	sUnk_83DDB14


thumb_func_start func_8059B54
func_8059B54:
	push	{r4, lr}
	ldr	r0, .L_59b84
	ldr	r4, .L_59b88
	ldrh	r0, [r0, #20]
	ldrh	r1, [r4, #8]
	cmp	r0, r1
	bcc	.L_59b66
	bl	SpriteUtilTurnTowardWario
.L_59b66:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	mov	r0, #120	@ 0x78
	bl	SpriteUtilCheckWarioNearbyLeftRight
	add	r2, r0, #0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_59b8c
	cmp	r2, #8
	bne	.L_59b94
	b	.L_59b90
	.align	2, 0
.L_59b84:
	.4byte	gWarioData
.L_59b88:
	.4byte	gCurrentSprite
.L_59b8c:
	cmp	r2, #4
	bne	.L_59b94
.L_59b90:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
.L_59b94:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8059B9C
func_8059B9C:
	ldr	r1, .L_59bbc
	ldr	r0, .L_59bc0
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #18
	strb	r0, [r2, #0]
	mov	r0, #4
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_59bbc:
	.4byte	gCurrentSprite
.L_59bc0:
	.4byte	sUnk_83DDB7C


thumb_func_start func_8059BC4
func_8059BC4:
	push	{lr}
	ldr	r3, .L_59bf4
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_59c02
	add	r0, r1, #0
	cmp	r0, #9
	bne	.L_59c14
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_59bf8
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	mov	r0, #68	@ 0x44
	strb	r0, [r1, #0]
	b	.L_59c14
.L_59bf4:
	.4byte	gCurrentSprite
.L_59bf8:
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	b	.L_59c14
.L_59c02:
	ldr	r0, .L_59c18
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #113	@ 0x71
	strb	r0, [r3, #28]
	mov	r0, #112	@ 0x70
	bl	m4aSongNumStart
.L_59c14:
	pop	{r0}
	bx	r0
.L_59c18:
	.4byte	sUnk_83DDBB4


thumb_func_start func_8059C1C
func_8059C1C:
	ldr	r2, .L_59c30
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_59c34
	ldrh	r0, [r2, #10]
	add	r0, #8
	b	.L_59c38
	.align	2, 0
.L_59c30:
	.4byte	gCurrentSprite
.L_59c34:
	ldrh	r0, [r2, #10]
	sub	r0, #8
.L_59c38:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8059C3C
func_8059C3C:
	ldr	r1, .L_59c50
	ldr	r0, .L_59c54
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_59c50:
	.4byte	gCurrentSprite
.L_59c54:
	.4byte	sUnk_83DDC34


thumb_func_start func_8059C58
func_8059C58:
	ldr	r2, .L_59c70
	mov	r0, #1
	strb	r0, [r2, #31]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_59c74
	ldrh	r0, [r2, #10]
	add	r0, #16
	b	.L_59c78
	.align	2, 0
.L_59c70:
	.4byte	gCurrentSprite
.L_59c74:
	ldrh	r0, [r2, #10]
	sub	r0, #16
.L_59c78:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8059C7C
func_8059C7C:
	ldr	r2, .L_59ca8
	ldr	r0, .L_59cac
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #29]
	strb	r0, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_59cb0
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_59ca8:
	.4byte	gCurrentSprite
.L_59cac:
	.4byte	sUnk_83DDC1C
.L_59cb0:
	.4byte	0xFEFF


thumb_func_start func_8059CB4
func_8059CB4:
	push	{lr}
	ldr	r1, .L_59cd8
	mov	r0, #32
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r2, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	bl	func_8059C7C
	pop	{r0}
	bx	r0
.L_59cd8:
	.4byte	gCurrentSprite


thumb_func_start func_8059CDC
func_8059CDC:
	push	{lr}
	ldr	r1, .L_59d00
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r2, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	bl	func_8059C7C
	pop	{r0}
	bx	r0
.L_59d00:
	.4byte	gCurrentSprite


thumb_func_start func_8059D04
func_8059D04:
	push	{lr}
	ldr	r0, .L_59d1c
	mov	r1, #32
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #7
	strb	r1, [r0, #0]
	bl	func_8059C7C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_59d1c:
	.4byte	gCurrentSprite


thumb_func_start func_8059D20
func_8059D20:
	push	{lr}
	ldr	r0, .L_59d38
	mov	r1, #34	@ 0x22
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #7
	strb	r1, [r0, #0]
	bl	func_8059C7C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_59d38:
	.4byte	gCurrentSprite


thumb_func_start SpriteRobobird
SpriteRobobird:
	push	{lr}
	ldr	r0, .L_59d54
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #113	@ 0x71
	bls	.L_59d4a
	b	.L_59f80
.L_59d4a:
	lsl	r0, r1, #2
	ldr	r1, .L_59d58
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_59d54:
	.4byte	gCurrentSprite
.L_59d58:
	.4byte	.L_59d5c
.L_59d5c:
	.4byte	.L_59f24
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f28
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f44
	.4byte	.L_59f3e
	.4byte	.L_59f60
	.4byte	.L_59f5a
	.4byte	.L_59f3a
	.4byte	.L_59f80
	.4byte	.L_59f56
	.4byte	.L_59f80
	.4byte	.L_59f76
	.4byte	.L_59f7a
	.4byte	.L_59f76
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f3a
	.4byte	.L_59f80
	.4byte	.L_59f56
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f44
	.4byte	.L_59f60
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f4a
	.4byte	.L_59f2e
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f80
	.4byte	.L_59f66
	.4byte	.L_59f6a
	.4byte	.L_59f80
	.4byte	.L_59f70
.L_59f24:
	bl	func_8059AFC
.L_59f28:
	bl	func_8059B54
	b	.L_59f84
.L_59f2e:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_59f3a:
	bl	func_8059D04
.L_59f3e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_59f84
.L_59f44:
	bl	func_8059CB4
	b	.L_59f3e
.L_59f4a:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_59f56:
	bl	func_8059D20
.L_59f5a:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_59f84
.L_59f60:
	bl	func_8059CDC
	b	.L_59f5a
.L_59f66:
	bl	func_8059B9C
.L_59f6a:
	bl	func_8059BC4
	b	.L_59f84
.L_59f70:
	bl	func_8059C1C
	b	.L_59f84
.L_59f76:
	bl	func_8059C3C
.L_59f7a:
	bl	func_8059C58
	b	.L_59f84
.L_59f80:
	bl	SpriteUtilDie
.L_59f84:
	pop	{r0}
	bx	r0
