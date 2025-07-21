.include "macros.s.inc"


thumb_func_start func_806ADD4
func_806ADD4:
	push	{r4, r5, lr}
	sub	sp, #8
	add	r4, r0, #0
	ldr	r1, .L_6adfc
	mov	r0, sp
	mov	r2, #7
	bl	memcpy
	mov	r5, #0
	cmp	r4, #0
	beq	.L_6ae28
	ldr	r3, .L_6ae00
	ldr	r2, .L_6ae04
	ldrh	r0, [r3, #18]
	ldrh	r1, [r2, #0]
	cmp	r0, r1
	bls	.L_6ae08
	add	r1, r0, #0
	ldrh	r0, [r2, #0]
	b	.L_6ae0c
.L_6adfc:
	.4byte	sUnk_83F7820
.L_6ae00:
	.4byte	gWarioData
.L_6ae04:
	.4byte	gUnk_30019F2
.L_6ae08:
	ldrh	r1, [r2, #0]
	ldrh	r0, [r3, #18]
.L_6ae0c:
	sub	r4, r1, r0
	ldr	r1, .L_6ae20
	ldrb	r0, [r1, #3]
	cmp	r0, #1
	bge	.L_6ae24
	add	r0, #1
	strb	r0, [r1, #3]
	mov	r5, #1
	b	.L_6ae28
	.align	2, 0
.L_6ae20:
	.4byte	gUnk_30000D8
.L_6ae24:
	mov	r0, #0
	strb	r0, [r1, #3]
.L_6ae28:
	ldr	r1, .L_6ae64
	ldrh	r2, [r1, #18]
	lsr	r2, r2, #6
	ldrh	r0, [r1, #52]	@ 0x34
	lsl	r0, r0, #16
	asr	r0, r0, #17
	ldrh	r1, [r1, #20]
	add	r0, r0, r1
	asr	r0, r0, #6
	ldr	r3, .L_6ae68
	ldrh	r1, [r3, #12]
	mul	r0, r1
	add	r4, r0, r2
	ldr	r2, .L_6ae6c
	ldr	r1, [r3, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	ldr	r0, [r2, #4]
	add	r0, r0, r1
	ldrb	r4, [r0, #0]
	sub	r4, #128	@ 0x80
	cmp	r4, #6
	bhi	.L_6ae74
	mov	r1, sp
	add	r0, r1, r4
	ldrb	r4, [r0, #0]
	ldr	r1, .L_6ae70
	b	.L_6ae8a
	.align	2, 0
.L_6ae64:
	.4byte	gWarioData
.L_6ae68:
	.4byte	gUnk_3000054
.L_6ae6c:
	.4byte	gUnk_30031F4
.L_6ae70:
	.4byte	gUnk_30000D8
.L_6ae74:
	cmp	r4, #7
	bne	.L_6ae84
	ldr	r0, .L_6ae80
	ldrb	r4, [r0, #2]
	b	.L_6ae88
	.align	2, 0
.L_6ae80:
	.4byte	gUnk_30000D8
.L_6ae84:
	ldr	r0, .L_6ae98
	ldrb	r4, [r0, #0]
.L_6ae88:
	add	r1, r0, #0
.L_6ae8a:
	ldrb	r0, [r1, #0]
	cmp	r4, r0
	beq	.L_6ae9c
	mov	r0, #0
	strb	r0, [r1, #3]
	b	.L_6aea0
	.align	2, 0
.L_6ae98:
	.4byte	gUnk_30000D8
.L_6ae9c:
	cmp	r5, #0
	bne	.L_6aec6
.L_6aea0:
	strb	r4, [r1, #0]
	ldrb	r0, [r1, #0]
	ldrb	r2, [r1, #1]
	sub	r4, r0, r2
	cmp	r4, #0
	beq	.L_6aec6
	cmp	r4, #0
	ble	.L_6aeb4
	add	r0, r2, #1
	b	.L_6aeb6
.L_6aeb4:
	sub	r0, r2, #1
.L_6aeb6:
	strb	r0, [r1, #1]
	ldr	r3, .L_6aed0
	ldrb	r2, [r1, #1]
	lsl	r1, r2, #8
	mov	r0, #16
	sub	r0, r0, r2
	orr	r1, r0
	strh	r1, [r3, #0]
.L_6aec6:
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6aed0:
	.4byte	gUnk_300002A


thumb_func_start func_806AED4
func_806AED4:
	push	{lr}
	ldr	r2, .L_6aeec
	ldrb	r0, [r2, #3]
	cmp	r0, #0
	bne	.L_6af08
	ldr	r0, .L_6aef0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6aef4
	mov	r2, #0
	mov	r3, #226	@ 0xe2
	b	.L_6aef8
.L_6aeec:
	.4byte	gUnk_30000D8
.L_6aef0:
	.4byte	gUnk_3000038
.L_6aef4:
	ldrb	r2, [r2, #2]
	mov	r3, #227	@ 0xe3
.L_6aef8:
	ldr	r1, .L_6af28
	ldrb	r0, [r1, #0]
	cmp	r0, r2
	beq	.L_6af08
	strb	r2, [r1, #0]
	add	r0, r3, #0
	bl	m4aSongNumStart
.L_6af08:
	ldr	r1, .L_6af2c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_6af28
	ldrb	r2, [r0, #0]
	ldrb	r1, [r0, #1]
	sub	r2, r2, r1
	strb	r2, [r0, #3]
	add	r1, r0, #0
	cmp	r2, #0
	beq	.L_6af44
	cmp	r2, #0
	ble	.L_6af30
	ldrb	r0, [r1, #1]
	add	r0, #1
	b	.L_6af34
.L_6af28:
	.4byte	gUnk_30000D8
.L_6af2c:
	.4byte	gUnk_3000038
.L_6af30:
	ldrb	r0, [r1, #1]
	sub	r0, #1
.L_6af34:
	strb	r0, [r1, #1]
	ldr	r3, .L_6af48
	ldrb	r2, [r1, #1]
	lsl	r1, r2, #8
	mov	r0, #16
	sub	r0, r0, r2
	orr	r1, r0
	strh	r1, [r3, #0]
.L_6af44:
	pop	{r0}
	bx	r0
.L_6af48:
	.4byte	gUnk_300002A
