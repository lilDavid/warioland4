.include "macros.s.inc"


thumb_func_start func_8000CA8
func_8000CA8:
	push	{lr}
	sub	sp, #4
	mov	r1, sp
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_cd0
	str	r1, [r2, #0]
	ldr	r0, .L_cd4
	str	r0, [r2, #4]
	ldr	r1, .L_cd8
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	ldr	r1, .L_cdc
	mov	r2, #254	@ 0xfe
	lsl	r2, r2, #7
	bl	func_8003384
	add	sp, #4
	pop	{r0}
	bx	r0
.L_cd0:
	.4byte	0x040000d4
.L_cd4:
	.4byte	0x02038100
.L_cd8:
	.4byte	0x81003f80
.L_cdc:
	.4byte	0x0e000100
