.include "macros.s.inc"


thumb_func_start func_8072C60
func_8072C60:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8072C70
func_8072C70:
	push	{lr}
	ldr	r0, .L_72c90
	bl	InterruptCallback_SetVBlank
	bl	func_8072F0C
	ldr	r0, .L_72c94
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_72c98
	strb	r1, [r0, #0]
	ldr	r0, .L_72c9c
	strb	r1, [r0, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72c90:
	.4byte	func_8072C60
.L_72c94:
	.4byte	gUnk_3000047
.L_72c98:
	.4byte	gSwitchPressed
.L_72c9c:
	.4byte	gUnk_3000C3F


thumb_func_start func_8072CA0
func_8072CA0:
	push	{lr}
	ldr	r1, .L_72d10
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #49	@ 0x31
	strb	r0, [r1, #0]
	add	r1, #1
	ldr	r0, .L_72d14
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r1, #1
.ifdef VERSION_JP
	mov	r0, #1
.else
	mov	r0, #0
.endif
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r2, #0
	ldr	r3, .L_72d18
.L_72cc2:
	add	r0, r2, r3
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r2, #1
	add	r1, #1
	cmp	r2, #19
	ble	.L_72cc2
	ldr	r3, .L_72d1c
	mov	r0, #0
	stmia	r3!, {r0}
	sub	r0, #1
	str	r0, [r3, #0]
	sub	r3, #4
	mov	r1, #0
	mov	r2, #3
.L_72ce0:
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	sub	r2, #1
	cmp	r2, #0
	bge	.L_72ce0
	ldr	r0, .L_72d1c
	str	r1, [r0, #0]
	mvn	r1, r1
	add	r0, #4
	str	r1, [r0, #0]
	bl	func_8000E54
	ldr	r1, .L_72d20
	mov	r0, #1
	strb	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72d10:
	.4byte	0x02038008
.L_72d14:
	.4byte	gTitleScreenStyle
.L_72d18:
.ifdef VERSION_JP
	.4byte	sUnk_84009A8
.else
	.4byte	sUnk_8400994
.endif
.L_72d1c:
	.4byte	0x02038000
.L_72d20:
	.4byte	gUnk_300001D
