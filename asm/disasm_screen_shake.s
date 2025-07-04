.include "macros.s.inc"


thumb_func_start func_806ACA0
func_806ACA0:
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	ldr	r3, .L_6acc4
	cmp	r2, #0
	beq	.L_6acbe
	ldrb	r0, [r3, #0]
	cmp	r2, r0
	bls	.L_6acbe
	mov	r0, #0
	strb	r2, [r3, #0]
	strb	r0, [r3, #1]
	strb	r1, [r3, #2]
	strb	r0, [r3, #3]
.L_6acbe:
	ldrb	r0, [r3, #0]
	bx	lr
	.align	2, 0
.L_6acc4:
	.4byte	gUnk_30000C8


thumb_func_start func_806ACC8
func_806ACC8:
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r2, .L_6ace8
	cmp	r1, #0
	beq	.L_6ace2
	ldrb	r0, [r2, #0]
	cmp	r1, r0
	bls	.L_6ace2
	mov	r0, #0
	strb	r1, [r2, #0]
	strb	r0, [r2, #1]
	strb	r0, [r2, #2]
	strb	r0, [r2, #3]
.L_6ace2:
	ldrb	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_6ace8:
	.4byte	gUnk_30000CC


thumb_func_start func_806ACEC
func_806ACEC:
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	ldr	r3, .L_6ad10
	cmp	r2, #0
	beq	.L_6ad0a
	ldrb	r0, [r3, #0]
	cmp	r2, r0
	bls	.L_6ad0a
	mov	r0, #0
	strb	r2, [r3, #0]
	strb	r0, [r3, #1]
	strb	r1, [r3, #2]
	strb	r0, [r3, #3]
.L_6ad0a:
	ldrb	r0, [r3, #0]
	bx	lr
	.align	2, 0
.L_6ad10:
	.4byte	gUnk_30000CC


thumb_func_start func_806AD14
func_806AD14:
	push	{r4, r5, lr}
	mov	r3, #0
	ldr	r4, .L_6ad28
	ldrb	r0, [r4, #0]
	add	r2, r4, #0
	cmp	r0, #0
	bne	.L_6ad2c
	mov	r0, #0
	b	.L_6ad6e
	.align	2, 0
.L_6ad28:
	.4byte	gUnk_30000C8
.L_6ad2c:
	sub	r5, r0, #1
	strb	r5, [r2, #0]
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bhi	.L_6ad3e
	add	r0, #1
	strb	r0, [r2, #1]
	mov	r0, #0
	b	.L_6ad6e
.L_6ad3e:
	strb	r3, [r2, #1]
	ldrb	r0, [r2, #2]
	mov	r1, #127	@ 0x7f
	and	r1, r0
	mov	r3, #2
	neg	r3, r3
	ldrb	r2, [r2, #3]
	cmp	r2, #0
	beq	.L_6ad5a
	mov	r3, #2
	neg	r0, r1
	orr	r0, r1
	asr	r0, r0, #31
	and	r3, r0
.L_6ad5a:
	mov	r0, #1
	eor	r0, r2
	strb	r0, [r4, #3]
	lsl	r0, r5, #24
	lsr	r0, r0, #24
	cmp	r0, #16
	bhi	.L_6ad6c
	asr	r0, r3, #1
	b	.L_6ad6e
.L_6ad6c:
	add	r0, r3, #0
.L_6ad6e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_806AD74
func_806AD74:
	push	{r4, r5, lr}
	mov	r3, #0
	ldr	r4, .L_6ad88
	ldrb	r0, [r4, #0]
	add	r2, r4, #0
	cmp	r0, #0
	bne	.L_6ad8c
	mov	r0, #0
	b	.L_6adce
	.align	2, 0
.L_6ad88:
	.4byte	gUnk_30000CC
.L_6ad8c:
	sub	r5, r0, #1
	strb	r5, [r2, #0]
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bhi	.L_6ad9e
	add	r0, #1
	strb	r0, [r2, #1]
	mov	r0, #0
	b	.L_6adce
.L_6ad9e:
	strb	r3, [r2, #1]
	ldrb	r0, [r2, #2]
	mov	r1, #127	@ 0x7f
	and	r1, r0
	mov	r3, #2
	neg	r3, r3
	ldrb	r2, [r2, #3]
	cmp	r2, #0
	beq	.L_6adba
	mov	r3, #2
	neg	r0, r1
	orr	r0, r1
	asr	r0, r0, #31
	and	r3, r0
.L_6adba:
	mov	r0, #1
	eor	r0, r2
	strb	r0, [r4, #3]
	lsl	r0, r5, #24
	lsr	r0, r0, #24
	cmp	r0, #16
	bhi	.L_6adcc
	asr	r0, r3, #1
	b	.L_6adce
.L_6adcc:
	add	r0, r3, #0
.L_6adce:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
