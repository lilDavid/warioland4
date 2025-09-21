.include "macros.s.inc"


thumb_func_start func_8072C60
func_8072C60:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start QuitSubroutine
QuitSubroutine:
	push	{lr}
	ldr	r0, .L_72c90
	bl	InterruptCallbackSetVBlank
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
