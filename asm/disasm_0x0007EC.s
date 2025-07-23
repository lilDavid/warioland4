.include "macros.s.inc"


thumb_func_start func_80007EC
func_80007EC:
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r0, .L_820
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r4, r0
	bcs	.L_818
	ldr	r6, .L_824
	add	r5, r0, #0
.L_7fe:
	lsl	r0, r4, #1
	add	r0, r0, r4
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	mov	r1, #10
	bl	m4aMPlayFadeOut
	add	r0, r4, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, r5
	bcc	.L_7fe
.L_818:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_820:
	.4byte	0x00000008
.L_824:
	.4byte	gMPlayTable


thumb_func_start func_8000828
func_8000828:
	push	{lr}
	bl	func_8000CE0
	pop	{r0}
	bx	r0


thumb_func_start SoftResetSubroutine
SoftResetSubroutine:
	push	{r4, lr}
	sub	sp, #4
	bl	m4aSoundVSyncOff
	bl	m4aMPlayAllStop
	ldr	r4, .L_88c
	mov	r3, #0
	strh	r3, [r4, #0]
	ldr	r2, .L_890
	ldrh	r1, [r2, #0]
	ldr	r0, .L_894
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_898
	ldrh	r1, [r2, #0]
	ldr	r0, .L_89c
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r4, #0]
	ldr	r1, .L_8a0
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r3, [r0, #0]
	add	r1, #4
	mov	r0, #16
	strh	r0, [r1, #0]
	strh	r3, [r4, #0]
	ldr	r0, .L_8a4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8ac
	str	r0, [sp, #0]
	add	r1, #128	@ 0x80
	mov	r0, sp
	str	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #18
	str	r0, [r1, #4]
	ldr	r0, .L_8a8
	b	.L_8be
.L_88c:
	.4byte	0x04000208
.L_890:
	.4byte	0x04000004
.L_894:
	.4byte	0xffef
.L_898:
	.4byte	0x04000200
.L_89c:
	.4byte	0xfffd
.L_8a0:
	.4byte	0x04000050
.L_8a4:
	.4byte	gUnk_3000014
.L_8a8:
	.4byte	0x85010000
.L_8ac:
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r1, .L_920
	mov	r0, sp
	str	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #18
	str	r0, [r1, #4]
	ldr	r0, .L_924
.L_8be:
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #0
	str	r4, [sp, #0]
	ldr	r1, .L_920
	mov	r0, sp
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #18
	str	r0, [r1, #4]
	ldr	r0, .L_928
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bl	InitializeInterruptHandler
	ldr	r0, .L_92c
	bl	InterruptCallback_SetVBlank
	bl	m4aSoundInit
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #16
	bl	m4aSoundMode
	ldr	r1, .L_930
	mov	r0, #1
	strh	r0, [r1, #0]
	bl	m4aSoundVSyncOff
	bl	func_8072D24
	bl	func_8073BE0
	ldr	r0, .L_934
	strh	r4, [r0, #0]
	ldr	r0, .L_938
	strh	r4, [r0, #0]
	ldr	r0, .L_93c
	strh	r4, [r0, #0]
	ldr	r0, .L_940
	strh	r4, [r0, #0]
	ldr	r0, .L_944
	strh	r4, [r0, #0]
	bl	m4aSoundVSyncOn
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_920:
	.4byte	0x040000d4
.L_924:
	.4byte	0x8500e000
.L_928:
	.4byte	0x85001F80
.L_92c:
	.4byte	EmptyFunction
.L_930:
	.4byte	0x04000208
.L_934:
	.4byte	gMainGameMode
.L_938:
	.4byte	gSubGameMode
.L_93c:
	.4byte	gButtonsHeld
.L_940:
	.4byte	gButtonsHeldCopy
.L_944:
	.4byte	gButtonsPressed

thumb_func_start func_8000948
func_8000948:
	push	{lr}
	bl	LZ77UnCompVram
	pop	{r0}
	bx	r0

	.align 2, 0
