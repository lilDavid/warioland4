.include "macros.s.inc"


thumb_func_start GameScreenSubroutine
GameScreenSubroutine:
	push	{r4, r5, lr}
	bl	func_801BBA8
	mov	r5, #0
	ldr	r0, .L_1b8dc
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #8
	bls	.L_1b8d0
	b	.L_1bb4c
.L_1b8d0:
	lsl	r0, r0, #2
	ldr	r1, .L_1b8e0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_1b8dc:
	.4byte	gSubGameMode
.L_1b8e0:
	.4byte	.L_1b8e4
.L_1b8e4:
	.4byte	.L_1b908
	.4byte	.L_1b934
	.4byte	.L_1b950
	.4byte	.L_1ba4e
	.4byte	.L_1ba98
	.4byte	.L_1bb4c
	.4byte	.L_1bac0
	.4byte	.L_1bb30
	.4byte	.L_1bb44
.L_1b908:
	ldr	r0, .L_1b92c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1b918
	bl	DemoInput_Init
.L_1b918:
	ldr	r0, .L_1b930
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_1b924
	bl	DemoInput_ReadButtons
.L_1b924:
	bl	func_801C1C0
	b	.L_1b942
	.align	2, 0
.L_1b92c:
	.4byte	gUnk_3000C3F
.L_1b930:
	.4byte	gDemoState
.L_1b934:
	bl	func_801C1B4
	bl	func_801D248
	cmp	r0, #0
	bne	.L_1b942
	b	.L_1bb4c
.L_1b942:
	ldr	r1, .L_1b94c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_1bb4c
.L_1b94c:
	.4byte	gSubGameMode
.L_1b950:
	bl	func_80102D8
	bl	func_801C1B4
	ldr	r0, .L_1b9a8
	ldrh	r1, [r0, #0]
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b9fc
	ldr	r0, .L_1b9ac
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1b9fc
	ldr	r0, .L_1b9b0
	ldrb	r0, [r0, #2]
	cmp	r0, #0
	bne	.L_1b9fc
	ldr	r0, .L_1b9b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1b9d0
	ldr	r0, .L_1b9b8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1b9d0
	ldr	r0, .L_1b9bc
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_1b99a
	ldr	r0, .L_1b9c0
	ldr	r1, .L_1b9c4
	ldrb	r2, [r0, #0]
	ldrb	r0, [r1, #1]
	orr	r0, r2
	cmp	r0, #0
	bne	.L_1b9e2
.L_1b99a:
	ldr	r1, .L_1b9c8
	mov	r0, #7
	strh	r0, [r1, #0]
	ldr	r1, .L_1b9cc
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_1b9e2
.L_1b9a8:
	.4byte	gButtonsPressed
.L_1b9ac:
	.4byte	gWarioPauseTimer
.L_1b9b0:
	.4byte	gWarioData
.L_1b9b4:
	.4byte	gUnk_300001B
.L_1b9b8:
	.4byte	gDemoState
.L_1b9bc:
	.4byte	gUnk_3000047
.L_1b9c0:
	.4byte	gCurrentRoom
.L_1b9c4:
	.4byte	gUnk_300002E
.L_1b9c8:
	.4byte	gSubGameMode
.L_1b9cc:
	.4byte	gUnk_300001A
.L_1b9d0:
	ldr	r1, .L_1ba28
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_1ba2c
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_806C304
.L_1b9e2:
	ldr	r0, .L_1ba28
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_1ba06
	ldr	r0, .L_1ba30
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_1b9fc
	mov	r0, #145	@ 0x91
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_1b9fc:
	ldr	r0, .L_1ba28
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	bne	.L_1ba48
.L_1ba06:
	ldr	r0, .L_1ba34
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_1ba18
	ldr	r1, .L_1ba38
	mov	r0, #1
	strb	r0, [r1, #0]
.L_1ba18:
	ldr	r1, .L_1ba3c
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_1ba40
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_1ba48
	.align	2, 0
.L_1ba28:
	.4byte	gSubGameMode
.L_1ba2c:
	.4byte	gPauseFlag
.L_1ba30:
	.4byte	gDemoState
.L_1ba34:
	.4byte	gButtonsHeld
.L_1ba38:
	.4byte	gUnk_30031BE
.L_1ba3c:
	.4byte	gWarioPauseTimer
.L_1ba40:
	bl	func_800FFDC
	bl	func_801009C
.L_1ba48:
	bl	func_806C5FC
	b	.L_1bb4c
.L_1ba4e:
	bl	func_801C1B4
	bl	func_801D2A8
	cmp	r0, #0
	bne	.L_1ba5c
	b	.L_1bb4c
.L_1ba5c:
	ldr	r1, .L_1ba88
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_1ba8c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1ba82
	ldr	r0, .L_1ba90
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1ba82
	ldr	r0, .L_1ba94
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1bb4c
.L_1ba82:
	mov	r5, #1
	b	.L_1bb4c
	.align	2, 0
.L_1ba88:
	.4byte	gSubGameMode
.L_1ba8c:
	.4byte	gPauseFlag
.L_1ba90:
	.4byte	gUnk_3000C37
.L_1ba94:
	.4byte	gUnk_3000025
.L_1ba98:
	bl	func_800FFDC
	ldr	r0, .L_1bab4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	bne	.L_1bb4c
	ldr	r0, .L_1bab8
	ldrh	r0, [r0, #0]
	ldr	r1, .L_1babc
	ldrh	r1, [r1, #0]
	bl	func_806DE8C
	b	.L_1bb4c
.L_1bab4:
	.4byte	gSubGameMode
.L_1bab8:
	.4byte	gUnk_3001892
.L_1babc:
	.4byte	gUnk_3001890
.L_1bac0:
	bl	func_80720E8
	add	r5, r0, #0
	cmp	r5, #0
	beq	.L_1bb04
	cmp	r5, #1
	bne	.L_1baf8
	ldr	r1, .L_1baec
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_1baf0
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_1bae4
	ldr	r0, .L_1baf4
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_1bae8
.L_1bae4:
	bl	m4aMPlayAllStop
.L_1bae8:
	mov	r5, #1
	b	.L_1bb04
.L_1baec:
	.4byte	gSubGameMode
.L_1baf0:
	.4byte	gStageExitType
.L_1baf4:
	.4byte	gUnk_300001B
.L_1baf8:
	cmp	r5, #2
	bne	.L_1bb04
	ldr	r1, .L_1bb20
	mov	r0, #0
	strh	r0, [r1, #0]
	mov	r5, #0
.L_1bb04:
	ldr	r0, .L_1bb24
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_1bb4c
	ldr	r0, .L_1bb28
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_1bb2c
	strh	r1, [r0, #0]
	bl	func_800FFDC
	bl	func_8010154
	b	.L_1bb4c
.L_1bb20:
	.4byte	gSubGameMode
.L_1bb24:
	.4byte	gStageExitType
.L_1bb28:
	.4byte	gButtonsHeld
.L_1bb2c:
	.4byte	gButtonsPressed
.L_1bb30:
	bl	func_80743BC
	cmp	r0, #0
	beq	.L_1bb4c
	ldr	r1, .L_1bb40
	mov	r0, #2
	strh	r0, [r1, #0]
	b	.L_1bb4c
.L_1bb40:
	.4byte	gSubGameMode
.L_1bb44:
	bl	func_801D308
	bl	func_806C5FC
.L_1bb4c:
	ldr	r0, .L_1bba0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	beq	.L_1bb90
	bl	func_806C75C
	bl	func_801D684
	ldr	r4, .L_1bba4
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_1bb6e
	bl	func_806E7F8
	bl	func_8010154
.L_1bb6e:
	bl	func_8074808
	bl	func_8074988
	bl	ProcessSecondarySprites
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_1bb84
	bl	func_801C5D8
.L_1bb84:
	bl	func_801D8C4
	bl	ResetFreeOam
	bl	func_806C794
.L_1bb90:
	bl	func_80101D0
	bl	func_806C130
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_1bba0:
	.4byte	gSubGameMode
.L_1bba4:
	.4byte	gDisableWario


thumb_func_start func_801BBA8
func_801BBA8:
	push	{lr}
	ldr	r0, .L_1bbc0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #6
	bhi	.L_1bbfc
	lsl	r0, r0, #2
	ldr	r1, .L_1bbc4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_1bbc0:
	.4byte	gSubGameMode
.L_1bbc4:
	.4byte	.L_1bbc8
.L_1bbc8:
	.4byte	.L_1bbe4
	.4byte	.L_1bbe4
	.4byte	.L_1bbfc
	.4byte	.L_1bbe4
	.4byte	.L_1bbfc
	.4byte	.L_1bbfc
	.4byte	.L_1bbf0
.L_1bbe4:
	ldr	r0, .L_1bbec
	bl	InterruptCallback_SetVBlank
	b	.L_1bc02
.L_1bbec:
	.4byte	func_801BC0C
.L_1bbf0:
	ldr	r0, .L_1bbf8
	bl	InterruptCallback_SetVBlank
	b	.L_1bc02
.L_1bbf8:
	.4byte	func_801C050
.L_1bbfc:
	ldr	r0, .L_1bc08
	bl	InterruptCallback_SetVBlank
.L_1bc02:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1bc08:
	.4byte	func_801BEA8


thumb_func_start func_801BC0C
func_801BC0C:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r2, .L_1bcf8
	ldr	r0, .L_1bcfc
	str	r0, [r2, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r2, #4]
	ldr	r0, .L_1bd00
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_1bd04
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1bc66
	ldr	r3, .L_1bd08
	ldrh	r0, [r3, #40]	@ 0x28
	cmp	r0, #0
	beq	.L_1bc4a
	ldr	r0, [r3, #36]	@ 0x24
	str	r0, [r2, #0]
	ldr	r0, .L_1bd0c
	str	r0, [r2, #4]
	ldrh	r0, [r3, #40]	@ 0x28
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1bc4a:
	ldrh	r0, [r3, #48]	@ 0x30
	cmp	r0, #0
	beq	.L_1bc66
	ldr	r0, [r3, #44]	@ 0x2c
	str	r0, [r2, #0]
	ldr	r0, .L_1bd10
	str	r0, [r2, #4]
	ldrh	r0, [r3, #48]	@ 0x30
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1bc66:
	ldr	r1, .L_1bcf8
	ldr	r0, .L_1bd14
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1bd18
	str	r0, [r1, #4]
	ldr	r2, .L_1bd1c
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_1bd20
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1bd24
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_1bd28
	ldrh	r1, [r2, #0]
	cmp	r1, #0
	beq	.L_1bc96
	ldr	r0, .L_1bd2c
	strh	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r2, #0]
.L_1bc96:
	ldr	r0, .L_1bd30
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_1bcb8
	ldr	r3, .L_1bd34
	ldr	r2, .L_1bd38
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #1]
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #4
	ldrb	r1, [r2, #2]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #3]
	orr	r0, r1
	strh	r0, [r3, #0]
.L_1bcb8:
	ldr	r1, .L_1bd3c
	ldr	r0, .L_1bd40
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r2, .L_1bd44
	ldr	r1, .L_1bd48
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #2]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #4]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #6]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #8]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #10]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #14]
	strh	r0, [r2, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1bcf8:
	.4byte	0x040000d4
.L_1bcfc:
	.4byte	gOamBuffer
.L_1bd00:
	.4byte	0x84000100
.L_1bd04:
	.4byte	gDisableWario
.L_1bd08:
	.4byte	gWarioData
.L_1bd0c:
	.4byte	0x06010000
.L_1bd10:
	.4byte	0x06010400
.L_1bd14:
	.4byte	gCurrentHeartMeterGfx
.L_1bd18:
	.4byte	0x06011200
.L_1bd1c:
	.4byte	0x80000080
.L_1bd20:
	.4byte	gCurrentHeartGaugeGfx
.L_1bd24:
	.4byte	0x06011600
.L_1bd28:
	.4byte	gUnk_300002C
.L_1bd2c:
	.4byte	0x04000050
.L_1bd30:
	.4byte	gColorFading
.L_1bd34:
	.4byte	0x04000042
.L_1bd38:
	.4byte	gUnk_30000C0
.L_1bd3c:
	.4byte	0x04000054
.L_1bd40:
	.4byte	gUnk_3001870
.L_1bd44:
	.4byte	0x04000010
.L_1bd48:
	.4byte	gUnk_30000A8


thumb_func_start func_801BD4C
func_801BD4C:
	ldr	r2, .L_1be48
	ldr	r0, .L_1be4c
	str	r0, [r2, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r2, #4]
	ldr	r0, .L_1be50
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_1be54
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1bdb8
	ldr	r3, .L_1be58
	ldrh	r0, [r3, #40]	@ 0x28
	cmp	r0, #0
	beq	.L_1bd84
	ldr	r0, [r3, #36]	@ 0x24
	str	r0, [r2, #0]
	ldr	r0, .L_1be5c
	str	r0, [r2, #4]
	ldrh	r0, [r3, #40]	@ 0x28
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1bd84:
	ldrh	r0, [r3, #48]	@ 0x30
	cmp	r0, #0
	beq	.L_1bda0
	ldr	r0, [r3, #44]	@ 0x2c
	str	r0, [r2, #0]
	ldr	r0, .L_1be60
	str	r0, [r2, #4]
	ldrh	r0, [r3, #48]	@ 0x30
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1bda0:
	ldr	r0, .L_1be64
	str	r0, [r2, #0]
	ldr	r0, .L_1be68
	str	r0, [r2, #4]
	ldr	r0, .L_1be6c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1bdb8:
	ldr	r1, .L_1be48
	ldr	r0, .L_1be70
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1be74
	str	r0, [r1, #4]
	ldr	r2, .L_1be78
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_1be7c
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1be80
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_1be84
	ldrh	r1, [r2, #0]
	cmp	r1, #0
	beq	.L_1bde8
	ldr	r0, .L_1be88
	strh	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r2, #0]
.L_1bde8:
	ldr	r0, .L_1be8c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_1be0a
	ldr	r3, .L_1be90
	ldr	r2, .L_1be94
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #1]
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #4
	ldrb	r1, [r2, #2]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #3]
	orr	r0, r1
	strh	r0, [r3, #0]
.L_1be0a:
	ldr	r1, .L_1be98
	ldr	r0, .L_1be9c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r2, .L_1bea0
	ldr	r1, .L_1bea4
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #2]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #4]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #6]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #8]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #10]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #14]
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_1be48:
	.4byte	0x040000d4
.L_1be4c:
	.4byte	gOamBuffer
.L_1be50:
	.4byte	0x84000100
.L_1be54:
	.4byte	gDisableWario
.L_1be58:
	.4byte	gWarioData
.L_1be5c:
	.4byte	0x06010000
.L_1be60:
	.4byte	0x06010400
.L_1be64:
	.4byte	gUnk_30030D0
.L_1be68:
	.4byte	0x05000200
.L_1be6c:
	.4byte	gUnk_3003130
.L_1be70:
	.4byte	gCurrentHeartMeterGfx
.L_1be74:
	.4byte	0x06011200
.L_1be78:
	.4byte	0x80000080
.L_1be7c:
	.4byte	gCurrentHeartGaugeGfx
.L_1be80:
	.4byte	0x06011600
.L_1be84:
	.4byte	gUnk_300002C
.L_1be88:
	.4byte	0x04000050
.L_1be8c:
	.4byte	gColorFading
.L_1be90:
	.4byte	0x04000042
.L_1be94:
	.4byte	gUnk_30000C0
.L_1be98:
	.4byte	0x04000054
.L_1be9c:
	.4byte	gUnk_3001870
.L_1bea0:
	.4byte	0x04000010
.L_1bea4:
	.4byte	gUnk_30000A8


thumb_func_start func_801BEA8
func_801BEA8:
	push	{r4, r5, lr}
	bl	m4aSoundVSync
	ldr	r5, .L_1bfe0
	ldr	r0, .L_1bfe4
	str	r0, [r5, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r5, #4]
	ldr	r0, .L_1bfe8
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	ldr	r0, .L_1bfec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1bf6a
	ldr	r2, .L_1bff0
	ldrh	r0, [r2, #40]	@ 0x28
	cmp	r0, #0
	beq	.L_1bee6
	ldr	r0, [r2, #36]	@ 0x24
	str	r0, [r5, #0]
	ldr	r0, .L_1bff4
	str	r0, [r5, #4]
	ldrh	r0, [r2, #40]	@ 0x28
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_1bee6:
	ldrh	r0, [r2, #48]	@ 0x30
	cmp	r0, #0
	beq	.L_1bf02
	ldr	r0, [r2, #44]	@ 0x2c
	str	r0, [r5, #0]
	ldr	r0, .L_1bff8
	str	r0, [r5, #4]
	ldrh	r0, [r2, #48]	@ 0x30
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_1bf02:
	ldr	r1, .L_1bffc
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_1bf52
	add	r2, r0, #0
	sub	r2, #1
	ldr	r3, .L_1c000
	lsl	r2, r2, #4
	add	r0, r2, r3
	ldr	r0, [r0, #0]
	str	r0, [r5, #0]
	ldr	r0, .L_1c004
	str	r0, [r5, #4]
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r0, [r0, #0]
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #24
	orr	r0, r4
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	add	r0, r3, #0
	add	r0, #8
	add	r0, r2, r0
	ldr	r0, [r0, #0]
	str	r0, [r5, #0]
	ldr	r0, .L_1c008
	str	r0, [r5, #4]
	add	r3, #12
	add	r2, r2, r3
	ldr	r0, [r2, #0]
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	orr	r0, r4
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_1bf52:
	ldr	r0, .L_1c00c
	str	r0, [r5, #0]
	ldr	r0, .L_1c010
	str	r0, [r5, #4]
	ldr	r0, .L_1c014
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_1bf6a:
	ldr	r1, .L_1bfe0
	ldr	r0, .L_1c018
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1c01c
	str	r0, [r1, #4]
	ldr	r2, .L_1c020
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_1c024
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_1c028
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_1c02c
	ldrh	r1, [r2, #0]
	cmp	r1, #0
	beq	.L_1bf9a
	ldr	r0, .L_1c030
	strh	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r2, #0]
.L_1bf9a:
	ldr	r2, .L_1c034
	ldr	r0, .L_1c038
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	sub	r2, #60	@ 0x3c
	ldr	r1, .L_1c03c
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #2]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #4]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #6]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #8]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #10]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #14]
	strh	r0, [r2, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1bfe0:
	.4byte	0x040000d4
.L_1bfe4:
	.4byte	gOamBuffer
.L_1bfe8:
	.4byte	0x84000100
.L_1bfec:
	.4byte	gDisableWario
.L_1bff0:
	.4byte	gWarioData
.L_1bff4:
	.4byte	0x06010000
.L_1bff8:
	.4byte	0x06010400
.L_1bffc:
	.4byte	gUnk_3001940
.L_1c000:
	.4byte	sUnk_82DDD20
.L_1c004:
	.4byte	0x06010800
.L_1c008:
	.4byte	0x06010c00
.L_1c00c:
	.4byte	gUnk_30030D0
.L_1c010:
	.4byte	0x05000200
.L_1c014:
	.4byte	gUnk_3003130
.L_1c018:
	.4byte	gCurrentHeartMeterGfx
.L_1c01c:
	.4byte	0x06011200
.L_1c020:
	.4byte	0x80000080
.L_1c024:
	.4byte	gCurrentHeartGaugeGfx
.L_1c028:
	.4byte	0x06011600
.L_1c02c:
	.4byte	gUnk_300002A
.L_1c030:
	.4byte	0x04000052
.L_1c034:
	.4byte	0x0400004c
.L_1c038:
	.4byte	gUnk_3001860
.L_1c03c:
	.4byte	gUnk_30000A8


thumb_func_start func_801C040
func_801C040:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0

	.align	2, 0


thumb_func_start func_801C050
func_801C050:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r2, .L_1c118
	ldr	r0, .L_1c11c
	str	r0, [r2, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r2, #4]
	ldr	r0, .L_1c120
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_1c124
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1c0aa
	ldr	r3, .L_1c128
	ldrh	r0, [r3, #40]	@ 0x28
	cmp	r0, #0
	beq	.L_1c08e
	ldr	r0, [r3, #36]	@ 0x24
	str	r0, [r2, #0]
	ldr	r0, .L_1c12c
	str	r0, [r2, #4]
	ldrh	r0, [r3, #40]	@ 0x28
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1c08e:
	ldrh	r0, [r3, #48]	@ 0x30
	cmp	r0, #0
	beq	.L_1c0aa
	ldr	r0, [r3, #44]	@ 0x2c
	str	r0, [r2, #0]
	ldr	r0, .L_1c130
	str	r0, [r2, #4]
	ldrh	r0, [r3, #48]	@ 0x30
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_1c0aa:
	ldr	r0, .L_1c134
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_1c0cc
	ldr	r3, .L_1c138
	ldr	r2, .L_1c13c
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #1]
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #4
	ldrb	r1, [r2, #2]
	lsl	r1, r1, #8
	ldrb	r0, [r2, #3]
	orr	r0, r1
	strh	r0, [r3, #0]
.L_1c0cc:
	ldr	r0, .L_1c140
	ldrb	r0, [r0, #0]
	cmp	r0, #128	@ 0x80
	bne	.L_1c164
	ldr	r1, .L_1c144
	ldr	r0, .L_1c148
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_1c14c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_1c150
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_1c154
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_1c158
	ldr	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_1c15c
	and	r0, r2
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_1c160
	ldr	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	and	r0, r2
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	b	.L_1c19e
.L_1c118:
	.4byte	0x040000d4
.L_1c11c:
	.4byte	gOamBuffer
.L_1c120:
	.4byte	0x84000100
.L_1c124:
	.4byte	gDisableWario
.L_1c128:
	.4byte	gWarioData
.L_1c12c:
	.4byte	0x06010000
.L_1c130:
	.4byte	0x06010400
.L_1c134:
	.4byte	gColorFading
.L_1c138:
	.4byte	0x04000042
.L_1c13c:
	.4byte	gUnk_30000C0
.L_1c140:
	.4byte	gStageExitType
.L_1c144:
	.4byte	0x04000020
.L_1c148:
	.4byte	gUnk_3001868
.L_1c14c:
	.4byte	gUnk_300186A
.L_1c150:
	.4byte	gUnk_300186C
.L_1c154:
	.4byte	gUnk_300186E
.L_1c158:
	.4byte	gUnk_3001858
.L_1c15c:
	.4byte	0x0fff0000
.L_1c160:
	.4byte	gUnk_300185C
.L_1c164:
	ldr	r1, .L_1c1a4
	ldr	r0, .L_1c1a8
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r2, .L_1c1ac
	ldr	r1, .L_1c1b0
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #2]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #4]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #6]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #8]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #10]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #0]
	add	r2, #2
	ldrh	r0, [r1, #14]
	strh	r0, [r2, #0]
.L_1c19e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1c1a4:
	.4byte	0x04000054
.L_1c1a8:
	.4byte	gUnk_3001870
.L_1c1ac:
	.4byte	0x04000010
.L_1c1b0:
	.4byte	gUnk_30000A8


thumb_func_start func_801C1B4
func_801C1B4:
	push	{lr}
	bl	func_8070440
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_801C1C0
func_801C1C0:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_1c35c
	mov	r4, #0
	strh	r4, [r3, #0]
	ldr	r2, .L_1c360
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1c364
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_1c368
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1c36c
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r0, .L_1c370
	bl	InterruptCallback_SetVBlank
	ldr	r1, .L_1c374
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	ldr	r0, .L_1c378
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r0, .L_1c37c
	strh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r4, [r0, #0]
	ldr	r0, .L_1c380
	strb	r4, [r0, #0]
	ldr	r0, .L_1c384
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1c218
	bl	InitializeVideoMemory
	bl	func_8073418
	bl	func_8073BA0
.L_1c218:
	ldr	r4, .L_1c388
	ldr	r0, .L_1c38c
	str	r0, [r4, #0]
	ldr	r0, .L_1c390
	str	r0, [r4, #4]
	ldr	r0, .L_1c394
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_80746C0
	ldr	r0, .L_1c398
	str	r0, [r4, #0]
	ldr	r0, .L_1c39c
	str	r0, [r4, #4]
	ldr	r1, .L_1c3a0
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_1c3a4
	str	r0, [r4, #0]
	ldr	r0, .L_1c3a8
	str	r0, [r4, #4]
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_1c3ac
	str	r0, [r4, #0]
	ldr	r0, .L_1c3b0
	str	r0, [r4, #4]
	ldr	r0, .L_1c3b4
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_801C43C
	ldr	r1, .L_1c3b8
.L_1c25a:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_1c25a
	bl	func_806B410
	ldr	r1, .L_1c3b8
.L_1c26c:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_1c26c
	ldr	r0, .L_1c3bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1c298
	ldr	r0, .L_1c384
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_1c298
	bl	func_800FFDC
	bl	func_801009C
.L_1c298:
	bl	func_8010154
	bl	func_801BD4C
	ldr	r1, .L_1c3b8
.L_1c2a2:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_1c2a2
	bl	func_8075F44
	bl	func_801DE7C
	bl	func_80711E8
	bl	func_806BF88
	ldr	r5, .L_1c384
	mov	r4, #0
	ldrsb	r4, [r5, r4]
	cmp	r4, #0
	bne	.L_1c312
	bl	func_801D684
	bl	func_8074808
	mov	r6, #1
	strb	r6, [r5, #0]
	ldr	r3, .L_1c3c0
	mov	r1, #0
	strh	r4, [r3, #0]
	ldr	r2, .L_1c3c4
.L_1c2dc:
	strb	r1, [r2, #0]
	ldr	r0, .L_1c3c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1c312
	ldr	r0, .L_1c3cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1c312
	ldr	r0, .L_1c3d0
	strb	r1, [r0, #0]
	ldr	r0, .L_1c3d4
	ldrb	r0, [r0, #0]
	ldr	r1, .L_1c3d8
	cmp	r0, #0
	bne	.L_1c302
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	beq	.L_1c312
.L_1c302:
	ldrb	r0, [r1, #0]
	cmp	r0, #4
	beq	.L_1c312
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r1, #0
	strh	r0, [r3, #0]
	strb	r6, [r2, #0]
.L_1c312:
	ldr	r1, .L_1c37c
	mov	r0, #15
	strh	r0, [r1, #0]
	ldr	r0, .L_1c3dc
	ldrb	r0, [r0, #26]
	ldr	r5, .L_1c3e0
	cmp	r0, #7
	bhi	.L_1c324
	add	r5, #255	@ 0xff
.L_1c324:
	ldr	r4, .L_1c3bc
	ldr	r2, .L_1c3c8
.L_1c328:
	ldr	r3, .L_1c3e4
	ldr	r6, .L_1c3e8
	ldr	r1, .L_1c3b8
.L_1c32e:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_1c32e
	mov	r0, #0
	strb	r0, [r2, #0]
	strb	r0, [r4, #0]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_1c3ec
	ldr	r2, .L_1c368
	ldrh	r0, [r2, #0]
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_1c360
	ldrh	r0, [r2, #0]
	mov	r1, #16
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_1c408
.L_1c35c:
	.4byte	0x04000208
.L_1c360:
	.4byte	0x04000004
.L_1c364:
	.4byte	0x0000ffef
.L_1c368:
	.4byte	0x04000200
.L_1c36c:
	.4byte	0x0000fffd
.L_1c370:
	.4byte	func_801C040
.L_1c374:
	.4byte	0x04000050
.L_1c378:
	.4byte	0x04000054
.L_1c37c:
	.4byte	gUnk_3001870
.L_1c380:
	.4byte	gUnk_3000022
.L_1c384:
	.4byte	gUnk_3000C3F
.L_1c388:
	.4byte	0x040000d4
.L_1c38c:
	.4byte	sUnk_82DF094
.L_1c390:
	.4byte	0x06010b00
.L_1c394:
	.4byte	0x80000080
.L_1c398:
	.4byte	sUnk_82DDDA0
.L_1c39c:
	.4byte	0x05000200
.L_1c3a0:
	.4byte	0x80000010
.L_1c3a4:
	.4byte	sUnk_82DDDC0
.L_1c3a8:
	.4byte	0x05000240
.L_1c3ac:
	.4byte	sCommonSpritesPal
.L_1c3b0:
	.4byte	0x05000280
.L_1c3b4:
	.4byte	0x80000040
.L_1c3b8:
	.4byte	0x04000006
.L_1c3bc:
	.4byte	gPauseFlag
.L_1c3c0:
	.4byte	gWarioPauseTimer
.L_1c3c4:
	.4byte	gDisableWario
.L_1c3c8:
	.4byte	gHasTemporarySave
.L_1c3cc:
	.4byte	gUnk_3000025
.L_1c3d0:
	.4byte	gUnk_3000047
.L_1c3d4:
	.4byte	gCurrentPassage
.L_1c3d8:
	.4byte	gCurrentStageNumber
.L_1c3dc:
	.4byte	gCurrentRoomHeader
.L_1c3e0:
	.4byte	0x00003e41
.L_1c3e4:
	.4byte	gUnk_3000037
.L_1c3e8:
	.4byte	func_801BC0C
.L_1c3ec:
	ldr	r3, .L_1c424
	strh	r0, [r3, #0]
	ldr	r2, .L_1c428
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1c42c
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_1c430
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1c434
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
.L_1c408:
	ldr	r0, .L_1c438
	strh	r5, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #190	@ 0xbe
	lsl	r0, r0, #7
	strh	r0, [r1, #0]
	add	r0, r6, #0
	bl	InterruptCallback_SetVBlank
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1c424:
	.4byte	0x04000208
.L_1c428:
	.4byte	0x04000004
.L_1c42c:
	.4byte	0x0000ffef
.L_1c430:
	.4byte	0x04000200
.L_1c434:
	.4byte	0x0000fffd
.L_1c438:
	.4byte	0x04000050


thumb_func_start func_801C43C
func_801C43C:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_1c4bc
	mov	r2, #0
	ldrsb	r2, [r0, r2]
	cmp	r2, #0
	bne	.L_1c476
	ldr	r0, .L_1c4c0
	mov	r1, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_1c4c4
	strb	r1, [r0, #0]
	ldr	r0, .L_1c4c8
	strb	r1, [r0, #0]
	ldr	r0, .L_1c4cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1c476
	ldr	r2, .L_1c4d0
	ldr	r0, .L_1c4d4
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_1c4d8
	ldr	r0, .L_1c4dc
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
.L_1c476:
	ldr	r2, .L_1c4e0
	ldrh	r1, [r2, #0]
	mov	r0, #196	@ 0xc4
	lsl	r0, r0, #6
	cmp	r1, r0
	bne	.L_1c48e
	mov	r0, #0
	mov	r1, #50	@ 0x32
	strb	r1, [r2, #1]
	strb	r0, [r2, #31]
	ldr	r1, .L_1c4e4
	strb	r0, [r1, #0]
.L_1c48e:
	ldrb	r0, [r2, #26]
	cmp	r0, #1
	bne	.L_1c498
	mov	r0, #2
	strb	r0, [r2, #26]
.L_1c498:
	ldr	r0, .L_1c4e8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_1c504
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_1c4ac
	b	.L_1c5ca
.L_1c4ac:
	ldrb	r0, [r2, #1]
	cmp	r0, #23
.L_1c4b0:
	bne	.L_1c4ec
	mov	r0, #41	@ 0x29
	bl	m4aSongNumStart
	b	.L_1c5ca
	.align	2, 0
.L_1c4bc:
	.4byte	gPauseFlag
.L_1c4c0:
	.4byte	gUnk_30031B8
.L_1c4c4:
	.4byte	gUnk_30031BA
.L_1c4c8:
	add	r1, #189	@ 0xbd
	lsl	r0, r0, #12
.L_1c4cc:
	.4byte	gHasTemporarySave
.L_1c4d0:
	.4byte	gUnk_3001938
.L_1c4d4:
	.4byte	sUnk_82DD0EC
.L_1c4d8:
	add	r0, r1, r5
	lsl	r0, r0, #12
.L_1c4dc:
	.4byte	sUnk_82DD0FC
.L_1c4e0:
	.4byte	gWarioData
.L_1c4e4:
	.4byte	gUnk_30031BE
.L_1c4e8:
	.4byte	gUnk_3000C3F
.L_1c4ec:
	cmp	r0, #28
	bne	.L_1c4f8
	mov	r0, #35	@ 0x23
	bl	m4aSongNumStart
	b	.L_1c5ca
.L_1c4f8:
	cmp	r0, #35	@ 0x23
	bne	.L_1c5ca
	mov	r0, #39	@ 0x27
	bl	m4aSongNumStart
	b	.L_1c5ca
.L_1c504:
	ldr	r0, .L_1c570
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_1c5c4
	ldr	r1, .L_1c574
	add	r0, r2, #0
	mov	r2, #60	@ 0x3c
	bl	memcpy
	ldr	r3, .L_1c578
	ldr	r0, .L_1c57c
	ldr	r0, [r0, #0]
	str	r0, [r3, #0]
	ldr	r1, .L_1c580
	ldr	r0, .L_1c584
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r2, .L_1c588
	ldr	r0, .L_1c58c
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_1c590
	ldr	r0, .L_1c594
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_1c598
	ldr	r1, .L_1c59c
	add	r0, r2, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
.L_1c548:
	ldr	r0, .L_1c5a0
	ldmia	r2!, {r1, r5, r6}
	stmia	r0!, {r1, r5, r6}
	ldr	r0, .L_1c5a4
	strb	r4, [r0, #0]
	ldr	r0, .L_1c5a8
	ldrb	r0, [r0, #0]
	cmp	r0, #5
.L_1c558:
	beq	.L_1c562
	ldr	r0, .L_1c5ac
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_1c5b8
.L_1c562:
	ldr	r0, .L_1c5b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
.L_1c568:
	bne	.L_1c5b4
	mov	r0, #8
	b	.L_1c5c2
	.align	2, 0
.L_1c570:
	.4byte	gHasTemporarySave
.L_1c574:
	.4byte	sUnk_82DD0A8
.L_1c578:
	.4byte	gHeartMeter
.L_1c57c:
	.4byte	sUnk_82DD0E4
.L_1c580:
	add	r4, r2, r4
	lsl	r0, r0, #12
.L_1c584:
	.4byte	sUnk_82DD0E8
.L_1c588:
	.4byte	gUnk_3001930
.L_1c58c:
	.4byte	sUnk_82DD0EC
.L_1c590:
	.4byte	gUnk_3001940
.L_1c594:
	.4byte	sUnk_82DD0F4
.L_1c598:
	.4byte	sUnk_82DD104
.L_1c59c:
	.4byte	gUnk_3001950
.L_1c5a0:
	.4byte	gUnk_300195C
.L_1c5a4:
	add	r1, #190	@ 0xbe
	lsl	r0, r0, #12
.L_1c5a8:
	.4byte	gCurrentPassage
.L_1c5ac:
	.4byte	gCurrentStageNumber
.L_1c5b0:
	.4byte	gDifficulty
.L_1c5b4:
	mov	r0, #4
	b	.L_1c5c2
.L_1c5b8:
	ldr	r0, .L_1c5d0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_1c5c4
	mov	r0, #1
.L_1c5c2:
	strb	r0, [r3, #0]
.L_1c5c4:
	ldr	r1, .L_1c5d4
	mov	r0, #0
	strb	r0, [r1, #0]
.L_1c5ca:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1c5d0:
	.4byte	gDifficulty
.L_1c5d4:
	.4byte	gUnk_30031BC


thumb_func_start func_801C5D8
func_801C5D8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	bl	func_801C8C4
	ldr	r7, .L_1c668
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	bls	.L_1c5f8
	mov	r1, #0
	strb	r1, [r7, #4]
	ldr	r0, .L_1c66c
	strb	r1, [r0, #0]
.L_1c5f8:
	ldr	r0, .L_1c66c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1c60e
	ldr	r0, .L_1c670
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1c60e
	b	.L_1c880
.L_1c60e:
	ldr	r6, .L_1c674
	ldr	r4, .L_1c678
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #3
	add	r6, r0, r6
	mov	r8, r1
	mov	r5, r8
	ldrh	r1, [r7, #18]
	lsr	r1, r1, #2
	ldr	r3, .L_1c67c
	ldrh	r0, [r3, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	str	r1, [sp, #0]
	ldrh	r1, [r7, #20]
	lsr	r1, r1, #2
	ldr	r2, .L_1c680
.L_1c630:
	ldrh	r0, [r2, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	str	r1, [sp, #4]
	mov	r0, #2
	str	r0, [sp, #8]
	ldr	r0, .L_1c684
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1c648
	mov	r1, #1
	str	r1, [sp, #8]
.L_1c648:
	ldr	r0, .L_1c688
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_1c714
	ldr	r7, .L_1c668
	ldrh	r1, [r7, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1c690
	ldr	r1, .L_1c68c
	ldrb	r0, [r2, #0]
	sub	r0, #1
	lsl	r0, r0, #3
	b	.L_1c69a
.L_1c668:
	.4byte	gWarioData
.L_1c66c:
	.4byte	gUnk_30019F0
.L_1c670:
	.4byte	gMainTimer
.L_1c674:
	.4byte	gOamBuffer
.L_1c678:
	.4byte	gOamSlotsUsed
.L_1c67c:
	.4byte	gUnk_300187A
.L_1c680:
	.4byte	gUnk_300187C
.L_1c684:
	.4byte	gUnk_3000033
.L_1c688:
	.4byte	gUnk_3001930
.L_1c68c:
	.4byte	sUnk_82DDCD0
.L_1c690:
	ldr	r1, .L_1c890
	ldrb	r0, [r2, #0]
	sub	r0, #1
	lsl	r0, r0, #3
	add	r1, #4
.L_1c69a:
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	str	r0, [r2, #4]
	add	r4, r0, #0
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r5, r8
	bge	.L_1c714
	ldr	r1, .L_1c894
	ldr	r0, .L_1c898
	mov	sl, r0
	ldr	r2, .L_1c89c
	mov	ip, r2
	ldr	r0, [sp, #8]
	lsl	r7, r0, #2
	lsl	r0, r5, #3
	add	r3, r0, r1
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	mov	r2, r8
	sub	r5, r2, r5
.L_1c6d0:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r2, [sp, #0]
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	orr	r0, r7
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	sub	r5, #1
	cmp	r5, #0
	bne	.L_1c6d0
	mov	r5, r8
.L_1c714:
	ldr	r1, .L_1c8a0
	ldr	r4, [r1, #32]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r5, r8
	bge	.L_1c784
	ldr	r1, .L_1c894
	ldr	r2, .L_1c898
	mov	sl, r2
	ldr	r7, .L_1c89c
	mov	ip, r7
	ldr	r0, [sp, #8]
	lsl	r7, r0, #2
	lsl	r0, r5, #3
	add	r3, r0, r1
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	mov	r2, r8
	sub	r5, r2, r5
.L_1c73e:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	add	r0, #2
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r2, [sp, #0]
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	orr	r0, r7
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	sub	r5, #1
	cmp	r5, #0
	bne	.L_1c73e
	mov	r5, r8
.L_1c784:
	ldr	r1, .L_1c8a4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_1c87a
	ldr	r0, .L_1c8a8
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_1c87a
	ldr	r0, .L_1c8ac
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	sub	r0, #4
	mov	ip, r0
	mov	r2, #0
	mov	r9, r2
	ldr	r0, .L_1c8b0
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	cmp	r1, #0
	bne	.L_1c7b6
	mov	r7, ip
	cmp	r7, #0
	blt	.L_1c87a
.L_1c7b6:
	ldr	r0, .L_1c8a0
	ldr	r4, [r0, #32]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, #31
	mov	r1, ip
	and	r1, r0
	mov	ip, r1
	ldr	r2, .L_1c8b4
	lsl	r3, r1, #1
	add	r0, r3, r2
	ldrh	r1, [r0, #0]
	lsr	r1, r1, #2
	ldr	r7, .L_1c8b8
	ldrh	r0, [r7, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	str	r1, [sp, #0]
	add	r2, #64	@ 0x40
	add	r3, r3, r2
	ldrh	r1, [r3, #0]
	lsr	r1, r1, #2
	ldr	r2, .L_1c8bc
	ldrh	r0, [r2, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	str	r1, [sp, #4]
	mov	r7, r9
	add	r7, #1
	cmp	r5, r8
	bge	.L_1c85c
	ldr	r1, .L_1c894
	ldr	r0, [sp, #8]
	lsl	r0, r0, #2
	mov	sl, r0
	lsl	r0, r5, #3
	add	r3, r0, r1
	mov	r1, #2
	lsl	r1, r1, #4
	mov	r9, r1
	mov	r2, r8
	sub	r5, r2, r5
.L_1c80c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r2, [sp, #0]
	add	r1, r0, r2
	ldr	r0, .L_1c898
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_1c89c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
.L_1c834:
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, sl
	orr	r0, r1
	mov	r1, #15
	and	r0, r1
	mov	r2, r9
	orr	r0, r2
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	sub	r5, #1
	cmp	r5, #0
	bne	.L_1c80c
	mov	r5, r8
.L_1c85c:
	mov	r9, r7
	cmp	r7, #2
	bgt	.L_1c87a
	lsl	r0, r7, #1
	add	r0, r0, r7
	mov	r7, ip
	sub	r7, r7, r0
	mov	ip, r7
	ldr	r1, .L_1c8b0
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	bne	.L_1c7b6
	cmp	r7, #0
	bge	.L_1c7b6
.L_1c87a:
	mov	r7, r8
	ldr	r2, .L_1c8c0
	strb	r7, [r2, #0]
.L_1c880:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1c890:
	.4byte	sUnk_82DDCD0
.L_1c894:
	.4byte	gOamBuffer
.L_1c898:
	.4byte	0x000001ff
.L_1c89c:
	.4byte	0xfffffe00
.L_1c8a0:
	.4byte	gWarioData
.L_1c8a4:
	.4byte	gUnk_3001938
.L_1c8a8:
	.4byte	gMainTimer
.L_1c8ac:
	.4byte	gUnk_30031B8
.L_1c8b0:
	.4byte	gUnk_30031BA
.L_1c8b4:
	.4byte	gUnk_3003138
.L_1c8b8:
	.4byte	gUnk_300187A
.L_1c8bc:
	.4byte	gUnk_300187C
.L_1c8c0:
	.4byte	gOamSlotsUsed


thumb_func_start func_801C8C4
func_801C8C4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	ldr	r0, .L_1c90c
	mov	r8, r0
	ldr	r2, .L_1c910
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #3
	add	r8, r0
	str	r1, [sp, #4]
	add	r7, r1, #0
	mov	r1, #2
	str	r1, [sp, #0]
	ldr	r0, .L_1c914
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1c8f0
	mov	r2, #1
	str	r2, [sp, #0]
.L_1c8f0:
	mov	r5, #0
	ldr	r1, .L_1c918
	ldrb	r0, [r1, #0]
	sub	r0, #1
	add	r3, r1, #0
	cmp	r0, #13
	bls	.L_1c900
	b	.L_1cb2c
.L_1c900:
	lsl	r0, r0, #2
	ldr	r1, .L_1c91c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_1c90c:
	.4byte	gOamBuffer
.L_1c910:
	.4byte	gOamSlotsUsed
.L_1c914:
	.4byte	gUnk_3000033
.L_1c918:
	.4byte	gUnk_3001950
.L_1c91c:
	.4byte	.L_1c920
.L_1c920:
	.4byte	.L_1c958
	.4byte	.L_1c96e
	.4byte	.L_1c97c
	.4byte	.L_1c994
	.4byte	.L_1c9cc
	.4byte	.L_1ca5e
	.4byte	.L_1c9cc
	.4byte	.L_1ca5e
	.4byte	.L_1c9cc
	.4byte	.L_1ca5e
	.4byte	.L_1ca90
	.4byte	.L_1caac
	.4byte	.L_1cae4
	.4byte	.L_1cb00
.L_1c958:
	ldrb	r0, [r3, #0]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #0]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	ldr	r1, .L_1c974
	ldrh	r0, [r1, #18]
	strh	r0, [r3, #4]
	ldrh	r0, [r1, #20]
	strh	r0, [r3, #6]
.L_1c96e:
	ldr	r0, .L_1c978
	b	.L_1c996
	.align	2, 0
.L_1c974:
	.4byte	gWarioData
.L_1c978:
	.4byte	sUnk_82E11E4
.L_1c97c:
	ldrb	r0, [r3, #0]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #0]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	ldr	r1, .L_1c9c4
	ldrh	r0, [r1, #18]
	strh	r0, [r3, #4]
	ldrh	r0, [r1, #20]
	sub	r0, #24
	strh	r0, [r3, #6]
.L_1c994:
	ldr	r0, .L_1c9c8
.L_1c996:
	ldrb	r1, [r3, #2]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r3, #1]
	add	r4, r0, #0
	ldrh	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_1c9be
	mov	r0, #0
	strb	r0, [r3, #1]
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1c9be
	strb	r0, [r3, #0]
.L_1c9be:
	mov	r9, r4
	b	.L_1cb2c
	.align	2, 0
.L_1c9c4:
	.4byte	gWarioData
.L_1c9c8:
	.4byte	sUnk_82E12BC
.L_1c9cc:
	ldrb	r0, [r3, #0]
	add	r4, r0, #1
	mov	r0, #0
	strb	r4, [r3, #0]
	strb	r0, [r3, #1]
	strb	r0, [r3, #2]
	mov	r0, #8
	mov	ip, r0
	ldr	r2, .L_1c9fc
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1ca28
	ldr	r0, .L_1ca00
	str	r0, [r3, #8]
	ldrb	r0, [r2, #1]
	cmp	r0, #44	@ 0x2c
	bne	.L_1ca0c
	ldr	r5, .L_1ca04
	ldr	r1, .L_1ca08
	mov	ip, r1
	b	.L_1ca52
	.align	2, 0
.L_1c9fc:
	.4byte	gWarioData
.L_1ca00:
	.4byte	sUnk_82E1304
.L_1ca04:
	.4byte	0x0000fff4
.L_1ca08:
	.4byte	0x0000ffd8
.L_1ca0c:
	lsl	r0, r4, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bne	.L_1ca1c
	ldr	r5, .L_1ca18
	b	.L_1ca52
.L_1ca18:
	.4byte	0x0000ffd8
.L_1ca1c:
	cmp	r0, #10
	bne	.L_1ca52
	ldr	r5, .L_1ca24
	b	.L_1ca52
.L_1ca24:
	.4byte	0x0000ffe8
.L_1ca28:
	ldr	r0, .L_1ca44
	str	r0, [r3, #8]
	ldrb	r0, [r2, #1]
	cmp	r0, #44	@ 0x2c
	bne	.L_1ca38
	mov	r5, #12
	ldr	r0, .L_1ca48
	mov	ip, r0
.L_1ca38:
	lsl	r0, r4, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bne	.L_1ca4c
	mov	r5, #40	@ 0x28
	b	.L_1ca52
.L_1ca44:
	.4byte	sUnk_82E1334
.L_1ca48:
	.4byte	0x0000ffd8
.L_1ca4c:
	cmp	r0, #10
	bne	.L_1ca52
	mov	r5, #24
.L_1ca52:
	ldrh	r0, [r2, #18]
	add	r0, r0, r5
	strh	r0, [r3, #4]
	ldrh	r0, [r2, #20]
	add	r0, ip
	strh	r0, [r3, #6]
.L_1ca5e:
	ldr	r2, .L_1ca8c
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r3, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1ca86
	mov	r0, #0
	strb	r0, [r3, #1]
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1ca86
	strb	r0, [r3, #0]
.L_1ca86:
	ldr	r1, [r3, #8]
	mov	r9, r1
	b	.L_1cb2c
.L_1ca8c:
	.4byte	sUnk_82E1304
.L_1ca90:
	ldrb	r0, [r3, #0]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #0]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	ldr	r1, .L_1cadc
	ldrh	r0, [r1, #18]
	strh	r0, [r3, #4]
	ldrh	r0, [r1, #20]
	sub	r0, #40	@ 0x28
	strh	r0, [r3, #6]
	ldr	r0, .L_1cae0
	str	r0, [r3, #8]
.L_1caac:
	ldr	r2, .L_1cae0
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r3, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1cad4
	mov	r0, #0
	strb	r0, [r3, #1]
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1cad4
	strb	r0, [r3, #0]
.L_1cad4:
	ldr	r2, [r3, #8]
	mov	r9, r2
	b	.L_1cb2c
	.align	2, 0
.L_1cadc:
	.4byte	gWarioData
.L_1cae0:
	.4byte	sUnk_82E14FC
.L_1cae4:
	ldrb	r0, [r3, #0]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r3, #0]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	ldr	r1, .L_1cbec
	ldrh	r0, [r1, #18]
	strh	r0, [r3, #4]
	ldrh	r0, [r1, #20]
	add	r0, #32
	strh	r0, [r3, #6]
	ldr	r0, .L_1cbf0
	str	r0, [r3, #8]
.L_1cb00:
	ldr	r2, .L_1cbf0
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r3, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1cb28
	mov	r0, #0
	strb	r0, [r3, #1]
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1cb28
	strb	r0, [r3, #0]
.L_1cb28:
	ldr	r0, [r3, #8]
	mov	r9, r0
.L_1cb2c:
	ldrb	r0, [r3, #0]
	ldr	r1, .L_1cbf4
	mov	sl, r1
	cmp	r0, #0
	beq	.L_1cbd6
	ldrb	r0, [r3, #1]
	add	r0, #1
	strb	r0, [r3, #1]
	ldrh	r1, [r3, #4]
	lsr	r1, r1, #2
	ldr	r0, .L_1cbf8
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldrh	r1, [r3, #6]
	lsr	r1, r1, #2
	ldr	r0, .L_1cbfc
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r9, r0
	mov	r2, r9
	ldr	r3, [r2, #0]
	ldrh	r0, [r3, #0]
	ldr	r1, [sp, #4]
	add	r1, r1, r0
	str	r1, [sp, #4]
	add	r3, #2
	cmp	r7, r1
	bge	.L_1cbd6
	ldr	r0, .L_1cc00
	lsl	r1, r4, #16
	asr	r1, r1, #16
	mov	ip, r1
	ldr	r2, [sp, #0]
	lsl	r6, r2, #2
	lsl	r1, r7, #3
	add	r4, r1, r0
	ldr	r0, [sp, #4]
	sub	r7, r0, r7
.L_1cb88:
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r2, r8
	strh	r1, [r2, #0]
	mov	r0, #2
	add	r8, r0
	add	r0, r5, r1
	strb	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r2, r8
	strh	r1, [r2, #0]
	mov	r0, #2
	add	r8, r0
	add	r1, ip
	ldr	r2, .L_1cc04
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_1cc08
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	mov	r1, r8
	strh	r0, [r1, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	orr	r0, r6
	strb	r0, [r4, #5]
	mov	r2, #4
	add	r8, r2
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_1cb88
	ldr	r7, [sp, #4]
.L_1cbd6:
	mov	r3, sl
	ldrb	r0, [r3, #0]
	sub	r0, #1
	cmp	r0, #5
	bls	.L_1cbe2
	b	.L_1ce70
.L_1cbe2:
	lsl	r0, r0, #2
	ldr	r1, .L_1cc0c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1cbec:
	.4byte	gWarioData
.L_1cbf0:
	.4byte	sUnk_82E1304
.L_1cbf4:
	.4byte	gUnk_300195C
.L_1cbf8:
	.4byte	gUnk_300187A
.L_1cbfc:
	.4byte	gUnk_300187C
.L_1cc00:
	.4byte	gOamBuffer
.L_1cc04:
	.4byte	0x000001ff
.L_1cc08:
	.4byte	0xfffffe00
.L_1cc0c:
	.4byte	.L_1cc10
.L_1cc10:
	.4byte	.L_1cc28
	.4byte	.L_1cc7e
	.4byte	.L_1cca0
	.4byte	.L_1cd14
	.4byte	.L_1cd7c
	.4byte	.L_1ce40
.L_1cc28:
	mov	r1, sl
	ldrb	r0, [r1, #0]
	add	r0, #1
	mov	r1, #0
	mov	r2, sl
	strb	r0, [r2, #0]
	strb	r1, [r2, #1]
	strb	r1, [r2, #2]
	ldr	r2, .L_1cc58
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1cc60
	ldr	r0, .L_1cc5c
	mov	r3, sl
	str	r0, [r3, #8]
	ldrb	r0, [r2, #1]
	mov	r5, #0
	cmp	r0, #15
	bne	.L_1cc70
	mov	r5, #32
	b	.L_1cc70
	.align	2, 0
.L_1cc58:
	.4byte	gWarioData
.L_1cc5c:
	.4byte	sUnk_82E1294
.L_1cc60:
	ldr	r0, .L_1cc98
	mov	r1, sl
	str	r0, [r1, #8]
	ldrb	r0, [r2, #1]
	mov	r5, #0
	cmp	r0, #15
	bne	.L_1cc70
	ldr	r5, .L_1cc9c
.L_1cc70:
	ldrh	r0, [r2, #18]
	add	r0, r0, r5
	mov	r3, sl
	strh	r0, [r3, #4]
	ldrh	r0, [r2, #20]
	sub	r0, #80	@ 0x50
	strh	r0, [r3, #6]
.L_1cc7e:
	ldr	r2, .L_1cc98
	mov	r1, sl
	ldrb	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r1, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcs	.L_1cc92
	b	.L_1ce6a
.L_1cc92:
	mov	r0, #0
	mov	r3, sl
	b	.L_1ce54
.L_1cc98:
	.4byte	sUnk_82E126C
.L_1cc9c:
	.4byte	0x0000ffe0
.L_1cca0:
	mov	r1, sl
	ldrb	r0, [r1, #0]
	add	r0, #1
	mov	r1, #0
	mov	r2, sl
	strb	r0, [r2, #0]
	strb	r1, [r2, #1]
	strb	r1, [r2, #2]
	ldr	r2, .L_1ccc8
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1ccd0
	ldr	r0, .L_1cccc
	mov	r3, sl
	str	r0, [r3, #8]
	mov	r5, #32
	b	.L_1ccd8
	.align	2, 0
.L_1ccc8:
	.4byte	gWarioData
.L_1cccc:
	.4byte	sUnk_82E13DC
.L_1ccd0:
	ldr	r0, .L_1cd08
	mov	r1, sl
	str	r0, [r1, #8]
	ldr	r5, .L_1cd0c
.L_1ccd8:
	ldr	r4, .L_1cd10
	ldrh	r0, [r2, #18]
	add	r0, r0, r5
	strh	r0, [r4, #4]
	ldrh	r0, [r2, #20]
	add	r1, r0, #0
	sub	r1, #32
	strh	r1, [r4, #6]
	sub	r0, #104	@ 0x68
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #4]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #0
	bne	.L_1cd14
	mov	r0, #0
	strb	r0, [r4, #0]
	mov	sl, r4
	b	.L_1ce70
	.align	2, 0
.L_1cd08:
	.4byte	sUnk_82E140C
.L_1cd0c:
	.4byte	0x0000ffe0
.L_1cd10:
	.4byte	gUnk_300195C
.L_1cd14:
	ldr	r4, .L_1cd58
	ldr	r2, .L_1cd5c
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r4, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1cd6e
	mov	r0, #0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #2]
	add	r0, #1
	strb	r0, [r4, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bne	.L_1cd60
	ldrh	r0, [r4, #6]
	sub	r0, #120	@ 0x78
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #4]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #0
	bne	.L_1cd6e
	mov	r0, #4
	strb	r0, [r4, #2]
	b	.L_1cd6e
	.align	2, 0
.L_1cd58:
	.4byte	gUnk_300195C
.L_1cd5c:
	.4byte	sUnk_82E13DC
.L_1cd60:
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1cd6e
	strb	r0, [r4, #0]
.L_1cd6e:
	ldr	r0, .L_1cd78
	ldr	r2, [r0, #8]
	mov	r9, r2
	mov	sl, r0
	b	.L_1ce70
.L_1cd78:
	.4byte	gUnk_300195C
.L_1cd7c:
	mov	r5, #0
	mov	ip, r5
	mov	r3, sl
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	mov	r0, ip
	strb	r0, [r3, #1]
	strb	r0, [r3, #2]
	ldr	r2, .L_1cdac
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1cde8
	ldrb	r0, [r2, #1]
	cmp	r0, #9
	bne	.L_1cdb8
	ldr	r0, .L_1cdb0
	str	r0, [r3, #8]
	mov	r5, #44	@ 0x2c
	ldr	r1, .L_1cdb4
	mov	ip, r1
	b	.L_1cdbe
.L_1cdac:
	.4byte	gWarioData
.L_1cdb0:
	.4byte	sUnk_82E143C
.L_1cdb4:
	.4byte	0x0000ffe0
.L_1cdb8:
	ldr	r0, .L_1cddc
	mov	r3, sl
	str	r0, [r3, #8]
.L_1cdbe:
	ldrb	r0, [r2, #1]
	cmp	r0, #13
	beq	.L_1cdc8
	cmp	r0, #8
	bne	.L_1ce32
.L_1cdc8:
	lsl	r0, r5, #16
	ldr	r1, .L_1cde0
	add	r0, r0, r1
	lsr	r5, r0, #16
	mov	r3, ip
	lsl	r0, r3, #16
	ldr	r1, .L_1cde4
	add	r0, r0, r1
	b	.L_1ce2e
	.align	2, 0
.L_1cddc:
	.4byte	sUnk_82E149C
.L_1cde0:
	.4byte	0xfff00000
.L_1cde4:
	.4byte	0xff980000
.L_1cde8:
	.2byte	0x7850
	cmp	r0, #9
	bne	.L_1ce0c
	ldr	r0, .L_1ce08
	mov	r3, sl
	str	r0, [r3, #8]
	mov	r0, ip
	sub	r0, #44	@ 0x2c
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r0, ip
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	ip, r0
	b	.L_1ce12
.L_1ce08:
	.4byte	sUnk_82E149C
.L_1ce0c:
	ldr	r0, .L_1cf38
	mov	r1, sl
	str	r0, [r1, #8]
.L_1ce12:
	ldrb	r0, [r2, #1]
	cmp	r0, #13
	beq	.L_1ce1c
	cmp	r0, #8
	bne	.L_1ce32
.L_1ce1c:
	lsl	r0, r5, #16
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #13
	add	r0, r0, r3
	lsr	r5, r0, #16
	mov	r1, ip
	lsl	r0, r1, #16
	ldr	r3, .L_1cf3c
	add	r0, r0, r3
.L_1ce2e:
	lsr	r0, r0, #16
	mov	ip, r0
.L_1ce32:
	ldrh	r0, [r2, #18]
	add	r0, r0, r5
	mov	r1, sl
	strh	r0, [r1, #4]
	ldrh	r0, [r2, #20]
	add	r0, ip
	strh	r0, [r1, #6]
.L_1ce40:
	ldr	r2, .L_1cf40
	mov	r3, sl
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r3, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1ce6a
	mov	r0, #0
.L_1ce54:
	strb	r0, [r3, #1]
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	ldrb	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1ce6a
	strb	r0, [r3, #0]
.L_1ce6a:
	mov	r0, sl
	ldr	r0, [r0, #8]
	mov	r9, r0
.L_1ce70:
	mov	r1, sl
	ldrb	r0, [r1, #0]
	ldr	r6, .L_1cf44
	cmp	r0, #0
	beq	.L_1cf20
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrh	r1, [r1, #4]
	lsr	r1, r1, #2
	ldr	r0, .L_1cf48
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	mov	r2, sl
	ldrh	r1, [r2, #6]
	lsr	r1, r1, #2
	ldr	r0, .L_1cf4c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r9, r0
	mov	r0, r9
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	ldr	r1, [sp, #4]
	add	r1, r1, r0
	str	r1, [sp, #4]
	add	r3, #2
	cmp	r7, r1
	bge	.L_1cf20
	ldr	r0, .L_1cf50
	lsl	r1, r4, #16
	asr	r1, r1, #16
	mov	sl, r1
	ldr	r2, [sp, #0]
	lsl	r2, r2, #2
	mov	ip, r2
	lsl	r1, r7, #3
	add	r4, r1, r0
	ldr	r0, [sp, #4]
	sub	r7, r0, r7
.L_1ced0:
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r2, r8
	strh	r1, [r2, #0]
	mov	r0, #2
	add	r8, r0
	add	r0, r5, r1
	strb	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r2, r8
	strh	r1, [r2, #0]
	mov	r0, #2
	add	r8, r0
	add	r1, sl
	ldr	r2, .L_1cf54
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_1cf58
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	mov	r1, r8
	strh	r0, [r1, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r2, ip
	orr	r0, r2
	strb	r0, [r4, #5]
	mov	r0, #4
	add	r8, r0
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_1ced0
	ldr	r7, [sp, #4]
.L_1cf20:
	mov	r5, #0
	mov	ip, r5
	ldrb	r0, [r6, #0]
	sub	r0, #1
	cmp	r0, #7
	bls	.L_1cf2e
	b	.L_1d142
.L_1cf2e:
	lsl	r0, r0, #2
	ldr	r1, .L_1cf5c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1cf38:
	.4byte	sUnk_82E143C
.L_1cf3c:
	.4byte	0xff980000
.L_1cf40:
	.4byte	sUnk_82E149C
.L_1cf44:
	.4byte	gUnk_3001940
.L_1cf48:
	.4byte	gUnk_300187A
.L_1cf4c:
	.4byte	gUnk_300187C
.L_1cf50:
	.4byte	gOamBuffer
.L_1cf54:
	.4byte	0x000001ff
.L_1cf58:
	.4byte	0xfffffe00
.L_1cf5c:
	.4byte	.L_1cf60
.L_1cf60:
	.4byte	.L_1cf80
	.4byte	.L_1cfc8
	.4byte	.L_1cfdc
	.4byte	.L_1d00c
	.4byte	.L_1d048
	.4byte	.L_1d078
	.4byte	.L_1d102
.L_1cf7c:
	bne	.L_1cfa8
	lsr	r1, r0, #32
.L_1cf80:
	ldr	r2, .L_1cf94
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
.L_1cf88:
	cmp	r0, #0
	beq	.L_1cf9c
	ldr	r0, .L_1cf98
	ldr	r0, [r0, #0]
	b	.L_1cfa0
	.align	2, 0
.L_1cf94:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_1cf98:
	.4byte	sUnk_82DDCF0
.L_1cf9c:
	ldr	r0, .L_1cfb0
	ldr	r0, [r0, #4]
.L_1cfa0:
	mov	r9, r0
	ldrb	r0, [r2, #1]
	cmp	r0, #4
	bne	.L_1cfb8
.L_1cfa8:
	mov	r1, ip
	lsl	r0, r1, #16
	ldr	r2, .L_1cfb4
	b	.L_1d0fa
.L_1cfb0:
	.4byte	sUnk_82DDCF0
.L_1cfb4:
	.4byte	0xfff00000
.L_1cfb8:
	.2byte	0x4663
	lsl	r0, r3, #16
	ldr	r1, .L_1cfc4
	add	r0, r0, r1
	b	.L_1d0fc
	.align	2, 0
.L_1cfc4:
	.4byte	0xfff80000
.L_1cfc8:
	.2byte	0x4802
	ldr	r0, [r0, #8]
	mov	r9, r0
	ldr	r2, .L_1cfd8
	b	.L_1d11c
	.align	2, 0
	bgt	.L_1cfb8
	lsr	r5, r5, #32
.L_1cfd8:
	lsl	r4, r7, #26
	lsr	r6, r5, #32
.L_1cfdc:
	ldr	r0, .L_1cff0
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1cff8
.L_1cfe8:
	ldr	r0, .L_1cff4
	ldr	r0, [r0, #12]
	b	.L_1cffc
	.align	2, 0
.L_1cff0:
	.4byte	gWarioData
.L_1cff4:
	.4byte	sUnk_82DDCF0
.L_1cff8:
	ldr	r0, .L_1d004
	ldr	r0, [r0, #16]
.L_1cffc:
	mov	r9, r0
	ldr	r2, .L_1d008
	b	.L_1d11c
	.align	2, 0
.L_1d004:
	bgt	.L_1cfe8
	lsr	r5, r5, #32
.L_1d008:
	.4byte	sUnk_82E09A4
.L_1d00c:
	ldr	r0, .L_1d040
	ldr	r0, [r0, #20]
	mov	r9, r0
	ldr	r2, .L_1d044
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r6, #2]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcs	.L_1d024
	b	.L_1d142
.L_1d024:
	mov	r0, #0
	strb	r0, [r6, #2]
	ldrb	r0, [r6, #3]
	add	r0, #1
	strb	r0, [r6, #3]
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	beq	.L_1d03c
	b	.L_1d142
.L_1d03c:
	strb	r0, [r6, #0]
	b	.L_1d142
.L_1d040:
	.4byte	sUnk_82DDCF0
.L_1d044:
	lsr	r0, r5, #14
	lsr	r6, r5, #32
.L_1d048:
	ldr	r0, .L_1d05c
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d064
.L_1d054:
	ldr	r0, .L_1d060
	ldr	r0, [r0, #24]
	b	.L_1d068
	.align	2, 0
.L_1d05c:
	.4byte	gWarioData
.L_1d060:
	.4byte	sUnk_82DDCF0
.L_1d064:
	ldr	r0, .L_1d070
	ldr	r0, [r0, #28]
.L_1d068:
	mov	r9, r0
	ldr	r2, .L_1d074
	b	.L_1d11c
	.align	2, 0
.L_1d070:
	.4byte	sUnk_82DDCF0
.L_1d074:
	lsr	r0, r3, #19
	lsr	r6, r5, #32
.L_1d078:
	ldr	r2, .L_1d08c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d094
	ldr	r0, .L_1d090
	ldr	r0, [r0, #32]
	b	.L_1d098
	.align	2, 0
.L_1d08c:
	.4byte	gWarioData
.L_1d090:
	.4byte	sUnk_82DDCF0
.L_1d094:
	ldr	r0, .L_1d0dc
	ldr	r0, [r0, #36]	@ 0x24
.L_1d098:
	mov	r9, r0
	ldr	r3, .L_1d0e0
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r6, #2]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1d0c2
	mov	r0, #0
	strb	r0, [r6, #2]
	ldrb	r0, [r6, #3]
	add	r0, #1
	strb	r0, [r6, #3]
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1d0c2
.L_1d0c0:
	strb	r0, [r6, #3]
.L_1d0c2:
	ldrb	r0, [r2, #1]
	cmp	r0, #59	@ 0x3b
	bne	.L_1d142
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d0e8
	lsl	r0, r5, #16
	ldr	r2, .L_1d0e4
	add	r0, r0, r2
	b	.L_1d0f0
	.align	2, 0
.L_1d0dc:
	.4byte	sUnk_82DDCF0
.L_1d0e0:
	.4byte	sUnk_82E1598
.L_1d0e4:
	.4byte	0xfffe0000
.L_1d0e8:
	.2byte	0x0428
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #10
	add	r0, r0, r3
.L_1d0f0:
	lsr	r5, r0, #16
	mov	r1, ip
	lsl	r0, r1, #16
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #13
.L_1d0fa:
	add	r0, r0, r2
.L_1d0fc:
	lsr	r0, r0, #16
	mov	ip, r0
	b	.L_1d142
.L_1d102:
	ldr	r0, .L_1d10c
	ldr	r0, [r0, #40]	@ 0x28
	mov	r9, r0
	ldr	r2, .L_1d110
	b	.L_1d11c
.L_1d10c:
	.4byte	sUnk_82DDCF0
.L_1d110:
	.4byte	sUnk_82E1658
	ldr	r0, .L_1d220
	ldr	r0, [r0, #44]	@ 0x2c
	mov	r9, r0
	ldr	r2, .L_1d224
.L_1d11c:
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r6, #2]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1d142
	mov	r0, #0
	strb	r0, [r6, #2]
	ldrb	r0, [r6, #3]
	add	r0, #1
	strb	r0, [r6, #3]
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1d142
	strb	r0, [r6, #3]
.L_1d142:
	add	r1, r6, #0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_1d206
	ldr	r0, .L_1d228
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1d158
	ldrb	r0, [r1, #2]
	add	r0, #1
	strb	r0, [r1, #2]
.L_1d158:
	ldr	r2, .L_1d22c
	ldrh	r1, [r2, #18]
	lsr	r1, r1, #2
	ldr	r0, .L_1d230
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r0, r5, #16
	asr	r0, r0, #16
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r1, [r2, #20]
	lsr	r1, r1, #2
	ldr	r0, .L_1d234
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	mov	r3, ip
	lsl	r0, r3, #16
	asr	r0, r0, #16
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrb	r0, [r6, #3]
	lsl	r0, r0, #3
	add	r9, r0
	mov	r0, r9
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	ldr	r1, [sp, #4]
	add	r1, r1, r0
	str	r1, [sp, #4]
	add	r3, #2
	cmp	r7, r1
	bge	.L_1d206
	ldr	r0, .L_1d238
	lsl	r1, r4, #16
	asr	r1, r1, #16
	mov	r9, r1
	ldr	r2, [sp, #0]
	lsl	r6, r2, #2
	lsl	r1, r7, #3
	add	r4, r1, r0
	ldr	r0, .L_1d23c
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	ip, r1
	ldr	r2, [sp, #4]
	sub	r7, r2, r7
.L_1d1be:
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r0, r8
	strh	r1, [r0, #0]
	mov	r2, #2
	add	r8, r2
	add	r0, r5, r1
	strb	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r0, r8
	strh	r1, [r0, #0]
	add	r8, r2
	add	r1, r9
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_1d240
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	mov	r1, r8
	strh	r0, [r1, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, ip
	and	r0, r1
	orr	r0, r6
	strb	r0, [r4, #5]
	mov	r2, #4
	add	r8, r2
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
.L_1d204:
	bne	.L_1d1be
.L_1d206:
	mov	r3, sp
	ldrb	r0, [r3, #4]
	ldr	r3, .L_1d244
	strb	r0, [r3, #0]
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1d220:
	.4byte	sUnk_82DDCF0
.L_1d224:
	.4byte	sUnk_82E1690
.L_1d228:
	.4byte	gWarioPauseTimer
.L_1d22c:
	.4byte	gWarioData
.L_1d230:
	.4byte	gUnk_300187A
.L_1d234:
	.4byte	gUnk_300187C
.L_1d238:
	.4byte	gOamBuffer
.L_1d23c:
	.4byte	0x000001ff
.L_1d240:
	.4byte	0xfffffe00
.L_1d244:
	.4byte	gOamSlotsUsed


thumb_func_start func_801D248
func_801D248:
	push	{lr}
	mov	r2, #0
	ldr	r0, .L_1d260
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_1d2a2
	lsl	r0, r0, #2
	ldr	r1, .L_1d264
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1d260:
	.4byte	gColorFading
.L_1d264:
	.4byte	.L_1d268
.L_1d268:
	.4byte	.L_1d27c
	.4byte	.L_1d27c
	.4byte	.L_1d286
	.4byte	.L_1d286
	.4byte	.L_1d29c
.L_1d27c:
	mov	r0, #0
	mov	r1, #0
	bl	func_80710D8
	b	.L_1d2a0
.L_1d286:
	ldr	r1, .L_1d294
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_1d298
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_1d2a2
.L_1d294:
	.4byte	gUnk_3001870
.L_1d298:
	mov	r2, #1
	b	.L_1d2a2
.L_1d29c:
	bl	func_80712F8
.L_1d2a0:
	add	r2, r0, #0
.L_1d2a2:
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start func_801D2A8
func_801D2A8:
	push	{lr}
	mov	r2, #0
	ldr	r0, .L_1d2c0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_1d302
	lsl	r0, r0, #2
	ldr	r1, .L_1d2c4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1d2c0:
	.4byte	gColorFading
.L_1d2c4:
	.4byte	.L_1d2c8
.L_1d2c8:
	.4byte	.L_1d2dc
	.4byte	.L_1d2dc
	.4byte	.L_1d2e6
	.4byte  .L_1d2e6
	.4byte	.L_1d2fc
.L_1d2dc:
	mov	r0, #1
	mov	r1, #0
	bl	func_80710D8
	b	.L_1d300
.L_1d2e6:
	ldr	r1, .L_1d2f4
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_1d2f8
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_1d302
.L_1d2f4:
	.4byte	gUnk_3001870
.L_1d2f8:
	mov	r2, #1
	b	.L_1d302
.L_1d2fc:
	bl	func_8071394
.L_1d300:
	add	r2, r0, #0
.L_1d302:
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start func_801D308
func_801D308:
	push	{r4, r5, r6, r7, lr}
	mov	r5, #0
	mov	r6, #0
	ldr	r1, .L_1d378
	ldr	r2, .L_1d37c
	ldrh	r0, [r2, #18]
	strh	r0, [r1, #0]
	ldr	r1, .L_1d380
	ldrh	r0, [r2, #20]
	strh	r0, [r1, #0]
	ldr	r3, .L_1d384
	ldrh	r1, [r3, #0]
	mov	r0, #4
	and	r0, r1
	add	r4, r2, #0
	add	r2, r3, #0
	cmp	r0, #0
	beq	.L_1d336
	ldr	r0, .L_1d388
	mov	r1, #2
	strh	r1, [r0, #0]
	ldr	r0, .L_1d38c
	strb	r6, [r0, #0]
.L_1d336:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	ldr	r3, .L_1d390
	cmp	r0, #0
	beq	.L_1d3fc
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d3fc
	ldr	r0, .L_1d394
	ldrb	r2, [r0, #0]
	cmp	r2, #5
	beq	.L_1d3c8
	ldr	r0, .L_1d398
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_1d3b0
	ldr	r0, .L_1d39c
	mov	r1, #2
	strb	r1, [r0, #0]
	ldr	r0, .L_1d3a0
	strb	r1, [r0, #0]
	ldr	r0, .L_1d3a4
	strb	r1, [r0, #0]
	ldr	r0, .L_1d3a8
	strb	r1, [r0, #0]
	cmp	r2, #0
	beq	.L_1d3c2
	ldr	r0, .L_1d3ac
	b	.L_1d3c0
.L_1d378:
	.4byte	gUnk_30019F2
.L_1d37c:
	.4byte	gWarioData
.L_1d380:
	.4byte	gUnk_30019F4
.L_1d384:
	.4byte	gButtonsPressed
.L_1d388:
	.4byte	gSubGameMode
.L_1d38c:
	.4byte	gUnk_300004C
.L_1d390:
	.4byte	gButtonsHeld
.L_1d394:
	.4byte	gCurrentPassage
.L_1d398:
	.4byte	gCurrentStageNumber
.L_1d39c:
	.4byte	gCollectedNEJewelPiece
.L_1d3a0:
	.4byte	gCollectedSEJewelPiece
.L_1d3a4:
	.4byte	gCollectedSWJewelPiece
.L_1d3a8:
	.4byte	gCollectedNWJewelPiece
.L_1d3ac:
	.4byte	gCollectedCD
.L_1d3b0:
	cmp	r0, #4
	bne	.L_1d3c8
	ldr	r0, .L_1d3e0
	mov	r1, #2
	strb	r1, [r0, #0]
	ldr	r0, .L_1d3e4
	strb	r1, [r0, #0]
	ldr	r0, .L_1d3e8
.L_1d3c0:
	strb	r1, [r0, #0]
.L_1d3c2:
	ldr	r1, .L_1d3ec
	mov	r0, #1
	strb	r0, [r1, #0]
.L_1d3c8:
	ldr	r1, .L_1d3f0
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r1, .L_1d3f4
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_1d3f8
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	Autosave_StageClear
	b	.L_1d4ce
.L_1d3e0:
	.4byte	gCollectedNEJewelPiece
.L_1d3e4:
	.4byte	gCollectedSEJewelPiece
.L_1d3e8:
	.4byte	gCollectedSWJewelPiece
.L_1d3ec:
	.4byte	gCollectedKeyzer
.L_1d3f0:
	.4byte	gSubGameMode
.L_1d3f4:
	.4byte	gUnk_3000021
.L_1d3f8:
	.4byte	gStageExitType
.L_1d3fc:
	ldrh	r1, [r2, #0]
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d410
	ldr	r0, .L_1d488
	ldrb	r1, [r0, #0]
	mov	r2, #1
	eor	r1, r2
	strb	r1, [r0, #0]
.L_1d410:
	ldrh	r1, [r3, #0]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d41c
	mov	r5, #12
.L_1d41c:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d426
	ldr	r5, .L_1d48c
.L_1d426:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d430
	ldr	r6, .L_1d48c
.L_1d430:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d43a
	mov	r6, #12
.L_1d43a:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d44c
	lsl	r0, r5, #17
	lsr	r5, r0, #16
	lsl	r0, r6, #17
	lsr	r6, r0, #16
.L_1d44c:
	ldrh	r1, [r4, #18]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d45e
	mov	r0, #0
	strh	r0, [r4, #18]
.L_1d45e:
	ldrh	r1, [r4, #20]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d46c
	mov	r0, #0
	strh	r0, [r4, #20]
.L_1d46c:
	ldr	r0, .L_1d490
	ldrh	r1, [r0, #12]
	lsl	r3, r1, #6
	lsl	r1, r5, #16
	asr	r1, r1, #16
	add	r7, r0, #0
	cmp	r1, #0
	bge	.L_1d498
	ldrh	r0, [r4, #18]
	cmn	r0, r1
	bge	.L_1d494
	mov	r0, #0
	b	.L_1d4a6
	.align	2, 0
.L_1d488:
	.4byte	gUnk_300004C
.L_1d48c:
	.4byte	0x0000fff4
.L_1d490:
	.4byte	gBackgroundInfo
.L_1d494:
	add	r0, r0, r5
	b	.L_1d4a6
.L_1d498:
	ldrh	r2, [r4, #18]
	sub	r0, r3, r1
	cmp	r2, r0
	ble	.L_1d4a4
	strh	r3, [r4, #18]
	b	.L_1d4a8
.L_1d4a4:
	add	r0, r2, r5
.L_1d4a6:
	strh	r0, [r4, #18]
.L_1d4a8:
	ldrh	r0, [r7, #14]
	lsl	r3, r0, #6
	lsl	r0, r6, #16
	asr	r0, r0, #16
	cmp	r0, #0
	bge	.L_1d4be
	ldrh	r1, [r4, #20]
	cmn	r1, r0
	bge	.L_1d4ca
	mov	r0, #0
	b	.L_1d4cc
.L_1d4be:
	ldrh	r1, [r4, #20]
	sub	r0, r3, r0
	cmp	r1, r0
	ble	.L_1d4ca
	strh	r3, [r4, #20]
	b	.L_1d4ce
.L_1d4ca:
	add	r0, r1, r6
.L_1d4cc:
	strh	r0, [r4, #20]
.L_1d4ce:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_801D4D4
func_801D4D4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_1d64c
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #8
	beq	.L_1d4ea
	b	.L_1d63c
.L_1d4ea:
	ldr	r5, .L_1d650
	mov	r1, #248	@ 0xf8
	lsl	r1, r1, #2
	add	r0, r5, r1
	mov	r1, #116	@ 0x74
	neg	r1, r1
	strb	r1, [r0, #0]
	ldr	r0, .L_1d654
	add	r2, r5, r0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1d658
	and	r0, r1
	mov	r1, #230	@ 0xe6
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r4, .L_1d65c
	ldrb	r0, [r4, #0]
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r1, #248	@ 0xf8
	lsl	r1, r1, #1
	mov	r9, r1
	mov	r1, #249	@ 0xf9
	lsl	r1, r1, #2
	add	r3, r5, r1
	add	r1, #27
	add	r7, r1, #0
	add	r0, r9
	ldrh	r2, [r3, #0]
	ldr	r1, .L_1d660
	mov	sl, r1
	and	r1, r2
	orr	r1, r0
	strh	r1, [r3, #0]
	ldr	r0, .L_1d664
	add	r2, r5, r0
	ldrb	r1, [r2, #0]
	mov	r0, #15
	mov	r8, r0
	and	r0, r1
	mov	r6, #48	@ 0x30
	orr	r0, r6
	strb	r0, [r2, #0]
	ldrb	r0, [r4, #0]
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	beq	.L_1d59a
	mov	r1, #244	@ 0xf4
	lsl	r1, r1, #2
	add	r0, r5, r1
	mov	r1, #116	@ 0x74
	neg	r1, r1
	strb	r1, [r0, #0]
	ldr	r0, .L_1d668
	add	r2, r5, r0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1d658
	and	r0, r1
	mov	r1, #222	@ 0xde
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, r9
	add	r1, r3, r0
	mov	r0, #245	@ 0xf5
	lsl	r0, r0, #2
	add	r3, r5, r0
	and	r1, r7
	ldrh	r2, [r3, #0]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_1d66c
	add	r2, r5, r1
	ldrb	r1, [r2, #0]
	mov	r0, r8
	and	r0, r1
	orr	r0, r6
	strb	r0, [r2, #0]
	bl	Autosave_StageClear
.L_1d59a:
	mov	r6, #0
	ldr	r4, .L_1d670
	ldrb	r0, [r4, #2]
	cmp	r0, #255	@ 0xff
	beq	.L_1d63c
	add	r3, r0, #0
	mov	r0, #128	@ 0x80
	and	r0, r3
	cmp	r0, #0
	beq	.L_1d5b4
	mov	r0, #127	@ 0x7f
	and	r3, r0
	mov	r6, #3
.L_1d5b4:
	mov	r1, #246	@ 0xf6
	lsl	r1, r1, #2
	add	r0, r5, r1
	mov	r1, #150	@ 0x96
	mov	ip, r1
	mov	r1, ip
	strb	r1, [r0, #0]
	ldr	r0, .L_1d674
	add	r2, r5, r0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1d658
	and	r0, r1
	mov	r1, #230	@ 0xe6
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, r9
	add	r1, r3, r0
	mov	r0, #247	@ 0xf7
	lsl	r0, r0, #2
	add	r3, r5, r0
	and	r1, r7
	ldrh	r2, [r3, #0]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_1d678
	add	r2, r5, r1
	lsl	r6, r6, #4
	ldrb	r1, [r2, #0]
	mov	r0, r8
	and	r0, r1
	orr	r0, r6
	strb	r0, [r2, #0]
	ldrb	r3, [r4, #1]
	cmp	r3, #0
	beq	.L_1d63c
	mov	r1, #242	@ 0xf2
	lsl	r1, r1, #2
	add	r0, r5, r1
	mov	r1, ip
	strb	r1, [r0, #0]
	ldr	r0, .L_1d67c
	add	r2, r5, r0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_1d658
	and	r0, r1
	mov	r1, #222	@ 0xde
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, r9
	add	r1, r3, r0
	mov	r0, #243	@ 0xf3
	lsl	r0, r0, #2
	add	r3, r5, r0
	and	r1, r7
	ldrh	r2, [r3, #0]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_1d680
	add	r2, r5, r1
	ldrb	r1, [r2, #0]
	mov	r0, r8
	and	r0, r1
	orr	r0, r6
	strb	r0, [r2, #0]
.L_1d63c:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1d64c:
	.4byte	gSubGameMode
.L_1d650:
	.4byte	gOamBuffer
.L_1d654:
	.4byte	0x000003e2
.L_1d658:
	.4byte	0xfffffe00
.L_1d65c:
	.4byte	gCurrentRoom
.L_1d660:
	.4byte	0xfffffc00
.L_1d664:
	.4byte	0x000003e5
.L_1d668:
	.4byte	0x000003d2
.L_1d66c:
	.4byte	0x000003d5
.L_1d670:
	.4byte	gUnk_300004C
.L_1d674:
	.4byte	0x000003da
.L_1d678:
	.4byte	0x000003dd
.L_1d67c:
	.4byte	0x000003ca
.L_1d680:
	.4byte	0x000003cd
