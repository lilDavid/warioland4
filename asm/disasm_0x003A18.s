.include "macros.s.inc"


thumb_func_start func_8003A18
func_8003A18:
	push	{r4, r5, lr}
	sub	sp, #4
	add	r5, r0, #0
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	func_800B6C0
	ldr	r0, .L_3a74
	mov	r4, #0
	str	r4, [r0, #0]
	ldr	r1, .L_3a78
	ldr	r0, .L_3a7c
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	str	r0, [sp, #0]
	ldr	r1, .L_3a80
	mov	r0, sp
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_3a84
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bl	func_80033BC
	bl	func_8003428
	ldr	r0, .L_3a88
	strh	r4, [r0, #0]
	ldr	r0, .L_3a8c
	strh	r4, [r0, #0]
	ldr	r0, .L_3a90
	str	r4, [r0, #0]
	cmp	r5, #46	@ 0x2e
	bls	.L_3a6a
	b	.L_3bdc
.L_3a6a:
	lsl	r0, r5, #2
	ldr	r1, .L_3a94
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3a74:
	.4byte	gUnk_3002C6C
.L_3a78:
	.4byte	gUnk_3002C70
.L_3a7c:
	.4byte	gOamBuffer
.L_3a80:
	.4byte	0x40000D4
.L_3a84:
	.4byte	0x85000100
.L_3a88:
	.4byte	gUnk_300188E
.L_3a8c:
	.4byte	gUnk_3002C60
.L_3a90:
	.4byte	gUnk_3002C64
.L_3a94:
	.4byte	.L_3a98
.L_3a98:
	.4byte	.L_3b54
	.4byte	.L_3bca
	.4byte	.L_3b5a
	.4byte	.L_3bca
	.4byte	.L_3b60
	.4byte	.L_3bca
	.4byte	.L_3b66
	.4byte	.L_3bca
	.4byte	.L_3b6c
	.4byte	.L_3bca
	.4byte	.L_3b72
	.4byte	.L_3bca
	.4byte	.L_3b78
	.4byte	.L_3bca
	.4byte	.L_3b7e
	.4byte	.L_3bca
	.4byte	.L_3b84
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3b8a
	.4byte	.L_3bca
	.4byte	.L_3b90
	.4byte	.L_3bca
	.4byte	.L_3b96
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3b9c
	.4byte	.L_3bca
	.4byte	.L_3ba2
	.4byte	.L_3bca
	.4byte	.L_3ba8
	.4byte	.L_3bca
	.4byte	.L_3bae
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bba
	.4byte	.L_3bca
	.4byte	.L_3bb4
	.4byte	.L_3bca
	.4byte	.L_3bca
	.4byte	.L_3bc0
.L_3b54:
	bl	func_8003BF0
	b	.L_3bca
.L_3b5a:
	bl	func_8003C90
	b	.L_3bca
.L_3b60:
	bl	func_8003F88
	b	.L_3bca
.L_3b66:
	bl	func_8004244
	b	.L_3bca
.L_3b6c:
	bl	func_8004350
	b	.L_3bca
.L_3b72:
	bl	func_80046D8
	b	.L_3bca
.L_3b78:
	bl	func_8004B14
	b	.L_3bca
.L_3b7e:
	bl	func_800542C
	b	.L_3bca
.L_3b84:
	bl	func_8005CC0
	b	.L_3bca
.L_3b8a:
	bl	func_8006680
	b	.L_3bca
.L_3b90:
	bl	func_8006E00
	b	.L_3bca
.L_3b96:
	bl	func_80077C4
	b	.L_3bca
.L_3b9c:
	bl	func_8007B14
	b	.L_3bca
.L_3ba2:
	bl	func_8008900
	b	.L_3bca
.L_3ba8:
	bl	func_8009B38
	b	.L_3bca
.L_3bae:
	bl	func_800A180
	b	.L_3bca
.L_3bb4:
	bl	func_800AFDC
	b	.L_3bca
.L_3bba:
	bl	func_80057BC
	b	.L_3bca
.L_3bc0:
	ldr	r1, .L_3bd4
	mov	r0, #1
	str	r0, [r1, #0]
	bl	func_8005CC0
.L_3bca:
	cmp	r5, #46	@ 0x2e
	bne	.L_3bdc
	ldr	r1, .L_3bd8
	mov	r0, #17
	b	.L_3be2
.L_3bd4:
	.4byte	gUnk_3002C74
.L_3bd8:
	.4byte	gSubGameMode
.L_3bdc:
	ldr	r1, .L_3bec
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_3be2:
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3bec:
	.4byte	gSubGameMode


thumb_func_start func_8003BF0
func_8003BF0:
	sub	sp, #4
	mov	r3, #0
	str	r3, [sp, #0]
	ldr	r0, .L_3c4c
	mov	r1, sp
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r1, .L_3c50
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0]
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_3c54
	str	r1, [r0, #4]
	ldr	r2, .L_3c58
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	str	r3, [sp, #0]
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_3c5c
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_3c60
	str	r1, [sp, #0]
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_3c64
	str	r1, [r0, #4]
	ldr	r1, .L_3c68
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r0, .L_3c6c
	strh	r3, [r0, #0]
	add	r0, #2
	strh	r3, [r0, #0]
	sub	r0, #82	@ 0x52
	strh	r3, [r0, #0]
	add	sp, #4
	bx	lr
.L_3c4c:
	.4byte	0x40000D4
.L_3c50:
	.4byte	0x85000100
.L_3c54:
	.4byte	0x6007F80
.L_3c58:
	.4byte	0x85000010
.L_3c5c:
	.4byte	0x6007FC0
.L_3c60:
	.4byte	0x3FF03FF
.L_3c64:
	.4byte	0x6008000
.L_3c68:
	.4byte	0x85001000
.L_3c6c:
	.4byte	0x4000050


thumb_func_start func_8003C70
func_8003C70:
	ldr	r1, .L_3c88
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #21
	bne	.L_3c84
	ldr	r1, .L_3c8c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_3c84:
	bx	lr
	.align	2, 0
.L_3c88:
	.4byte	gUnk_3002C64
.L_3c8c:
	.4byte	gSubGameMode
