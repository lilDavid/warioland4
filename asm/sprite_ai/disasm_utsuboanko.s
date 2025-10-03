.include "macros.s.inc"


thumb_func_start func_8059F88
func_8059F88:
	push	{r4, lr}
	ldr	r3, .L_59fd4
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #48	@ 0x30
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r4, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r4, r3]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #36	@ 0x24
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_59fd4:
	.4byte	gCurrentSprite


thumb_func_start func_8059FD8
func_8059FD8:
	ldr	r1, .L_59ff0
	ldr	r0, .L_59ff4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #81	@ 0x51
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_59ff0:
	.4byte	gCurrentSprite
.L_59ff4:
	.4byte	sUnk_83DE0E0


thumb_func_start func_8059FF8
func_8059FF8:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_5a010
	mov	r0, #1
	strb	r0, [r5, #31]
	add	r6, r5, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L_5a014
	sub	r0, #1
	b	.L_5a030
.L_5a010:
	.4byte	gCurrentSprite
.L_5a014:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	mov	r0, #140	@ 0x8c
	bl	SpriteUtilCheckWarioNearbyLeftRight
	cmp	r0, #0
	beq	.L_5a032
	ldr	r0, .L_5a038
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r4, [r5, #20]
	mov	r0, #18
	strb	r0, [r5, #28]
	mov	r0, #75	@ 0x4b
.L_5a030:
	strb	r0, [r6, #0]
.L_5a032:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_5a038:
	.4byte	sUnk_83DDF00


thumb_func_start func_805A03C
func_805A03C:
	push	{lr}
	ldr	r3, .L_5a06c
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r2, r0, #1
	mov	r1, ip
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5a07a
	cmp	r1, #51	@ 0x33
	bls	.L_5a070
	mov	r0, #1
	strb	r0, [r3, #31]
	cmp	r1, #52	@ 0x34
	bne	.L_5a08c
	mov	r0, #100	@ 0x64
	bl	m4aSongNumStart
	b	.L_5a08c
	.align	2, 0
.L_5a06c:
	.4byte	gCurrentSprite
.L_5a070:
	cmp	r1, #10
	bne	.L_5a08c
	mov	r0, #82	@ 0x52
	strb	r0, [r3, #30]
	b	.L_5a08c
.L_5a07a:
	ldr	r0, .L_5a090
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #20
	strb	r0, [r3, #28]
	mov	r0, #117	@ 0x75
	mov	r1, ip
	strb	r0, [r1, #0]
.L_5a08c:
	pop	{r0}
	bx	r0
.L_5a090:
	.4byte	sUnk_83DE028


thumb_func_start func_805A094
func_805A094:
	ldr	r3, .L_5a0b0
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_5a0b4
	lsr	r0, r0, #24
	cmp	r0, #68	@ 0x44
	bhi	.L_5a0c0
	b	.L_5a0bc
	.align	2, 0
.L_5a0b0:
	.4byte	gCurrentSprite
.L_5a0b4:
	mov	r0, #15
	strb	r0, [r3, #28]
	mov	r0, #70	@ 0x46
	strb	r0, [r2, #0]
.L_5a0bc:
	mov	r0, #1
	strb	r0, [r3, #31]
.L_5a0c0:
	bx	lr
	.align	2, 0


thumb_func_start func_805A0C4
func_805A0C4:
	ldr	r0, .L_5a0dc
	ldr	r1, .L_5a0e0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #109	@ 0x6d
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #70	@ 0x46
	strb	r1, [r0, #0]
	bx	lr
.L_5a0dc:
	.4byte	gCurrentSprite
.L_5a0e0:
	.4byte	sUnk_83DDFB0


thumb_func_start func_805A0E4
func_805A0E4:
	ldr	r2, .L_5a104
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5a102
	mov	r0, #15
	strb	r0, [r2, #28]
	mov	r0, #70	@ 0x46
	strb	r0, [r1, #0]
.L_5a102:
	bx	lr
.L_5a104:
	.4byte	gCurrentSprite


thumb_func_start SpriteUtsuboanko
SpriteUtsuboanko:
	push	{lr}
	ldr	r0, .L_5a128
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #18
	beq	.L_5a154
	cmp	r1, #18
	bgt	.L_5a132
	cmp	r1, #15
	beq	.L_5a14a
	cmp	r1, #15
	bgt	.L_5a12c
	cmp	r1, #0
	beq	.L_5a146
	b	.L_5a16a
	.align	2, 0
.L_5a128:
	.4byte	gCurrentSprite
.L_5a12c:
	cmp	r1, #16
	beq	.L_5a14e
	b	.L_5a16a
.L_5a132:
	cmp	r1, #108	@ 0x6c
	beq	.L_5a160
	cmp	r1, #108	@ 0x6c
	bgt	.L_5a140
	cmp	r1, #20
	beq	.L_5a15a
	b	.L_5a16a
.L_5a140:
	cmp	r1, #109	@ 0x6d
	beq	.L_5a164
	b	.L_5a16a
.L_5a146:
	bl	func_8059F88
.L_5a14a:
	bl	func_8059FD8
.L_5a14e:
	bl	func_8059FF8
	b	.L_5a172
.L_5a154:
	bl	func_805A03C
	b	.L_5a172
.L_5a15a:
	bl	func_805A094
	b	.L_5a172
.L_5a160:
	bl	func_805A0C4
.L_5a164:
	bl	func_805A0E4
	b	.L_5a172
.L_5a16a:
	mov	r0, #108	@ 0x6c
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #31]
.L_5a172:
	pop	{r0}
	bx	r0
	.align	2, 0
