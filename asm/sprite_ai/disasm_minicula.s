.include "macros.s.inc"


thumb_func_start func_803EC78
func_803EC78:
	push	{r4, lr}
	ldr	r0, .L_3ecd8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #19
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r1, #34	@ 0x22
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #136	@ 0x88
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #12
	strb	r0, [r1, #0]
	ldr	r0, .L_3ecdc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	strb	r3, [r1, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3ecd8:
	.4byte	gCurrentSprite
.L_3ecdc:
	.4byte	sUnk_83C4CD8


thumb_func_start SpriteMinicula
SpriteMinicula:
	push	{lr}
	ldr	r0, .L_3ecf8
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_3ecee
	bl	func_803EC78
.L_3ecee:
	bl	func_8026450
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3ecf8:
	.4byte	gCurrentSprite
