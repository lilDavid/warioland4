.include "macros.s.inc"


thumb_func_start func_801E4B0
func_801E4B0:
	push	{lr}
	ldr	r0, .L_1e4cc
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bne	.L_1e4c8
	ldr	r0, .L_1e4d0
	ldr	r0, [r0, #36]	@ 0x24
	bl	MPlayStop
	mov	r0, #40	@ 0x28
	bl	m4aSongNumStart
.L_1e4c8:
	pop	{r0}
	bx	r0
.L_1e4cc:
	.4byte	gCurrentCarriedSprite
.L_1e4d0:
	.4byte	gMPlayTable


thumb_func_start func_801E4D4
func_801E4D4:
	push	{r4, lr}
	ldr	r0, .L_1e510
	bl	m4aSongNumStart
	ldr	r4, .L_1e514
	ldr	r0, [r4, #36]	@ 0x24
	bl	MPlayStop
	ldr	r0, [r4, #0]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	ldr	r0, [r4, #12]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	ldr	r0, [r4, #24]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	mov	r0, #217	@ 0xd9
	bl	m4aSongNumStop
	mov	r0, #225	@ 0xe1
	lsl	r0, r0, #1
	bl	m4aSongNumStop
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1e510:
	.4byte	0x000001cd
.L_1e514:
	.4byte	gMPlayTable


thumb_func_start func_801E518
func_801E518:
	push	{lr}
	ldr	r0, .L_1e528
	ldr	r0, [r0, #12]
	mov	r1, #4
	bl	m4aMPlayFadeOut
	pop	{r0}
	bx	r0
.L_1e528:
	.4byte	gMPlayTable


thumb_func_start func_801E52C
func_801E52C:
	push	{lr}
	ldr	r2, .L_1e54c
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #23]
	sub	r0, #17
	cmp	r0, #193	@ 0xc1
	bls	.L_1e540
	b	.L_1e87a
.L_1e540:
	lsl	r0, r0, #2
	ldr	r1, .L_1e550
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_1e54c:
	.4byte	gSpriteData
.L_1e550:
	.4byte	.L_1e554
.L_1e554:
	.4byte	.L_1e874
	.4byte	.L_1e85c
	.4byte	.L_1e862
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e868
	.4byte	.L_1e85c
	.4byte	.L_1e868
	.4byte	.L_1e87a
	.4byte	.L_1e862
	.4byte	.L_1e87a
	.4byte	.L_1e86e
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e85c
	.4byte	.L_1e87a
	.4byte	.L_1e862
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e86e
	.4byte	.L_1e86e
	.4byte	.L_1e85c
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e86e
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e874
	.4byte	.L_1e874
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e868
	.4byte	.L_1e87a
	.4byte	.L_1e862
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e868
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e874
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e87a
	.4byte	.L_1e874
.L_1e85c:
	mov	r0, #20
	neg	r0, r0
	b	.L_1e87c
.L_1e862:
	mov	r0, #40	@ 0x28
	neg	r0, r0
	b	.L_1e87c
.L_1e868:
	mov	r0, #50	@ 0x32
	neg	r0, r0
	b	.L_1e87c
.L_1e86e:
	mov	r0, #30
	neg	r0, r0
	b	.L_1e87c
.L_1e874:
	mov	r0, #10
	neg	r0, r0
	b	.L_1e87c
.L_1e87a:
	mov	r0, #0
.L_1e87c:
	bl	Score_GiveOrDropCoins
	pop	{r0}
	bx	r0


thumb_func_start func_801E884
func_801E884:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .L_1e8a8
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_1e8c4
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1e8b0
	ldr	r1, .L_1e8ac
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #51	@ 0x33
	b	.L_1e8ba
.L_1e8a8:
	.4byte	gUnk_3000A52
.L_1e8ac:
	.4byte	gSpriteData
.L_1e8b0:
	ldr	r1, .L_1e8c0
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #53	@ 0x35
.L_1e8ba:
	strb	r1, [r0, #28]
	b	.L_1e8de
	.align	2, 0
.L_1e8c0:
	.4byte	gSpriteData
.L_1e8c4:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1e8f8
	ldr	r1, .L_1e8e8
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #5
	bne	.L_1e8ec
	mov	r0, #51	@ 0x33
	strb	r0, [r1, #28]
.L_1e8de:
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
	b	.L_1e926
	.align	2, 0
.L_1e8e8:
	.4byte	gSpriteData
.L_1e8ec:
	mov	r0, #35	@ 0x23
	strb	r0, [r1, #28]
	mov	r0, #52	@ 0x34
	bl	m4aSongNumStart
	b	.L_1e926
.L_1e8f8:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_1e926
	ldr	r1, .L_1e918
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #5
	bne	.L_1e91c
	mov	r0, #53	@ 0x35
	strb	r0, [r1, #28]
	bl	m4aSongNumStart
	b	.L_1e926
.L_1e918:
	.4byte	gSpriteData
.L_1e91c:
	mov	r0, #37	@ 0x25
	strb	r0, [r1, #28]
	mov	r0, #52	@ 0x34
	bl	m4aSongNumStart
.L_1e926:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_801E92C
func_801E92C:
	push	{lr}
	add	r2, r0, #0
	ldr	r1, .L_1e948
	ldrb	r0, [r1, #0]
	sub	r0, #2
	add	r3, r1, #0
	cmp	r0, #7
	bls	.L_1e93e
	b	.L_1ea30
.L_1e93e:
	lsl	r0, r0, #2
	ldr	r1, .L_1e94c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1e948:
	.4byte	gWarioData
.L_1e94c:
	.4byte	.L_1e950
.L_1e950:
	.4byte	.L_1e970
	.4byte	.L_1e978
	.4byte	.L_1e9f8
	.4byte	.L_1e9c0
	.4byte	.L_1e9f8
	.4byte	.L_1ea30
	.4byte	.L_1ea30
	.4byte	.L_1ea1c
.L_1e970:
	ldrb	r0, [r3, #1]
	cmp	r0, #6
	bls	.L_1e9b8
	b	.L_1ea1c
.L_1e978:
	ldrb	r0, [r3, #1]
	cmp	r0, #0
	beq	.L_1e9b8
	ldr	r1, .L_1e994
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r1
	ldrh	r0, [r1, #10]
	ldrh	r2, [r3, #18]
	cmp	r0, r2
	bls	.L_1e998
	mov	r0, #31
	b	.L_1e99a
	.align	2, 0
.L_1e994:
	.4byte	gSpriteData
.L_1e998:
	mov	r0, #33	@ 0x21
.L_1e99a:
	strb	r0, [r1, #28]
	ldrb	r0, [r3, #1]
	cmp	r0, #8
	beq	.L_1ea14
	ldr	r0, .L_1e9b4
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #7
	bl	_call_via_r1
	b	.L_1ea14
.L_1e9b4:
	.4byte	sUnk_82DECA0
.L_1e9b8:
	add	r0, r2, #0
	bl	func_801E884
	b	.L_1ea36
.L_1e9c0:
	ldr	r1, .L_1e9d4
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r1
	ldrh	r0, [r1, #10]
	ldrh	r2, [r3, #18]
	cmp	r0, r2
	bls	.L_1e9d8
	mov	r0, #31
	b	.L_1e9da
.L_1e9d4:
	.4byte	gSpriteData
.L_1e9d8:
	mov	r0, #33	@ 0x21
.L_1e9da:
	strb	r0, [r1, #28]
	ldrb	r0, [r3, #5]
	cmp	r0, #0
	beq	.L_1ea14
	ldr	r0, .L_1e9f4
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #5
	bl	_call_via_r1
	b	.L_1ea14
.L_1e9f4:
	.4byte	sUnk_82DECA0
.L_1e9f8:
	ldr	r1, .L_1ea0c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r1
	ldrh	r0, [r1, #10]
	ldrh	r3, [r3, #18]
	cmp	r0, r3
	bls	.L_1ea10
	mov	r0, #31
	b	.L_1ea12
.L_1ea0c:
	.4byte	gSpriteData
.L_1ea10:
	mov	r0, #33	@ 0x21
.L_1ea12:
	strb	r0, [r1, #28]
.L_1ea14:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_1ea36
.L_1ea1c:
	ldr	r1, .L_1ea2c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #107	@ 0x6b
	strb	r1, [r0, #28]
	b	.L_1ea36
	.align	2, 0
.L_1ea2c:
	.4byte	gSpriteData
.L_1ea30:
	add	r0, r2, #0
	bl	func_801E884
.L_1ea36:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_801EA3C
func_801EA3C:
	push	{lr}
	mov	r0, #2
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1ea58
	ldr	r1, .L_1ea5c
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_1ea60
	ldr	r1, [r0, #8]
	mov	r0, #0
	bl	_call_via_r1
.L_1ea58:
	pop	{r0}
	bx	r0
.L_1ea5c:
	.4byte	gWarioData
.L_1ea60:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EA64
func_801EA64:
	push	{lr}
	mov	r0, #3
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1ea80
	ldr	r1, .L_1ea84
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r0, .L_1ea88
	ldr	r1, [r0, #12]
	mov	r0, #0
	bl	_call_via_r1
.L_1ea80:
	pop	{r0}
	bx	r0
.L_1ea84:
	.4byte	gWarioData
.L_1ea88:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EA8C
func_801EA8C:
	push	{lr}
	mov	r0, #5
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eaa8
	ldr	r1, .L_1eaac
	mov	r0, #5
	strb	r0, [r1, #0]
	ldr	r0, .L_1eab0
	ldr	r1, [r0, #20]
	mov	r0, #0
	bl	_call_via_r1
.L_1eaa8:
	pop	{r0}
	bx	r0
.L_1eaac:
	.4byte	gWarioData
.L_1eab0:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EAB4
func_801EAB4:
	push	{lr}
	mov	r0, #6
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1ead0
	ldr	r1, .L_1ead4
	mov	r0, #6
	strb	r0, [r1, #0]
	ldr	r0, .L_1ead8
	ldr	r1, [r0, #24]
	mov	r0, #0
	bl	_call_via_r1
.L_1ead0:
	pop	{r0}
	bx	r0
.L_1ead4:
	.4byte	gWarioData
.L_1ead8:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EADC
func_801EADC:
	push	{lr}
	mov	r0, #8
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eaf8
	ldr	r1, .L_1eafc
	mov	r0, #8
	strb	r0, [r1, #0]
	ldr	r0, .L_1eb00
	ldr	r1, [r0, #32]
	mov	r0, #0
	bl	_call_via_r1
.L_1eaf8:
	pop	{r0}
	bx	r0
.L_1eafc:
	.4byte	gWarioData
.L_1eb00:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EB04
func_801EB04:
	push	{lr}
	mov	r0, #7
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eb20
	ldr	r1, .L_1eb24
	mov	r0, #7
	strb	r0, [r1, #0]
	ldr	r0, .L_1eb28
	ldr	r1, [r0, #28]
	mov	r0, #0
	bl	_call_via_r1
.L_1eb20:
	pop	{r0}
	bx	r0
.L_1eb24:
	.4byte	gWarioData
.L_1eb28:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EB2C
func_801EB2C:
	push	{lr}
	mov	r0, #9
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eb48
	ldr	r1, .L_1eb4c
	mov	r0, #9
	strb	r0, [r1, #0]
	ldr	r0, .L_1eb50
	ldr	r1, [r0, #36]	@ 0x24
	mov	r0, #0
	bl	_call_via_r1
.L_1eb48:
	pop	{r0}
	bx	r0
.L_1eb4c:
	.4byte	gWarioData
.L_1eb50:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EB54
func_801EB54:
	push	{lr}
	mov	r0, #4
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eb70
	ldr	r1, .L_1eb74
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_1eb78
	ldr	r1, [r0, #16]
	mov	r0, #0
	bl	_call_via_r1
.L_1eb70:
	pop	{r0}
	bx	r0
.L_1eb74:
	.4byte	gWarioData
.L_1eb78:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EB7C
func_801EB7C:
	push	{lr}
	mov	r0, #10
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1eb98
	ldr	r1, .L_1eb9c
	mov	r0, #10
	strb	r0, [r1, #0]
	ldr	r0, .L_1eba0
	ldr	r1, [r0, #40]	@ 0x28
	mov	r0, #0
	bl	_call_via_r1
.L_1eb98:
	pop	{r0}
	bx	r0
.L_1eb9c:
	.4byte	gWarioData
.L_1eba0:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EBA4
func_801EBA4:
	push	{lr}
	mov	r0, #11
	bl	func_8015BA8
	cmp	r0, #0
	bne	.L_1ebc0
	ldr	r1, .L_1ebc4
	mov	r0, #11
	strb	r0, [r1, #0]
	ldr	r0, .L_1ebc8
	ldr	r1, [r0, #44]	@ 0x2c
	mov	r0, #0
	bl	_call_via_r1
.L_1ebc0:
	pop	{r0}
	bx	r0
.L_1ebc4:
	.4byte	gWarioData
.L_1ebc8:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EBCC
func_801EBCC:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r2, .L_1ebe8
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_1ec24
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	beq	.L_1ebec
	add	r0, r4, #0
	bl	func_801E884
	b	.L_1ec2a
	.align	2, 0
.L_1ebe8:
	.4byte	gWarioData
.L_1ebec:
	strb	r0, [r2, #3]
	ldr	r1, .L_1ec04
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1ec08
	mov	r0, #32
	b	.L_1ec0a
.L_1ec04:
	.4byte	gSpriteData
.L_1ec08:
	mov	r0, #16
.L_1ec0a:
	strh	r0, [r2, #14]
	bl	func_801EB54
	ldr	r1, .L_1ec20
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	b	.L_1ec2a
	.align	2, 0
.L_1ec20:
	.4byte	gSpriteData
.L_1ec24:
	add	r0, r4, #0
	bl	func_801E92C
.L_1ec2a:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_801EC30
func_801EC30:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_1ec4c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1ec68
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_1ec50
	add	r0, r4, #0
	bl	func_801E884
	b	.L_1ec6e
	.align	2, 0
.L_1ec4c:
	.4byte	gWarioData
.L_1ec50:
	bl	func_801EADC
	ldr	r1, .L_1ec64
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	b	.L_1ec6e
	.align	2, 0
.L_1ec64:
	.4byte	gSpriteData
.L_1ec68:
	add	r0, r4, #0
	bl	func_801E92C
.L_1ec6e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_801EC74
func_801EC74:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_1ec90
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1ecac
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_1ec94
	add	r0, r4, #0
	bl	func_801E884
	b	.L_1ecb2
	.align	2, 0
.L_1ec90:
	.4byte	gWarioData
.L_1ec94:
	bl	func_801EAB4
	ldr	r1, .L_1eca8
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	b	.L_1ecb2
	.align	2, 0
.L_1eca8:
	.4byte	gSpriteData
.L_1ecac:
	add	r0, r4, #0
	bl	func_801E92C
.L_1ecb2:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_801ECB8
func_801ECB8:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_1ecd4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1ecf0
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_1ecd8
	add	r0, r4, #0
	bl	func_801E884
	b	.L_1ecf6
	.align	2, 0
.L_1ecd4:
	.4byte	gWarioData
.L_1ecd8:
	bl	func_801EA8C
	ldr	r1, .L_1ecec
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #107	@ 0x6b
	strb	r1, [r0, #28]
	b	.L_1ecf6
	.align	2, 0
.L_1ecec:
	.4byte	gSpriteData
.L_1ecf0:
	add	r0, r4, #0
	bl	func_801E92C
.L_1ecf6:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_801ECFC
func_801ECFC:
	push	{lr}
	ldr	r1, .L_1ed14
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1ed10
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	bne	.L_1ed10
	bl	func_801EA8C
.L_1ed10:
	pop	{r0}
	bx	r0
.L_1ed14:
	.4byte	gWarioData


thumb_func_start func_801ED18
func_801ED18:
	push	{lr}
	ldr	r1, .L_1ed40
	ldrb	r0, [r1, #0]
	cmp	r0, #5
	bne	.L_1ed3c
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	beq	.L_1ed3c
	cmp	r0, #10
	beq	.L_1ed3c
	ldr	r0, .L_1ed44
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #10
	bl	_call_via_r1
.L_1ed3c:
	pop	{r0}
	bx	r0
.L_1ed40:
	.4byte	gWarioData
.L_1ed44:
	.4byte	sUnk_82DECA0


thumb_func_start func_801ED48
func_801ED48:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_1ed64
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1ed80
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_1ed68
	add	r0, r4, #0
	bl	func_801E884
	b	.L_1ed86
	.align	2, 0
.L_1ed64:
	.4byte	gWarioData
.L_1ed68:
	bl	func_801EA64
	ldr	r1, .L_1ed7c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	b	.L_1ed86
	.align	2, 0
.L_1ed7c:
	.4byte	gSpriteData
.L_1ed80:
	add	r0, r4, #0
	bl	func_801E92C
.L_1ed86:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_801ED8C
func_801ED8C:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r2, .L_1edbc
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_1edb4
	ldr	r1, .L_1edc0
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #14
	bl	_call_via_r1
	ldr	r1, .L_1edc4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #107	@ 0x6b
	strb	r1, [r0, #28]
.L_1edb4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1edbc:
	.4byte	gWarioData
.L_1edc0:
	.4byte	sUnk_82DECA0
.L_1edc4:
	.4byte	gSpriteData


thumb_func_start func_801EDC8
func_801EDC8:
	push	{lr}
	ldr	r2, .L_1edec
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_1ede6
	mov	r0, #32
	strh	r0, [r2, #14]
	ldr	r1, .L_1edf0
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #19
	bl	_call_via_r1
.L_1ede6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1edec:
	.4byte	gWarioData
.L_1edf0:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EDF4
func_801EDF4:
	push	{lr}
	ldr	r2, .L_1ee18
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_1ee12
	mov	r0, #16
	strh	r0, [r2, #14]
	ldr	r1, .L_1ee1c
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #19
	bl	_call_via_r1
.L_1ee12:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1ee18:
	.4byte	gWarioData
.L_1ee1c:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EE20
func_801EE20:
	push	{r4, lr}
	ldr	r4, .L_1ee54
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_1ee4e
	ldr	r1, .L_1ee58
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r0, [r4, #1]
	cmp	r0, #31
	bne	.L_1ee48
	mov	r0, #32
	strh	r0, [r4, #14]
	mov	r0, #16
	strh	r0, [r4, #22]
.L_1ee48:
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
.L_1ee4e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1ee54:
	.4byte	gWarioData
.L_1ee58:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EE5C
func_801EE5C:
	push	{r4, lr}
	ldr	r4, .L_1ee90
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_1ee8a
	ldr	r1, .L_1ee94
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r0, [r4, #1]
	cmp	r0, #31
	bne	.L_1ee84
	mov	r0, #16
	strh	r0, [r4, #14]
	ldr	r0, .L_1ee98
	strh	r0, [r4, #22]
.L_1ee84:
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
.L_1ee8a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1ee90:
	.4byte	gWarioData
.L_1ee94:
	.4byte	sUnk_82DECA0
.L_1ee98:
	.4byte	0x0000fff0


thumb_func_start func_801EE9C
func_801EE9C:
	push	{r4, r5, lr}
	ldr	r4, .L_1eed8
	ldrb	r5, [r4, #4]
	cmp	r5, #0
	bne	.L_1eed2
	ldr	r1, .L_1eedc
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	beq	.L_1eebe
	strh	r5, [r4, #24]
.L_1eebe:
	ldrb	r0, [r4, #1]
	cmp	r0, #31
	bne	.L_1eecc
	mov	r0, #32
	strh	r0, [r4, #14]
	mov	r0, #16
	strh	r0, [r4, #22]
.L_1eecc:
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
.L_1eed2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1eed8:
	.4byte	gWarioData
.L_1eedc:
	.4byte	sUnk_82DECA0


thumb_func_start func_801EEE0
func_801EEE0:
	push	{r4, r5, lr}
	ldr	r4, .L_1ef1c
	ldrb	r5, [r4, #4]
	cmp	r5, #0
	bne	.L_1ef16
	ldr	r1, .L_1ef20
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	beq	.L_1ef02
	strh	r5, [r4, #24]
.L_1ef02:
	ldrb	r0, [r4, #1]
	cmp	r0, #31
	bne	.L_1ef10
	mov	r0, #16
	strh	r0, [r4, #14]
	ldr	r0, .L_1ef24
	strh	r0, [r4, #22]
.L_1ef10:
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
.L_1ef16:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1ef1c:
	.4byte	gWarioData
.L_1ef20:
	.4byte	sUnk_82DECA0
.L_1ef24:
	.4byte	0x0000fff0


thumb_func_start func_801EF28
func_801EF28:
	push	{lr}
	ldr	r1, .L_1ef48
	ldr	r0, .L_1ef4c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1ef48:
	.4byte	sUnk_82DECA0
.L_1ef4c:
	.4byte	gWarioData


thumb_func_start func_801EF50
func_801EF50:
	push	{r4, r5, lr}
	ldr	r5, .L_1ef84
	ldrb	r0, [r5, #4]
	cmp	r0, #0
	bne	.L_1ef7e
	ldr	r1, .L_1ef88
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #21
	bl	_call_via_r1
	mov	r4, #0
	ldr	r0, .L_1ef8c
	strh	r0, [r5, #22]
	bl	func_801E4B0
	ldr	r0, .L_1ef90
	strb	r4, [r0, #0]
	mov	r0, #52	@ 0x34
	bl	m4aSongNumStart
.L_1ef7e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1ef84:
	.4byte	gWarioData
.L_1ef88:
	.4byte	sUnk_82DECA0
.L_1ef8c:
	.4byte	0x0000fff0
.L_1ef90:
	.4byte	gCurrentCarriedSprite


thumb_func_start func_801EF94
func_801EF94:
	push	{r4, r5, lr}
	ldr	r5, .L_1efc8
	ldrb	r0, [r5, #4]
	cmp	r0, #0
	bne	.L_1efc2
	ldr	r1, .L_1efcc
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #21
	bl	_call_via_r1
	mov	r4, #0
	mov	r0, #16
	strh	r0, [r5, #22]
	bl	func_801E4B0
	ldr	r0, .L_1efd0
	strb	r4, [r0, #0]
	mov	r0, #52	@ 0x34
	bl	m4aSongNumStart
.L_1efc2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1efc8:
	.4byte	gWarioData
.L_1efcc:
	.4byte	sUnk_82DECA0
.L_1efd0:
	.4byte	gCurrentCarriedSprite


thumb_func_start func_801EFD4
func_801EFD4:
	push	{lr}
	ldr	r0, .L_1effc
	ldrb	r0, [r0, #1]
	cmp	r0, #15
	bgt	.L_1f004
	cmp	r0, #12
	blt	.L_1f004
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	ldr	r0, .L_1f000
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	mov	r1, #33	@ 0x21
	cmp	r0, #0
	beq	.L_1f006
	mov	r1, #31
	b	.L_1f006
	.align	2, 0
.L_1effc:
	.4byte	gWarioData
.L_1f000:
	.4byte	gUnk_3000A52
.L_1f004:
	mov	r1, #0
.L_1f006:
	add	r0, r1, #0
	pop	{r1}
	bx	r1


thumb_func_start func_801F00C
func_801F00C:
	push	{r4, r5, lr}
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	ldr	r5, .L_1f028
	ldrb	r0, [r5, #1]
	cmp	r0, #23
	beq	.L_1f0d8
	cmp	r0, #23
	bgt	.L_1f02c
	cmp	r0, #22
	beq	.L_1f036
	b	.L_1f10e
.L_1f028:
	.4byte	gWarioData
.L_1f02c:
	cmp	r0, #24
	beq	.L_1f088
	cmp	r0, #25
	beq	.L_1f0d8
	b	.L_1f10e
.L_1f036:
	ldr	r0, .L_1f060
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f068
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f0f4
	mov	r4, #31
	ldr	r0, .L_1f064
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f102
	.align	2, 0
.L_1f060:
	.4byte	gUnk_3000A52
.L_1f064:
	.4byte	sUnk_82DECA0
.L_1f068:
	mov	r0, #32
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f10a
	mov	r4, #33	@ 0x21
	ldr	r0, .L_1f084
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f102
.L_1f084:
	.4byte	sUnk_82DECA0
.L_1f088:
	ldr	r0, .L_1f0b0
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f0b8
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f0f4
	mov	r4, #31
	ldr	r0, .L_1f0b4
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f102
.L_1f0b0:
	.4byte	gUnk_3000A52
.L_1f0b4:
	.4byte	sUnk_82DECA0
.L_1f0b8:
	mov	r0, #32
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f10a
	mov	r4, #33	@ 0x21
	ldr	r0, .L_1f0d4
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f102
.L_1f0d4:
	.4byte	sUnk_82DECA0
.L_1f0d8:
	ldr	r0, .L_1f0f0
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f0f8
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f0f4
	mov	r4, #79	@ 0x4f
	b	.L_1f102
.L_1f0f0:
	.4byte	gUnk_3000A52
.L_1f0f4:
	mov	r4, #51	@ 0x33
	b	.L_1f142
.L_1f0f8:
	mov	r0, #32
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f10a
	mov	r4, #80	@ 0x50
.L_1f102:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_1f142
.L_1f10a:
	mov	r4, #53	@ 0x35
	b	.L_1f142
.L_1f10e:
	ldr	r0, .L_1f128
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f132
	mov	r4, #51	@ 0x33
	cmp	r2, #0
	beq	.L_1f12c
	bl	func_801EE5C
	b	.L_1f142
	.align	2, 0
.L_1f128:
	.4byte	gUnk_3000A52
.L_1f12c:
	bl	func_801EEE0
	b	.L_1f142
.L_1f132:
	mov	r4, #53	@ 0x35
	cmp	r2, #0
	beq	.L_1f13e
	bl	func_801EE20
	b	.L_1f142
.L_1f13e:
	bl	func_801EE9C
.L_1f142:
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_801F14C
func_801F14C:
	push	{r4, lr}
	add	r3, r0, #0
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	ldr	r1, .L_1f168
	ldrb	r0, [r1, #1]
	cmp	r0, #23
	beq	.L_1f1b4
	cmp	r0, #23
	bgt	.L_1f16c
	cmp	r0, #22
	beq	.L_1f176
	b	.L_1f1c4
	.align	2, 0
.L_1f168:
	.4byte	gWarioData
.L_1f16c:
	cmp	r0, #24
	beq	.L_1f194
	cmp	r0, #25
	beq	.L_1f1b4
	b	.L_1f1c4
.L_1f176:
	mov	r4, #33	@ 0x21
	cmp	r2, #0
	beq	.L_1f17e
	mov	r4, #31
.L_1f17e:
	ldr	r0, .L_1f190
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f1bc
.L_1f190:
	.4byte	sUnk_82DECA0
.L_1f194:
	mov	r4, #33	@ 0x21
	cmp	r2, #0
	beq	.L_1f19c
	mov	r4, #31
.L_1f19c:
	ldr	r0, .L_1f1b0
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f1bc
	.align	2, 0
.L_1f1b0:
	.4byte	sUnk_82DECA0
.L_1f1b4:
	mov	r4, #80	@ 0x50
	cmp	r2, #0
	beq	.L_1f1bc
	mov	r4, #79	@ 0x4f
.L_1f1bc:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_1f1f6
.L_1f1c4:
	ldr	r1, .L_1f1dc
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #30]
	cmp	r0, #5
	bne	.L_1f1e0
	mov	r4, #53	@ 0x35
	cmp	r2, #0
	beq	.L_1f1f2
	mov	r4, #51	@ 0x33
	b	.L_1f1e8
.L_1f1dc:
	.4byte	gSpriteData
.L_1f1e0:
	mov	r4, #37	@ 0x25
	cmp	r2, #0
	beq	.L_1f1f2
	mov	r4, #35	@ 0x23
.L_1f1e8:
	cmp	r2, #0
	beq	.L_1f1f2
	bl	func_801EF50
	b	.L_1f1f6
.L_1f1f2:
	bl	func_801EF94
.L_1f1f6:
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_801F200
func_801F200:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r2, r1, #16
	ldr	r1, .L_1f220
	ldrb	r0, [r1, #1]
	sub	r0, #5
	add	r5, r1, #0
	cmp	r0, #20
	bls	.L_1f216
	b	.L_1f364
.L_1f216:
	lsl	r0, r0, #2
	ldr	r1, .L_1f224
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1f220:
	.4byte	gWarioData
.L_1f224:
	.4byte	.L_1f228
.L_1f228:
	.4byte	.L_1f34e
	.4byte	.L_1f34e
	.4byte	.L_1f34e
	.4byte	.L_1f34e
	.4byte	.L_1f34e
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f364
	.4byte	.L_1f34e
	.4byte	.L_1f34e
	.4byte	.L_1f364
	.4byte	.L_1f27c
	.4byte	.L_1f31c
	.4byte	.L_1f2cc
	.4byte	.L_1f31c
.L_1f27c:
	ldr	r0, .L_1f2a4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f2ac
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f35c
	mov	r4, #31
	ldr	r0, .L_1f2a8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f342
.L_1f2a4:
	.4byte	gUnk_3000A52
.L_1f2a8:
	.4byte	sUnk_82DECA0
.L_1f2ac:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f34a
	mov	r4, #33	@ 0x21
	ldr	r0, .L_1f2c8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f342
.L_1f2c8:
	.4byte	sUnk_82DECA0
.L_1f2cc:
	ldr	r0, .L_1f2f4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f2fc
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f35c
	mov	r4, #31
	ldr	r0, .L_1f2f8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f342
.L_1f2f4:
	.4byte	gUnk_3000A52
.L_1f2f8:
	.4byte	sUnk_82DECA0
.L_1f2fc:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f34a
	mov	r4, #33	@ 0x21
	ldr	r0, .L_1f318
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f342
.L_1f318:
	.4byte	sUnk_82DECA0
.L_1f31c:
	ldr	r0, .L_1f334
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f338
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f35c
	mov	r4, #79	@ 0x4f
	b	.L_1f342
.L_1f334:
	.4byte	gUnk_3000A52
.L_1f338:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f34a
	mov	r4, #80	@ 0x50
.L_1f342:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_1f432
.L_1f34a:
	mov	r4, #53	@ 0x35
	b	.L_1f432
.L_1f34e:
	ldr	r0, .L_1f360
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	mov	r4, #53	@ 0x35
	cmp	r0, #0
	beq	.L_1f432
.L_1f35c:
	mov	r4, #51	@ 0x33
	b	.L_1f432
.L_1f360:
	.4byte	gUnk_3000A52
.L_1f364:
	ldr	r0, .L_1f390
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f3d0
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f3c8
	ldr	r1, .L_1f394
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f39c
	ldr	r1, .L_1f398
	mov	r0, #2
	b	.L_1f3a0
.L_1f390:
	.4byte	gUnk_3000A52
.L_1f394:
	.4byte	gSpriteData
.L_1f398:
	.4byte	gCurrentCarriedSprite
.L_1f39c:
	ldr	r1, .L_1f3c0
	mov	r0, #1
.L_1f3a0:
	strb	r0, [r1, #1]
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r5, #8]
	ldr	r1, .L_1f3c4
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	mov	r4, #87	@ 0x57
	b	.L_1f41c
	.align	2, 0
.L_1f3c0:
	.4byte	gCurrentCarriedSprite
.L_1f3c4:
	.4byte	sUnk_82DECA0
.L_1f3c8:
	mov	r4, #51	@ 0x33
	bl	func_801EEE0
	b	.L_1f432
.L_1f3d0:
	mov	r3, #32
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	beq	.L_1f42c
	ldr	r1, .L_1f3f4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f3fc
	ldr	r1, .L_1f3f8
	mov	r0, #2
	b	.L_1f400
	.align	2, 0
.L_1f3f4:
	.4byte	gSpriteData
.L_1f3f8:
	.4byte	gCurrentCarriedSprite
.L_1f3fc:
	ldr	r1, .L_1f424
	mov	r0, #1
.L_1f400:
	strb	r0, [r1, #1]
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r5, #8]
	ldr	r1, .L_1f428
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	mov	r4, #85	@ 0x55
.L_1f41c:
	mov	r0, #50	@ 0x32
	bl	m4aSongNumStart
	b	.L_1f432
.L_1f424:
	.4byte	gCurrentCarriedSprite
.L_1f428:
	.4byte	sUnk_82DECA0
.L_1f42c:
	mov	r4, #53	@ 0x35
	bl	func_801EE9C
.L_1f432:
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_801F43C
func_801F43C:
	push	{r4, r5, lr}
	add	r2, r0, #0
	lsl	r1, r1, #24
	lsr	r3, r1, #24
	ldr	r0, .L_1f45c
	ldrb	r1, [r0, #1]
	add	r5, r0, #0
	cmp	r1, #25
	bls	.L_1f450
	b	.L_1f5c8
.L_1f450:
	lsl	r0, r1, #2
	ldr	r1, .L_1f460
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_1f45c:
	.4byte	gWarioData
.L_1f460:
	.4byte	.L_1f464
.L_1f464:
	.4byte	.L_1f56c
	.4byte	.L_1f5c8
	.4byte	.L_1f56c
	.4byte	.L_1f5c8
	.4byte	.L_1f51c
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f5c8
	.4byte	.L_1f4cc
	.4byte	.L_1f50c
	.4byte	.L_1f4ec
	.4byte	.L_1f50c
.L_1f4cc:
	mov	r4, #33	@ 0x21
	cmp	r3, #0
	beq	.L_1f4d4
	mov	r4, #31
.L_1f4d4:
	ldr	r0, .L_1f4e8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_1f514
	.align	2, 0
.L_1f4e8:
	.4byte	sUnk_82DECA0
.L_1f4ec:
	mov	r4, #33	@ 0x21
	cmp	r3, #0
	beq	.L_1f4f4
	mov	r4, #31
.L_1f4f4:
	ldr	r0, .L_1f508
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f514
	.align	2, 0
.L_1f508:
	.4byte	sUnk_82DECA0
.L_1f50c:
	mov	r4, #80	@ 0x50
	cmp	r3, #0
	beq	.L_1f514
	mov	r4, #79	@ 0x4f
.L_1f514:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_1f5d0
.L_1f51c:
	mov	r4, #85	@ 0x55
	cmp	r3, #0
	beq	.L_1f524
	mov	r4, #87	@ 0x57
.L_1f524:
	ldr	r1, .L_1f53c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_1f544
	ldr	r1, .L_1f540
	mov	r0, #2
	b	.L_1f548
.L_1f53c:
	.4byte	gSpriteData
.L_1f540:
	.4byte	gCurrentCarriedSprite
.L_1f544:
	ldr	r1, .L_1f564
	mov	r0, #1
.L_1f548:
	strb	r0, [r1, #1]
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r5, #8]
	ldr	r1, .L_1f568
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #254	@ 0xfe
	bl	_call_via_r1
	b	.L_1f5bc
.L_1f564:
	.4byte	gCurrentCarriedSprite
.L_1f568:
	.4byte	sUnk_82DECA0
.L_1f56c:
	ldr	r1, .L_1f5a0
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	ldr	r2, .L_1f5a4
	and	r2, r1
	strh	r2, [r0, #0]
	mov	r4, #83	@ 0x53
	cmp	r3, #0
	beq	.L_1f584
	mov	r4, #81	@ 0x51
.L_1f584:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_1f5ac
	ldr	r0, .L_1f5a8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #33	@ 0x21
	bl	_call_via_r1
	b	.L_1f5bc
	.align	2, 0
.L_1f5a0:
	.4byte	gSpriteData
.L_1f5a4:
	.4byte	0x0000feff
.L_1f5a8:
	.4byte	sUnk_82DECA0
.L_1f5ac:
	ldr	r0, .L_1f5c4
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #32
	bl	_call_via_r1
.L_1f5bc:
	mov	r0, #50	@ 0x32
	bl	m4aSongNumStart
	b	.L_1f5d0
.L_1f5c4:
	.4byte	sUnk_82DECA0
.L_1f5c8:
	mov	r4, #53	@ 0x35
	cmp	r3, #0
	beq	.L_1f5d0
	mov	r4, #51	@ 0x33
.L_1f5d0:
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_801F5D8
func_801F5D8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, [sp, #24]
	ldr	r5, [sp, #28]
	mov	r8, r5
	ldr	r5, [sp, #32]
	ldr	r6, [sp, #36]	@ 0x24
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r7, r8
	lsl	r7, r7, #16
	mov	r8, r7
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	cmp	r8, r0
	bcc	.L_1f61c
	cmp	r4, r1
	bcs	.L_1f61c
	cmp	r6, r2
	bcc	.L_1f61c
	cmp	r5, r3
	bcs	.L_1f61c
	mov	r0, #1
	b	.L_1f61e
.L_1f61c:
	mov	r0, #0
.L_1f61e:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_801F628
func_801F628:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #56	@ 0x38
	ldr	r0, .L_1f6e8
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_1f640
	bl	.L_203f8
.L_1f640:
	ldr	r1, .L_1f6ec
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_1f64c
	bl	.L_203f8
.L_1f64c:
	ldrh	r0, [r1, #20]
	str	r0, [sp, #16]
	ldrh	r2, [r1, #18]
	str	r2, [sp, #20]
	ldr	r0, .L_1f6f0
	ldrh	r0, [r0, #0]
	str	r0, [sp, #40]	@ 0x28
	ldrh	r0, [r1, #52]	@ 0x34
	ldr	r3, [sp, #16]
	add	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #24]
	ldrh	r0, [r1, #56]	@ 0x38
	add	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #28]
	ldrh	r0, [r1, #50]	@ 0x32
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #32]
	ldrh	r0, [r1, #54]	@ 0x36
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #36]	@ 0x24
	mov	r7, #0
.L_1f686:
	ldr	r1, .L_1f6f4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r1, r0, r1
	ldrh	r0, [r1, #0]
	mov	r2, #3
	and	r0, r2
	cmp	r0, #3
	beq	.L_1f69c
	bl	.L_203e4
.L_1f69c:
	ldrb	r0, [r1, #31]
	cmp	r0, #0
	beq	.L_1f6a6
	bl	.L_203ea
.L_1f6a6:
	ldrh	r3, [r1, #8]
	str	r3, [sp, #44]	@ 0x2c
	ldrh	r0, [r1, #10]
	str	r0, [sp, #48]	@ 0x30
	add	r0, r1, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	add	r0, r1, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	ldr	r2, [sp, #48]	@ 0x30
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r1, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	add	r0, r1, #0
	add	r0, #36	@ 0x24
	ldrb	r5, [r0, #0]
	cmp	r5, #127	@ 0x7f
	bhi	.L_1f6f8
	add	r0, r3, r5
	b	.L_1f700
.L_1f6e8:
	.4byte	gUnk_3000047
.L_1f6ec:
	.4byte	gWarioData
.L_1f6f0:
	.4byte	gUnk_30019F2
.L_1f6f4:
	.4byte	gSpriteData
.L_1f6f8:
	mov	r0, #127	@ 0x7f
	and	r5, r0
	ldr	r3, [sp, #44]	@ 0x2c
	sub	r0, r3, r5
.L_1f700:
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r0, sl
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r1, r8
	str	r1, [sp, #8]
	mov	r2, r9
	str	r2, [sp, #12]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]	@ 0x24
	bl	func_801F5D8
	cmp	r0, #0
	bne	.L_1f726
	bl	.L_203ee
.L_1f726:
	ldr	r0, .L_1f788
	mov	r2, #0
	strb	r2, [r0, #0]
	mov	r3, sl
	sub	r0, r5, r3
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	add	r0, sl
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r1, r9
	mov	r3, r8
	sub	r0, r1, r3
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	ip, r0
	ldr	r0, .L_1f78c
	strb	r2, [r0, #0]
	sub	r1, r4, #4
	ldr	r6, .L_1f790
	add	r3, r0, #0
	ldr	r0, [sp, #28]
	cmp	r1, r0
	ble	.L_1f76c
	mov	r1, #24
	ldrsh	r0, [r6, r1]
	cmp	r0, #24
	bgt	.L_1f76c
	mov	r0, #1
	strb	r0, [r3, #0]
.L_1f76c:
	add	r0, r4, #4
	ldr	r2, [sp, #24]
	cmp	r0, r2
	bge	.L_1f77c
	ldrb	r0, [r3, #0]
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #0]
.L_1f77c:
	ldr	r0, [sp, #20]
	cmp	ip, r0
	bcc	.L_1f794
	ldrb	r0, [r3, #0]
	mov	r1, #4
	b	.L_1f798
.L_1f788:
	.4byte	gUnk_3000A53
.L_1f78c:
	.4byte	gUnk_3000A52
.L_1f790:
	.4byte	gWarioData
.L_1f794:
	ldrb	r0, [r3, #0]
	mov	r1, #8
.L_1f798:
	orr	r0, r1
	strb	r0, [r3, #0]
	ldrh	r4, [r6, #14]
	ldrb	r0, [r6, #26]
	cmp	r0, #3
	bne	.L_1f7a8
	bl	.L_20172
.L_1f7a8:
	ldr	r1, .L_1f7c8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r2, r0, r1
	ldrb	r0, [r2, #30]
	sub	r0, #1
	mov	ip, r1
	cmp	r0, #72	@ 0x48
	bls	.L_1f7be
	bl	.L_2016c
.L_1f7be:
	lsl	r0, r0, #2
	ldr	r1, .L_1f7cc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1f7c8:
	.4byte	gSpriteData
.L_1f7cc:
	.4byte	.L_1f7d0
.L_1f7d0:
	.4byte	.L_1f8f4
	.4byte	.L_1f91c
	.4byte	.L_1f944
	.4byte	.L_1f96c
	.4byte	.L_1f9e8
	.4byte	.L_1fafc
	.4byte	.L_1fb22
	.4byte	.L_1fb68
	.4byte	.L_1fba4
	.4byte	.L_1f9c4
	.4byte	.L_1fbc8
	.4byte	.L_1fb80
	.4byte	.L_1fc1c
	.4byte	.L_1fc34
	.4byte	.L_1fc54
	.4byte	.L_1fc68
	.4byte	.L_1fc7c
	.4byte	.L_1fc90
	.4byte	.L_1fce0
	.4byte	.L_1fccc
	.4byte	.L_1fd00
	.4byte	.L_1fdcc
	.4byte	.L_1fdcc
	.4byte	.L_1fdcc
	.4byte	.L_1fdcc
	.4byte	.L_1fdcc
	.4byte	.L_1fd24
	.4byte	.L_1fd2e
	.4byte	.L_1fd38
	.4byte	.L_1fd4c
	.4byte	.L_1fd66
	.4byte	.L_1fdf8
	.4byte	.L_1f99c
	.4byte	.L_1fe0c
	.4byte	.L_1fe24
	.4byte	.L_1fe48
	.4byte	.L_1faac
	.4byte	.L_1fad4
	.4byte	.L_1fca4
	.4byte	.L_1fcb8
	.4byte	.L_1fe6c
	.4byte	.L_1fe6c
	.4byte	.L_1fe6c
	.4byte	.L_1feec
	.4byte	.L_1ff14
	.4byte	.L_1ff64
	.4byte	.L_1ff88
	.4byte	.L_1fd42
	.4byte	.L_1ffac
	.4byte	.L_1ffac
	.4byte	.L_1ffd0
	.4byte	.L_1fff4
	.4byte	.L_1fb38
	.4byte	.L_20018
	.4byte	.L_20050
	.4byte	.L_20074
	.4byte	.L_20098
	.4byte	.L_20098
	.4byte	.L_1fa70
	.4byte	.L_200bc
	.4byte	.L_200d8
	.4byte	.L_200ec
	.4byte	.L_2010a
	.4byte	.L_2010a
	.4byte	.L_20124
	.4byte	.L_1feaa
	.4byte	.L_1feaa
	.4byte	.L_1feaa
	.4byte	.L_1fec8
	.4byte	.L_1fb14
	.4byte	.L_1ff3c
	.4byte	.L_1fe98
	.4byte	.L_20140
.L_1f8f4:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f904
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020B10
	b	.L_1f90a
.L_1f904:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f90a:
	ldr	r1, .L_1f918
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1f918:
	.4byte	gSpriteData
.L_1f91c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f92c
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020BB8
	b	.L_1f932
.L_1f92c:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f932:
	ldr	r1, .L_1f940
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1f940:
	.4byte	gSpriteData
.L_1f944:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f954
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020E1C
	b	.L_1f95a
.L_1f954:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f95a:
	ldr	r1, .L_1f968
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1f968:
	.4byte	gSpriteData
.L_1f96c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f984
	ldr	r1, [sp, #20]
	str	r1, [sp, #0]
	add	r0, r7, #0
	add	r1, r4, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_8020CEC
	b	.L_1f98a
.L_1f984:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f98a:
	ldr	r1, .L_1f998
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1f998:
	.4byte	gSpriteData
.L_1f99c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f9ac
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020F28
	b	.L_1f9b2
.L_1f9ac:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f9b2:
	ldr	r1, .L_1f9c0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1f9c0:
	.4byte	gSpriteData
.L_1f9c4:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1f9d2
	add	r0, r7, #0
	bl	func_80211E0
	b	.L_1f9d8
.L_1f9d2:
	add	r0, r7, #0
	bl	func_801E92C
.L_1f9d8:
	ldr	r1, .L_1f9e4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1f9e4:
	.4byte	gSpriteData
.L_1f9e8:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fa5a
	ldr	r0, .L_1fa48
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1fa3c
	ldrb	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_1fa50
	ldr	r0, [sp, #44]	@ 0x2c
	sub	r0, #160	@ 0xa0
	ldr	r1, [sp, #48]	@ 0x30
	bl	func_8023BFC
	ldr	r5, .L_1fa4c
	ldrb	r1, [r5, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1fa50
	ldr	r0, [sp, #16]
	sub	r0, #96	@ 0x60
	ldr	r1, [sp, #20]
	str	r2, [sp, #52]	@ 0x34
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	ldr	r2, [sp, #52]	@ 0x34
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1fa3c
	ldrb	r0, [r6, #1]
	sub	r0, #5
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bls	.L_1fa60
.L_1fa3c:
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020B10
	b	.L_1fa60
	.align	2, 0
.L_1fa48:
	.4byte	gCurrentCarriedSprite
.L_1fa4c:
	.4byte	gUnk_3000A51
.L_1fa50:
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_802125C
	b	.L_1fa60
.L_1fa5a:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fa60:
	ldr	r1, .L_1fa6c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fa6c:
	.4byte	gSpriteData
.L_1fa70:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fa96
	ldr	r0, .L_1fa88
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1fa8c
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020F28
	b	.L_1fa9c
.L_1fa88:
	.4byte	gCurrentCarriedSprite
.L_1fa8c:
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8021318
	b	.L_1fa9c
.L_1fa96:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fa9c:
	ldr	r1, .L_1faa8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1faa8:
	.4byte	gSpriteData
.L_1faac:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fabc
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020FF4
	b	.L_1fac2
.L_1fabc:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fac2:
	ldr	r1, .L_1fad0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1fad0:
	.4byte	gSpriteData
.L_1fad4:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fae4
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_80210E8
	b	.L_1faea
.L_1fae4:
	add	r0, r7, #0
	bl	func_801E92C
.L_1faea:
	ldr	r1, .L_1faf8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1faf8:
	.4byte	gSpriteData
.L_1fafc:
	add	r0, r7, #0
	bl	func_8021720
	ldr	r1, .L_1fb10
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1fb10:
	.4byte	gSpriteData
.L_1fb14:
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, ip
	mov	r1, #112	@ 0x70
	strb	r1, [r0, #28]
	bl	.L_203ce
.L_1fb22:
	add	r0, r7, #0
	bl	func_8021734
	ldr	r1, .L_1fb34
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fb34:
	.4byte	gSpriteData
.L_1fb38:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fb4c
	add	r0, r7, #0
	add	r1, r4, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_80236C4
	b	.L_1fb58
.L_1fb4c:
	ldr	r1, .L_1fb64
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
.L_1fb58:
	ldr	r1, .L_1fb64
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fb64:
	.4byte	gSpriteData
.L_1fb68:
	add	r0, r7, #0
	bl	func_8021564
	ldr	r1, .L_1fb7c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1fb7c:
	.4byte	gSpriteData
.L_1fb80:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fb8e
	add	r0, r7, #0
	bl	func_8021650
	b	.L_1fb94
.L_1fb8e:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fb94:
	ldr	r1, .L_1fba0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fba0:
	.4byte	gSpriteData
.L_1fba4:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fbb2
	add	r0, r7, #0
	bl	func_80215E8
	b	.L_1fbb8
.L_1fbb2:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fbb8:
	ldr	r1, .L_1fbc4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fbc4:
	.4byte	gSpriteData
.L_1fbc8:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fbd6
	add	r0, r7, #0
	bl	func_80216B8
	b	.L_1fc0a
.L_1fbd6:
	cmp	r0, #8
	bne	.L_1fc04
	mov	r0, #0
	strb	r0, [r6, #0]
	ldrb	r1, [r3, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1fbee
	bl	func_801EDF4
	b	.L_1fbf2
.L_1fbee:
	bl	func_801EDC8
.L_1fbf2:
	ldr	r1, .L_1fc00
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #28]
	b	.L_1fc0a
.L_1fc00:
	.4byte	gSpriteData
.L_1fc04:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fc0a:
	ldr	r1, .L_1fc18
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1fc18:
	.4byte	gSpriteData
.L_1fc1c:
	add	r0, r7, #0
	bl	func_8021500
	ldr	r1, .L_1fc30
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
	.align	2, 0
.L_1fc30:
	.4byte	gSpriteData
.L_1fc34:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fc44
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_1fc44
	bl	func_801EA3C
.L_1fc44:
	ldr	r1, .L_1fc50
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	bl	.L_203ca
.L_1fc50:
	.4byte	gSpriteData
.L_1fc54:
	add	r0, r7, #0
	bl	func_801ED48
	ldr	r1, .L_1fc64
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fc64:
	.4byte	gSpriteData
.L_1fc68:
	add	r0, r7, #0
	bl	func_801ECB8
	ldr	r1, .L_1fc78
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fc78:
	.4byte	gSpriteData
.L_1fc7c:
	add	r0, r7, #0
	bl	func_801ECFC
	ldr	r1, .L_1fc8c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fc8c:
	.4byte	gSpriteData
.L_1fc90:
	add	r0, r7, #0
	bl	func_801EC74
	ldr	r1, .L_1fca0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fca0:
	.4byte	gSpriteData
.L_1fca4:
	add	r0, r7, #0
	bl	func_801EC30
	ldr	r1, .L_1fcb4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fcb4:
	.4byte	gSpriteData
.L_1fcb8:
	add	r0, r7, #0
	bl	func_8022C64
	ldr	r1, .L_1fcc8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fcc8:
	.4byte	gSpriteData
.L_1fccc:
	add	r0, r7, #0
	bl	func_801EBCC
	ldr	r1, .L_1fcdc
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fcdc:
	.4byte	gSpriteData
.L_1fce0:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fcf0
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_1fcf0
	bl	func_801EB2C
.L_1fcf0:
	ldr	r1, .L_1fcfc
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_1fcfc:
	.4byte	gSpriteData
.L_1fd00:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fd14
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_1fd14
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020C78
.L_1fd14:
	ldr	r1, .L_1fd20
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_1fd20:
	.4byte	gSpriteData
.L_1fd24:
	add	r0, r7, #0
	mov	r1, sl
	bl	func_8021C30
	b	.L_203d4
.L_1fd2e:
	add	r0, r7, #0
	mov	r1, sl
	bl	func_8021CC8
	b	.L_203d4
.L_1fd38:
	add	r0, r7, #0
	mov	r1, sl
	bl	func_8021D5C
	b	.L_203d4
.L_1fd42:
	add	r0, r7, #0
	mov	r1, sl
	bl	func_8021DD0
	b	.L_203d4
.L_1fd4c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fdcc
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_1fdcc
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_8021E6C
	b	.L_203ce
.L_1fd66:
	ldrb	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1fdc0
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1fd7a
	cmp	r0, #2
	bne	.L_1fdac
.L_1fd7a:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1fd84
	mov	r0, #0
	strb	r0, [r6, #4]
.L_1fd84:
	bl	func_801EB7C
	ldr	r2, .L_1fda8
	mov	r0, #44	@ 0x2c
	add	r1, r7, #0
	mul	r1, r0
	add	r1, r1, r2
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r1, #31]
	ldrh	r0, [r1, #8]
	add	r0, #144	@ 0x90
	strh	r0, [r6, #20]
	b	.L_203ce
	.align	2, 0
.L_1fda8:
	.4byte	gSpriteData
.L_1fdac:
	cmp	r0, #10
	bne	.L_1fdb2
	b	.L_203ce
.L_1fdb2:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_8021E6C
	b	.L_203ce
.L_1fdc0:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fdcc
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1fdea
.L_1fdcc:
	mov	r2, r8
	str	r2, [sp, #0]
	mov	r3, r9
	str	r3, [sp, #4]
	ldr	r0, [sp, #32]
	str	r0, [sp, #8]
	ldr	r1, [sp, #36]	@ 0x24
	str	r1, [sp, #12]
	add	r0, r7, #0
	add	r1, r4, #0
	mov	r2, sl
	add	r3, r5, #0
	bl	func_8021784
	b	.L_203d4
.L_1fdea:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_8021E6C
	b	.L_203ce
.L_1fdf8:
	add	r0, r7, #0
	bl	func_80220F8
	ldr	r1, .L_1fe08
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fe08:
	.4byte	gSpriteData
.L_1fe0c:
	add	r0, r7, #0
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #40]	@ 0x28
	bl	func_8022118
	ldr	r1, .L_1fe20
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fe20:
	.4byte	gSpriteData
.L_1fe24:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fe34
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8022188
	b	.L_1fe3a
.L_1fe34:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fe3a:
	ldr	r1, .L_1fe44
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fe44:
	.4byte	gSpriteData
.L_1fe48:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1fe58
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8022220
	b	.L_1fe5e
.L_1fe58:
	add	r0, r7, #0
	bl	func_801E92C
.L_1fe5e:
	ldr	r1, .L_1fe68
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fe68:
	.4byte	gSpriteData
.L_1fe6c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1fe74
	b	.L_203d4
.L_1fe74:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1fe7c
	b	.L_203d4
.L_1fe7c:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, r8
	mov	r3, r9
	bl	func_80222D8
	ldr	r1, .L_1fe94
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_1fe94:
	.4byte	gSpriteData
.L_1fe98:
	ldr	r2, [sp, #20]
	str	r2, [sp, #0]
	add	r0, r7, #0
	mov	r1, sl
	add	r2, r5, #0
	ldr	r3, [sp, #24]
	bl	func_8022524
	b	.L_203ce
.L_1feaa:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1feb2
	b	.L_203d4
.L_1feb2:
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8022724
	ldr	r1, .L_1fec4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fec4:
	.4byte	gSpriteData
.L_1fec8:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1fed0
	b	.L_203d4
.L_1fed0:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1fed8
	b	.L_203d4
.L_1fed8:
	bl	func_80215C0
	ldr	r1, .L_1fee8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_1fee8:
	.4byte	gSpriteData
.L_1feec:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1fef4
	b	.L_203d4
.L_1fef4:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1fefc
	b	.L_203d4
.L_1fefc:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	bl	func_8022EF8
	ldr	r1, .L_1ff10
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ff10:
	.4byte	gSpriteData
.L_1ff14:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1ff1c
	b	.L_203d4
.L_1ff1c:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1ff24
	b	.L_203d4
.L_1ff24:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	bl	func_8022FC8
	ldr	r1, .L_1ff38
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ff38:
	.4byte	gSpriteData
.L_1ff3c:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_1ff44
	b	.L_203d4
.L_1ff44:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_1ff4c
	b	.L_203d4
.L_1ff4c:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	bl	func_8023110
	ldr	r1, .L_1ff60
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ff60:
	.4byte	gSpriteData
.L_1ff64:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1ff74
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_80233B8
	b	.L_1ff7a
.L_1ff74:
	add	r0, r7, #0
	bl	func_801E92C
.L_1ff7a:
	ldr	r1, .L_1ff84
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ff84:
	.4byte	gSpriteData
.L_1ff88:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1ff98
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_802349C
	b	.L_1ff9e
.L_1ff98:
	add	r0, r7, #0
	bl	func_801E92C
.L_1ff9e:
	ldr	r1, .L_1ffa8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ffa8:
	.4byte	gSpriteData
.L_1ffac:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1ffbc
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_80235A0
	b	.L_1ffc2
.L_1ffbc:
	add	r0, r7, #0
	bl	func_801E92C
.L_1ffc2:
	ldr	r1, .L_1ffcc
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1ffcc:
	.4byte	gSpriteData
.L_1ffd0:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_1ffe0
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_80231F8
	b	.L_1ffe6
.L_1ffe0:
	add	r0, r7, #0
	bl	func_801E92C
.L_1ffe6:
	ldr	r1, .L_1fff0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_1fff0:
	.4byte	gSpriteData
.L_1fff4:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_20004
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_80232C4
	b	.L_2000a
.L_20004:
	add	r0, r7, #0
	bl	func_801E92C
.L_2000a:
	ldr	r1, .L_20014
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_20014:
	.4byte	gSpriteData
.L_20018:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_2003e
	ldrb	r5, [r6, #4]
	cmp	r5, #0
	bne	.L_2003e
	ldr	r1, .L_20048
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #28]
	ldr	r4, .L_2004c
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_2003e
	bl	func_801E4B0
	strb	r5, [r4, #0]
.L_2003e:
	ldr	r1, .L_20048
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_20048:
	.4byte	gSpriteData
.L_2004c:
	.4byte	gCurrentCarriedSprite
.L_20050:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_20060
	add	r0, r7, #0
	add	r1, r4, #0
	bl	func_8020958
	b	.L_20066
.L_20060:
	add	r0, r7, #0
	bl	func_801E92C
.L_20066:
	ldr	r1, .L_20070
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_20070:
	.4byte	gSpriteData
.L_20074:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_2008a
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_2008a
	add	r0, r7, #0
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #40]	@ 0x28
	bl	func_80213F4
.L_2008a:
	ldr	r1, .L_20094
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_20094:
	.4byte	gSpriteData
.L_20098:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_200ae
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_200ae
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	bl	func_8021434
.L_200ae:
	ldr	r1, .L_200b8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_200b8:
	.4byte	gSpriteData
.L_200bc:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_200c8
	add	r0, r7, #0
	bl	func_80237E4
.L_200c8:
	ldr	r1, .L_200d4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_200d4:
	.4byte	gSpriteData
.L_200d8:
	bl	func_801ED18
	ldr	r1, .L_200e8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
	.align	2, 0
.L_200e8:
	.4byte	gSpriteData
.L_200ec:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_200f4
	b	.L_203d4
.L_200f4:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_200fc
	b	.L_203d4
.L_200fc:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	mov	r3, sl
	bl	func_8021F84
	b	.L_203d4
.L_2010a:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_20112
	b	.L_203ce
.L_20112:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_2011a
	b	.L_203ce
.L_2011a:
	add	r0, r7, #0
	mov	r1, sl
	bl	func_8022948
	b	.L_203ce
.L_20124:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_2012c
	b	.L_203d4
.L_2012c:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_20134
	b	.L_203d4
.L_20134:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	bl	func_8022AE8
	b	.L_203ce
.L_20140:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_20148
	b	.L_203ce
.L_20148:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	beq	.L_20150
	b	.L_203ce
.L_20150:
	ldr	r3, [sp, #36]	@ 0x24
	str	r3, [sp, #0]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r1, r9
	str	r1, [sp, #8]
	str	r4, [sp, #12]
	add	r0, r7, #0
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #32]
	bl	func_8022CE8
	b	.L_203ce
.L_2016c:
	mov	r0, #15
	strb	r0, [r2, #31]
	b	.L_203ce
.L_20172:
	ldr	r1, .L_20190
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	ldrb	r0, [r0, #30]
	sub	r0, #6
	mov	ip, r1
	cmp	r0, #78	@ 0x4e
	bls	.L_20186
	b	.L_203c4
.L_20186:
	lsl	r0, r0, #2
	ldr	r1, .L_20194
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_20190:
	.4byte	gSpriteData
.L_20194:
	.4byte	.L_20198
.L_20198:
	.4byte	.L_202d4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_203c4
	.4byte	.L_202e8
	.4byte	.L_202fc
	.4byte	.L_202fc
	.4byte	.L_202fc
	.4byte	.L_20344
	.4byte	.L_20368
	.4byte	.L_20368
	.4byte	.L_20384
	.4byte	.L_203a0
	.4byte	.L_20320
	.4byte	.L_20320
.L_202d4:
	add	r0, r7, #0
	bl	func_8021720
	ldr	r1, .L_202e4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_202e4:
	.4byte	gSpriteData
.L_202e8:
	add	r0, r7, #0
	bl	func_801ED8C
	ldr	r1, .L_202f8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	b	.L_203ca
.L_202f8:
	.4byte	gSpriteData
.L_202fc:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_2030e
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	ldr	r3, [sp, #20]
	bl	func_80204F4
.L_2030e:
	ldr	r1, .L_2031c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
	.align	2, 0
.L_2031c:
	.4byte	gSpriteData
.L_20320:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_20332
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	ldr	r3, [sp, #20]
	bl	func_80209E0
.L_20332:
	ldr	r1, .L_20340
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
	.align	2, 0
.L_20340:
	.4byte	gSpriteData
.L_20344:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_20356
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	ldr	r3, [sp, #20]
	bl	func_80206B8
.L_20356:
	ldr	r1, .L_20364
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
	.align	2, 0
.L_20364:
	.4byte	gSpriteData
.L_20368:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_20374
	add	r0, r7, #0
	bl	func_80207D8
.L_20374:
	ldr	r1, .L_20380
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
.L_20380:
	.4byte	gSpriteData
.L_20384:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_20390
	add	r0, r7, #0
	bl	func_8020408
.L_20390:
	ldr	r1, .L_2039c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
.L_2039c:
	.4byte	gSpriteData
.L_203a0:
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	.L_203b2
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, r9
	ldr	r3, [sp, #20]
	bl	func_8020444
.L_203b2:
	ldr	r1, .L_203c0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	b	.L_203cc
	.align	2, 0
.L_203c0:
	.4byte	gSpriteData
.L_203c4:
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, ip
.L_203ca:
	mov	r1, #15
.L_203cc:
	strb	r1, [r0, #31]
.L_203ce:
	ldr	r1, .L_203e0
	mov	r0, #1
	strb	r0, [r1, #0]
.L_203d4:
	ldr	r0, .L_203e0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_203f8
	b	.L_203ee
	.align	2, 0
.L_203e0:
	.4byte	gUnk_3000A53
.L_203e4:
	ldrb	r0, [r1, #31]
	cmp	r0, #0
	beq	.L_203ee
.L_203ea:
	sub	r0, #1
	strb	r0, [r1, #31]
.L_203ee:
	add	r7, #1
	cmp	r7, #23
	bgt	.L_203f8
	bl	.L_1f686
.L_203f8:
	add	sp, #56	@ 0x38
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8020408
func_8020408:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_20438
	ldr	r0, .L_2043c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #6
	bl	_call_via_r1
	add	r0, r4, #0
	bl	func_801E52C
	ldr	r1, .L_20440
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20438:
	.4byte	sUnk_82DECA0
.L_2043c:
	.4byte	gWarioData
.L_20440:
	.4byte	gSpriteData


thumb_func_start func_8020444
func_8020444:
	push	{r4, r5, lr}
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	lsr	r4, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r1, .L_20464
	ldrb	r2, [r1, #0]
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_2046c
	ldr	r1, .L_20468
	mov	r0, #128	@ 0x80
	b	.L_20480
.L_20464:
	.4byte	gUnk_3000A52
.L_20468:
	.4byte	gWarioData
.L_2046c:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_2049c
	cmp	r5, r3
	bcs	.L_2049c
	cmp	r3, r4
	bcs	.L_2049c
	ldr	r1, .L_20494
	mov	r0, #64	@ 0x40
.L_20480:
	strh	r0, [r1, #16]
	ldr	r2, .L_20498
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r1, [r0, #0]
	mov	r0, #10
	bl	_call_via_r1
	b	.L_204e6
.L_20494:
	.4byte	gWarioData
.L_20498:
	.4byte	sUnk_82DECA0
.L_2049c:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_204c8
	ldr	r1, .L_204c0
	mov	r0, #16
	strh	r0, [r1, #14]
	ldr	r2, .L_204c4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r1, [r0, #0]
	mov	r0, #9
	bl	_call_via_r1
	b	.L_204e6
	.align	2, 0
.L_204c0:
	.4byte	gWarioData
.L_204c4:
	.4byte	sUnk_82DECA0
.L_204c8:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_204e6
	ldr	r1, .L_204ec
	mov	r0, #32
	strh	r0, [r1, #14]
	ldr	r2, .L_204f0
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r1, [r0, #0]
	mov	r0, #9
	bl	_call_via_r1
.L_204e6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_204ec:
	.4byte	gWarioData
.L_204f0:
	.4byte	sUnk_82DECA0


thumb_func_start func_80204F4
func_80204F4:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	ip, r2
	lsl	r3, r3, #16
	lsr	r5, r3, #16
	ldr	r0, .L_2052c
	ldrb	r1, [r0, #1]
	add	r6, r0, #0
	cmp	r1, #13
	bgt	.L_20550
	cmp	r1, #12
	blt	.L_20550
	ldr	r0, .L_20530
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20538
	ldr	r1, .L_20534
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #31
	b	.L_20542
.L_2052c:
	.4byte	gWarioData
.L_20530:
	.4byte	gUnk_3000A52
.L_20534:
	.4byte	gSpriteData
.L_20538:
	ldr	r1, .L_2054c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
.L_20542:
	strb	r1, [r0, #28]
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	b	.L_206ac
.L_2054c:
	.4byte	gSpriteData
.L_20550:
	ldr	r1, .L_20580
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r3, [r0, #30]
	ldr	r1, .L_20584
	ldrb	r2, [r1, #0]
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_20588
	mov	r0, #4
	and	r0, r2
	mov	r5, #53	@ 0x35
	cmp	r0, #0
	beq	.L_20572
	mov	r5, #51	@ 0x33
.L_20572:
	cmp	r3, #75	@ 0x4b
	bne	.L_20578
	b	.L_20678
.L_20578:
	cmp	r3, #77	@ 0x4d
	beq	.L_2057e
	b	.L_206a2
.L_2057e:
	b	.L_20678
.L_20580:
	.4byte	gSpriteData
.L_20584:
	.4byte	gUnk_3000A52
.L_20588:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_205f8
	cmp	r7, r5
	bcs	.L_205f8
	cmp	r5, ip
	bcs	.L_205f8
	cmp	r3, #76	@ 0x4c
	bne	.L_205aa
	mov	r0, #4
	and	r0, r2
	mov	r5, #41	@ 0x29
	cmp	r0, #0
	beq	.L_20678
	mov	r5, #39	@ 0x27
	b	.L_20678
.L_205aa:
	cmp	r3, #75	@ 0x4b
	bne	.L_205d0
	mov	r0, #4
	and	r0, r2
	mov	r5, #33	@ 0x21
	cmp	r0, #0
	beq	.L_205ba
	mov	r5, #31
.L_205ba:
	mov	r0, #64	@ 0x40
	strh	r0, [r6, #16]
	ldr	r1, .L_205cc
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #10
	b	.L_20638
.L_205cc:
	.4byte	sUnk_82DECA0
.L_205d0:
	mov	r0, #4
	and	r0, r2
	mov	r5, #41	@ 0x29
	cmp	r0, #0
	beq	.L_205dc
	mov	r5, #39	@ 0x27
.L_205dc:
	mov	r0, #64	@ 0x40
	strh	r0, [r6, #16]
	ldr	r1, .L_205f4
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #10
	bl	_call_via_r1
	b	.L_206a2
	.align	2, 0
.L_205f4:
	.4byte	sUnk_82DECA0
.L_205f8:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2064c
	mov	r5, #35	@ 0x23
	cmp	r3, #75	@ 0x4b
	bne	.L_2061a
	ldr	r1, .L_20644
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_20678
.L_2061a:
	add	r0, r3, #0
	sub	r0, #76	@ 0x4c
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_206a2
	mov	r5, #31
	mov	r0, #16
	strh	r0, [r6, #14]
	ldr	r1, .L_20648
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #9
.L_20638:
	bl	_call_via_r1
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	b	.L_206a2
.L_20644:
	.4byte	gSpriteData
.L_20648:
	.4byte	sUnk_82DECA0
.L_2064c:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20698
	mov	r5, #37	@ 0x25
	cmp	r3, #75	@ 0x4b
	bne	.L_2066c
	ldr	r1, .L_20690
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_20678
.L_2066c:
	add	r0, r3, #0
	sub	r0, #76	@ 0x4c
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_206a2
.L_20678:
	ldr	r0, .L_20694
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #6
	bl	_call_via_r1
	add	r0, r4, #0
	bl	func_801E52C
	b	.L_206a2
.L_20690:
	.4byte	gSpriteData
.L_20694:
	.4byte	sUnk_82DECA0
.L_20698:
	ldr	r1, .L_206b4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r5, [r0, #28]
.L_206a2:
	ldr	r1, .L_206b4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r5, [r0, #28]
.L_206ac:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_206b4:
	.4byte	gSpriteData


thumb_func_start func_80206B8
func_80206B8:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	lsr	r6, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r0, .L_206f0
	ldrb	r1, [r0, #1]
	add	r7, r0, #0
	cmp	r1, #13
	bgt	.L_20714
	cmp	r1, #12
	blt	.L_20714
	ldr	r0, .L_206f4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_206fc
	ldr	r1, .L_206f8
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #31
	b	.L_20706
	.align	2, 0
.L_206f0:
	.4byte	gWarioData
.L_206f4:
	.4byte	gUnk_3000A52
.L_206f8:
	.4byte	gSpriteData
.L_206fc:
	ldr	r1, .L_20710
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
.L_20706:
	strb	r1, [r0, #28]
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	b	.L_207cc
.L_20710:
	.4byte	gSpriteData
.L_20714:
	ldr	r2, .L_20738
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20740
	cmp	r5, r3
	bcs	.L_20740
	cmp	r3, r6
	bcs	.L_20740
	mov	r5, #116	@ 0x74
	ldr	r0, .L_2073c
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #15
	b	.L_207a8
.L_20738:
	.4byte	gUnk_3000A52
.L_2073c:
	.4byte	sUnk_82DECA0
.L_20740:
	ldrb	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20784
	cmp	r5, r3
	bcs	.L_20784
	cmp	r3, r6
	bcs	.L_20784
	mov	r0, #4
	and	r0, r1
	mov	r5, #33	@ 0x21
	cmp	r0, #0
	beq	.L_2075e
	mov	r5, #31
.L_2075e:
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	ldr	r1, .L_2077c
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #16]
	ldr	r2, .L_20780
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r1, [r0, #0]
	mov	r0, #10
	bl	_call_via_r1
	b	.L_207c2
.L_2077c:
	.4byte	gWarioData
.L_20780:
	.4byte	sUnk_82DECA0
.L_20784:
	ldrb	r2, [r2, #0]
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	beq	.L_20792
	mov	r5, #35	@ 0x23
	b	.L_2079c
.L_20792:
	mov	r0, #8
	and	r0, r2
	cmp	r0, #0
	beq	.L_207b8
	mov	r5, #37	@ 0x25
.L_2079c:
	ldr	r0, .L_207b4
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #6
.L_207a8:
	bl	_call_via_r1
	add	r0, r4, #0
	bl	func_801E52C
	b	.L_207c2
.L_207b4:
	.4byte	sUnk_82DECA0
.L_207b8:
	ldr	r1, .L_207d4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r5, [r0, #28]
.L_207c2:
	ldr	r1, .L_207d4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r5, [r0, #28]
.L_207cc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_207d4:
	.4byte	gSpriteData


thumb_func_start func_80207D8
func_80207D8:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r0, .L_207f8
	ldrb	r1, [r0, #1]
	add	r3, r0, #0
	cmp	r1, #7
	beq	.L_20800
	cmp	r1, #7
	blt	.L_20844
	cmp	r1, #13
	bgt	.L_20844
	cmp	r1, #12
	blt	.L_20844
	ldr	r2, .L_207fc
	b	.L_2080c
	.align	2, 0
.L_207f8:
	.4byte	gWarioData
.L_207fc:
	.4byte	gUnk_3000A52
.L_20800:
	ldr	r2, .L_20824
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20870
.L_2080c:
	ldrb	r1, [r2, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2082c
	ldr	r1, .L_20828
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #31
	b	.L_20836
	.align	2, 0
.L_20824:
	.4byte	gUnk_3000A52
.L_20828:
	.4byte	gSpriteData
.L_2082c:
	ldr	r1, .L_20840
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
.L_20836:
	strb	r1, [r0, #28]
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	b	.L_2094c
.L_20840:
	.4byte	gSpriteData
.L_20844:
	ldr	r2, .L_20868
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20870
	ldr	r1, .L_2086c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	mov	r4, #41	@ 0x29
	cmp	r0, #0
	beq	.L_20942
	mov	r4, #39	@ 0x27
	b	.L_20942
.L_20868:
	.4byte	gUnk_3000A52
.L_2086c:
	.4byte	gSpriteData
.L_20870:
	ldrb	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_208b0
	ldr	r1, .L_208a8
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r2, #64	@ 0x40
	add	r0, r2, #0
	and	r0, r1
	mov	r4, #41	@ 0x29
	cmp	r0, #0
	beq	.L_20892
	mov	r4, #39	@ 0x27
.L_20892:
	strh	r2, [r3, #16]
	ldr	r0, .L_208ac
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #10
	bl	_call_via_r1
	b	.L_20942
	.align	2, 0
.L_208a8:
	.4byte	gSpriteData
.L_208ac:
	.4byte	sUnk_82DECA0
.L_208b0:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_208dc
	ldr	r1, .L_208d8
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_208d0
	ldrb	r0, [r2, #30]
	cmp	r0, #79	@ 0x4f
	beq	.L_208fc
.L_208d0:
	mov	r4, #39	@ 0x27
	mov	r0, #16
	b	.L_20920
	.align	2, 0
.L_208d8:
	.4byte	gSpriteData
.L_208dc:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20938
	ldr	r1, .L_20914
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2091c
	ldrb	r0, [r2, #30]
	cmp	r0, #79	@ 0x4f
	bne	.L_2091c
.L_208fc:
	ldr	r0, .L_20918
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #6
	bl	_call_via_r1
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_2094c
.L_20914:
	.4byte	gSpriteData
.L_20918:
	.4byte	sUnk_82DECA0
.L_2091c:
	mov	r4, #41	@ 0x29
	mov	r0, #32
.L_20920:
	strh	r0, [r3, #14]
	ldr	r1, .L_20934
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #9
	bl	_call_via_r1
	b	.L_20942
.L_20934:
	.4byte	sUnk_82DECA0
.L_20938:
	ldr	r1, .L_20954
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_20942:
	ldr	r1, .L_20954
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
.L_2094c:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20954:
	.4byte	gSpriteData


thumb_func_start func_8020958
func_8020958:
	push	{r4, lr}
	add	r4, r0, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_209cc
	ldr	r0, .L_2098c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_2099e
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20990
	bl	func_801EDF4
	add	r0, r4, #0
	bl	func_801E52C
	mov	r2, #51	@ 0x33
	b	.L_209cc
	.align	2, 0
.L_2098c:
	.4byte	gUnk_3000A52
.L_20990:
	bl	func_801EDC8
	add	r0, r4, #0
	bl	func_801E52C
	mov	r2, #53	@ 0x35
	b	.L_209cc
.L_2099e:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_209ac
	add	r0, r4, #0
	mov	r1, #1
	b	.L_209b8
.L_209ac:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_209c2
	add	r0, r4, #0
	mov	r1, #0
.L_209b8:
	bl	func_801F14C
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	b	.L_209cc
.L_209c2:
	ldr	r1, .L_209dc
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r2, [r0, #28]
.L_209cc:
	ldr	r1, .L_209dc
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r2, [r0, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_209dc:
	.4byte	gSpriteData


thumb_func_start func_80209E0
func_80209E0:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r0, .L_20a08
	ldrb	r1, [r0, #1]
	mov	ip, r0
	cmp	r1, #7
	beq	.L_20a0c
	cmp	r1, #7
	blt	.L_20a38
	cmp	r1, #13
	bgt	.L_20a38
	cmp	r1, #12
	blt	.L_20a38
	b	.L_20a1a
.L_20a08:
	.4byte	gWarioData
.L_20a0c:
	ldr	r2, .L_20a30
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	add	r1, r2, #0
	cmp	r0, #0
	beq	.L_20a4c
.L_20a1a:
	ldr	r1, .L_20a34
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	mov	r0, #60	@ 0x3c
	bl	m4aSongNumStart
	b	.L_20b04
	.align	2, 0
.L_20a30:
	.4byte	gUnk_3000A52
.L_20a34:
	.4byte	gSpriteData
.L_20a38:
	ldr	r1, .L_20a6c
	ldrb	r4, [r1, #0]
	mov	r0, #1
	and	r0, r4
	cmp	r0, #0
	beq	.L_20a4c
	cmp	r6, r3
	bcs	.L_20a4c
	cmp	r3, r7
	bcc	.L_20a5e
.L_20a4c:
	ldrb	r4, [r1, #0]
	mov	r0, #2
	and	r0, r4
	cmp	r0, #0
	beq	.L_20a70
	cmp	r6, r3
	bcs	.L_20a70
	cmp	r3, r7
	bcs	.L_20a70
.L_20a5e:
	mov	r0, #4
	and	r0, r4
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	beq	.L_20afa
.L_20a68:
	mov	r4, #35	@ 0x23
	b	.L_20afa
.L_20a6c:
	.4byte	gUnk_3000A52
.L_20a70:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20a9c
	ldr	r1, .L_20a98
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #84	@ 0x54
	beq	.L_20a68
	ldrh	r1, [r1, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_20afa
	mov	r4, #39	@ 0x27
	b	.L_20aca
.L_20a98:
	.4byte	gSpriteData
.L_20a9c:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20af0
	ldr	r1, .L_20ab8
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #84	@ 0x54
	bne	.L_20abc
	mov	r4, #37	@ 0x25
	b	.L_20afa
	.align	2, 0
.L_20ab8:
	.4byte	gSpriteData
.L_20abc:
	ldrh	r1, [r1, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	beq	.L_20afa
	mov	r4, #41	@ 0x29
.L_20aca:
	ldr	r0, .L_20ae8
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	beq	.L_20afa
	ldr	r0, .L_20aec
	mov	r2, ip
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #6
	bl	_call_via_r1
	b	.L_20afa
	.align	2, 0
.L_20ae8:
	.4byte	gUnk_3000047
.L_20aec:
	.4byte	sUnk_82DECA0
.L_20af0:
	ldr	r1, .L_20b0c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_20afa:
	ldr	r1, .L_20b0c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
.L_20b04:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20b0c:
	.4byte	gSpriteData


thumb_func_start func_8020B10
func_8020B10:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	add	r7, r6, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_20ba2
	ldr	r0, .L_20b4c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20b60
	ldr	r0, .L_20b50
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_20b44
	cmp	r0, #28
	bne	.L_20b54
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_20b44:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_20ba2
.L_20b4c:
	.4byte	gUnk_3000A52
.L_20b50:
	.4byte	gWarioData
.L_20b54:
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_20b92
.L_20b60:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20b74
	add	r0, r5, #0
	add	r1, r7, #0
	mov	r2, #0
	bl	func_801F00C
	b	.L_20b92
.L_20b74:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20b82
	add	r0, r5, #0
	mov	r1, #1
	b	.L_20b8e
.L_20b82:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20b98
	add	r0, r5, #0
	mov	r1, #0
.L_20b8e:
	bl	func_801F14C
.L_20b92:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20ba2
.L_20b98:
	ldr	r1, .L_20bb4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_20ba2:
	ldr	r1, .L_20bb4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20bb4:
	.4byte	gSpriteData


thumb_func_start func_8020BB8
func_8020BB8:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	add	r6, r5, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_20c62
	ldr	r0, .L_20bf4
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20c08
	ldr	r0, .L_20bf8
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_20bec
	cmp	r0, #28
	bne	.L_20bfc
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_20bec:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_20c62
.L_20bf4:
	.4byte	gUnk_3000A52
.L_20bf8:
	.4byte	gWarioData
.L_20bfc:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_20c4e
.L_20c08:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20c1c
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #0
	bl	func_801F00C
	b	.L_20c4e
.L_20c1c:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20c36
	mov	r0, #16
	and	r0, r5
	cmp	r0, #0
	beq	.L_20c32
	add	r0, r7, #0
	mov	r1, #1
	b	.L_20c4a
.L_20c32:
	mov	r4, #51	@ 0x33
	b	.L_20c62
.L_20c36:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20c58
	mov	r0, #32
	and	r6, r0
	cmp	r6, #0
	beq	.L_20c54
	add	r0, r7, #0
	mov	r1, #0
.L_20c4a:
	bl	func_801F14C
.L_20c4e:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20c62
.L_20c54:
	mov	r4, #53	@ 0x35
	b	.L_20c62
.L_20c58:
	ldr	r1, .L_20c74
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_20c62:
	ldr	r1, .L_20c74
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20c74:
	.4byte	gSpriteData


thumb_func_start func_8020C78
func_8020C78:
	push	{r4, r5, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldr	r0, .L_20cb4
	ldrb	r1, [r0, #0]
	mov	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_20cd0
	ldr	r1, .L_20cb8
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r2, [r0, #30]
	ldr	r0, .L_20cbc
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_20caa
	cmp	r0, #28
	bne	.L_20cc0
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_20caa:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_20cd6
	.align	2, 0
.L_20cb4:
	.4byte	gUnk_3000A52
.L_20cb8:
	.4byte	gSpriteData
.L_20cbc:
	.4byte	gWarioData
.L_20cc0:
	add	r0, r5, #0
	add	r1, r3, #0
	mov	r2, #1
	bl	func_801F00C
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20cd6
.L_20cd0:
	bl	func_801EBA4
	mov	r4, #19
.L_20cd6:
	ldr	r1, .L_20ce8
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20ce8:
	.4byte	gSpriteData


thumb_func_start func_8020CEC
func_8020CEC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r6, r0, #0
	ldr	r0, [sp, #32]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r1
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r8, r3
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldr	r1, .L_20d5c
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_20e00
	ldr	r2, .L_20d60
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20d74
	cmp	r7, r5
	bcs	.L_20d74
	cmp	r5, r8
	bcs	.L_20d74
	ldr	r0, .L_20d64
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_20d54
	cmp	r0, #28
	bne	.L_20d68
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_20d54:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_20e00
.L_20d5c:
	.4byte	gSpriteData
.L_20d60:
	.4byte	gUnk_3000A52
.L_20d64:
	.4byte	gWarioData
.L_20d68:
	add	r0, r6, #0
	mov	r1, sl
	mov	r2, #1
	bl	func_801F00C
	b	.L_20df0
.L_20d74:
	ldrb	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20d92
	cmp	r7, r5
	bcs	.L_20d92
	cmp	r5, r8
	bcs	.L_20d92
	add	r0, r6, #0
	mov	r1, sl
	mov	r2, #0
	bl	func_801F00C
	b	.L_20df0
.L_20d92:
	ldrb	r1, [r2, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20dbe
	mov	r0, r9
	cmp	r0, #0
	bne	.L_20db8
	ldr	r0, .L_20db4
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_20e00
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_20ddc
.L_20db4:
	.4byte	gWarioData
.L_20db8:
	add	r0, r6, #0
	mov	r1, #1
	b	.L_20dec
.L_20dbe:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20df6
	mov	r0, r9
	cmp	r0, #0
	beq	.L_20de8
	ldr	r0, .L_20de4
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_20e00
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_20ddc:
	add	r0, r6, #0
	bl	func_801E52C
	b	.L_20e00
.L_20de4:
	.4byte	gWarioData
.L_20de8:
	add	r0, r6, #0
	mov	r1, #0
.L_20dec:
	bl	func_801F14C
.L_20df0:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20e00
.L_20df6:
	ldr	r1, .L_20e18
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_20e00:
	ldr	r1, .L_20e18
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_20e18:
	.4byte	gSpriteData


thumb_func_start func_8020E1C
func_8020E1C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	mov	r9, r7
	ldr	r1, .L_20e78
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r8, r0
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	sl, r6
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_20f0a
	ldr	r0, .L_20e7c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20e90
	ldr	r0, .L_20e80
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_20e6e
	cmp	r0, #28
	bne	.L_20e84
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_20e6e:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_20f0a
	.align	2, 0
.L_20e78:
	.4byte	gSpriteData
.L_20e7c:
	.4byte	gUnk_3000A52
.L_20e80:
	.4byte	gWarioData
.L_20e84:
	add	r0, r5, #0
	add	r1, r7, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_20f00
.L_20e90:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20ea4
	add	r0, r5, #0
	mov	r1, r9
	mov	r2, #0
	bl	func_801F00C
	b	.L_20f00
.L_20ea4:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20ece
	cmp	r6, #0
	bne	.L_20ec8
	ldr	r0, .L_20ec4
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_20f0a
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_20eec
	.align	2, 0
.L_20ec4:
	.4byte	gWarioData
.L_20ec8:
	add	r0, r5, #0
	mov	r1, #1
	b	.L_20efc
.L_20ece:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20f06
	mov	r0, sl
	cmp	r0, #0
	beq	.L_20ef8
	ldr	r0, .L_20ef4
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_20f0a
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_20eec:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_20f0a
.L_20ef4:
	.4byte	gWarioData
.L_20ef8:
	add	r0, r5, #0
	mov	r1, #0
.L_20efc:
	bl	func_801F14C
.L_20f00:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20f0a
.L_20f06:
	mov	r0, r8
	ldrb	r4, [r0, #28]
.L_20f0a:
	ldr	r1, .L_20f24
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20f24:
	.4byte	gSpriteData


thumb_func_start func_8020F28
func_8020F28:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r1, .L_20f78
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r7, r0, r1
	ldrh	r1, [r7, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_20fda
	ldr	r0, .L_20f7c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_20fa0
	cmp	r6, #0
	bne	.L_20f84
	ldr	r0, .L_20f80
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_20fda
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_20f94
	.align	2, 0
.L_20f78:
	.4byte	gSpriteData
.L_20f7c:
	.4byte	gUnk_3000A52
.L_20f80:
	.4byte	gWarioData
.L_20f84:
	ldr	r0, .L_20f9c
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_20fda
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_20f94:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_20fda
.L_20f9c:
	.4byte	gWarioData
.L_20fa0:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_20fb4
	add	r0, r5, #0
	mov	r1, r8
	mov	r2, #0
	bl	func_801F00C
	b	.L_20fd2
.L_20fb4:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_20fc2
	add	r0, r5, #0
	mov	r1, #1
	b	.L_20fce
.L_20fc2:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_20fd8
	add	r0, r5, #0
	mov	r1, #0
.L_20fce:
	bl	func_801F14C
.L_20fd2:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_20fda
.L_20fd8:
	ldrb	r4, [r7, #28]
.L_20fda:
	ldr	r1, .L_20ff0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_20ff0:
	.4byte	gSpriteData


thumb_func_start func_8020FF4
func_8020FF4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r1, .L_21048
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r7, r0, r1
	ldrh	r1, [r7, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r9, r5
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_210cc
	ldr	r0, .L_2104c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_21054
	cmp	r5, #0
	bne	.L_210a0
	ldr	r0, .L_21050
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_210cc
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_210b0
	.align	2, 0
.L_21048:
	.4byte	gSpriteData
.L_2104c:
	.4byte	gUnk_3000A52
.L_21050:
	.4byte	gWarioData
.L_21054:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_21068
	add	r0, r6, #0
	mov	r1, r8
	mov	r2, #0
	bl	func_801F00C
	b	.L_210c4
.L_21068:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21092
	cmp	r5, #0
	bne	.L_2108c
	ldr	r0, .L_21088
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_210cc
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_210b0
	.align	2, 0
.L_21088:
	.4byte	gWarioData
.L_2108c:
	add	r0, r6, #0
	mov	r1, #1
	b	.L_210c0
.L_21092:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_210ca
	mov	r0, r9
	cmp	r0, #0
	beq	.L_210bc
.L_210a0:
	ldr	r0, .L_210b8
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_210cc
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_210b0:
	add	r0, r6, #0
	bl	func_801E52C
	b	.L_210cc
.L_210b8:
	.4byte	gWarioData
.L_210bc:
	add	r0, r6, #0
	mov	r1, #0
.L_210c0:
	bl	func_801F14C
.L_210c4:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_210cc
.L_210ca:
	ldrb	r4, [r7, #28]
.L_210cc:
	ldr	r1, .L_210e4
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_210e4:
	.4byte	gSpriteData


thumb_func_start func_80210E8
func_80210E8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r1, .L_21140
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r7, r0, r1
	ldrh	r1, [r7, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r9, r6
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_211c4
	ldr	r0, .L_21144
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_2114c
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21198
	ldr	r0, .L_21148
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_211c4
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_211a8
	.align	2, 0
.L_21140:
	.4byte	gSpriteData
.L_21144:
	.4byte	gUnk_3000A52
.L_21148:
	.4byte	gWarioData
.L_2114c:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_21160
	add	r0, r5, #0
	mov	r1, r8
	mov	r2, #0
	bl	func_801F00C
	b	.L_211bc
.L_21160:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2118a
	cmp	r6, #0
	beq	.L_21184
	ldr	r0, .L_21180
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_211c4
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_211a8
	.align	2, 0
.L_21180:
	.4byte	gWarioData
.L_21184:
	add	r0, r5, #0
	mov	r1, #1
	b	.L_211b8
.L_2118a:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_211c2
	mov	r0, r9
	cmp	r0, #0
	bne	.L_211b4
.L_21198:
	ldr	r0, .L_211b0
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_211c4
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_211a8:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_211c4
.L_211b0:
	.4byte	gWarioData
.L_211b4:
	add	r0, r5, #0
	mov	r1, #0
.L_211b8:
	bl	func_801F14C
.L_211bc:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_211c4
.L_211c2:
	ldrb	r4, [r7, #28]
.L_211c4:
	ldr	r1, .L_211dc
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_211dc:
	.4byte	gSpriteData


thumb_func_start func_80211E0
func_80211E0:
	push	{r4, r5, lr}
	add	r5, r0, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_21246
	ldr	r0, .L_21210
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21218
	ldr	r0, .L_21214
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_21246
	mov	r4, #110	@ 0x6e
	bl	func_801EDF4
	b	.L_21230
	.align	2, 0
.L_21210:
	.4byte	gUnk_3000A52
.L_21214:
	.4byte	gWarioData
.L_21218:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_2123c
	ldr	r0, .L_21238
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_21246
	mov	r4, #112	@ 0x70
	bl	func_801EDC8
.L_21230:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_21246
.L_21238:
	.4byte	gWarioData
.L_2123c:
	ldr	r1, .L_21258
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_21246:
	ldr	r1, .L_21258
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_21258:
	.4byte	gSpriteData


thumb_func_start func_802125C
func_802125C:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	add	r6, r5, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_21304
	ldr	r0, .L_21298
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_212ac
	ldr	r0, .L_2129c
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_21290
	cmp	r0, #28
	bne	.L_212a0
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21290:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_21304
.L_21298:
	.4byte	gUnk_3000A52
.L_2129c:
	.4byte	gWarioData
.L_212a0:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_212f0
.L_212ac:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_212be
	add	r0, r7, #0
	add	r1, r5, #0
	bl	func_801F200
	b	.L_212f0
.L_212be:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_212d8
	mov	r0, #16
	and	r0, r5
	cmp	r0, #0
	beq	.L_212d4
	add	r0, r7, #0
	mov	r1, #1
	b	.L_212ec
.L_212d4:
	mov	r4, #51	@ 0x33
	b	.L_21304
.L_212d8:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_212fa
	mov	r0, #32
	and	r6, r0
	cmp	r6, #0
	beq	.L_212f6
	add	r0, r7, #0
	mov	r1, #0
.L_212ec:
	bl	func_801F43C
.L_212f0:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_21304
.L_212f6:
	mov	r4, #53	@ 0x35
	b	.L_21304
.L_212fa:
	ldr	r1, .L_21314
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_21304:
	ldr	r1, .L_21314
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_21314:
	.4byte	gSpriteData


thumb_func_start func_8021318
func_8021318:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	add	r7, r5, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_213e0
	ldr	r0, .L_21360
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_21388
	ldr	r1, .L_21364
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_2136c
	ldr	r0, .L_21368
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_213e0
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_2137c
	.align	2, 0
.L_21360:
	.4byte	gUnk_3000A52
.L_21364:
	.4byte	gSpriteData
.L_21368:
	.4byte	gWarioData
.L_2136c:
	ldr	r0, .L_21384
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_213e0
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_2137c:
	add	r0, r6, #0
	bl	func_801E52C
	b	.L_213e0
.L_21384:
	.4byte	gWarioData
.L_21388:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_2139a
	add	r0, r6, #0
	add	r1, r5, #0
	bl	func_801F200
	b	.L_213cc
.L_2139a:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_213b4
	mov	r0, #16
	and	r0, r5
	cmp	r0, #0
	beq	.L_213b0
	add	r0, r6, #0
	mov	r1, #1
	b	.L_213c8
.L_213b0:
	mov	r4, #51	@ 0x33
	b	.L_213e0
.L_213b4:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_213d6
	mov	r0, #32
	and	r7, r0
	cmp	r7, #0
	beq	.L_213d2
	add	r0, r6, #0
	mov	r1, #0
.L_213c8:
	bl	func_801F43C
.L_213cc:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_213e0
.L_213d2:
	mov	r4, #53	@ 0x35
	b	.L_213e0
.L_213d6:
	ldr	r1, .L_213f0
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_213e0:
	ldr	r1, .L_213f0
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_213f0:
	.4byte	gSpriteData


thumb_func_start func_80213F4
func_80213F4:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r1, r2
	bhi	.L_2141a
	cmp	r1, r2
	bcs	.L_2140e
	bl	func_801EDC8
	b	.L_21428
.L_2140e:
	ldr	r0, .L_21420
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21424
.L_2141a:
	bl	func_801EDF4
	b	.L_21428
.L_21420:
	.4byte	gUnk_3000A52
.L_21424:
	bl	func_801EDC8
.L_21428:
	add	r0, r4, #0
	bl	func_801E52C
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8021434
func_8021434:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r0, .L_2147c
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2149e
	ldr	r1, .L_21480
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_21464
	ldrb	r0, [r2, #30]
	cmp	r0, #58	@ 0x3a
	bne	.L_21492
.L_21464:
	ldr	r2, .L_21484
	ldrb	r0, [r2, #1]
	cmp	r0, #15
	bgt	.L_2148c
	cmp	r0, #12
	blt	.L_2148c
	ldrh	r0, [r2, #54]	@ 0x36
	sub	r0, r3, r0
	strh	r0, [r2, #18]
	ldr	r1, .L_21488
	ldrb	r0, [r2, #0]
	b	.L_214ce
.L_2147c:
	.4byte	gUnk_3000A52
.L_21480:
	.4byte	gSpriteData
.L_21484:
	.4byte	gWarioData
.L_21488:
	.4byte	sUnk_82DECA0
.L_2148c:
	bl	func_801EF50
	b	.L_214f8
.L_21492:
	bl	func_801EDF4
	add	r0, r4, #0
	bl	func_801E52C
	b	.L_214f8
.L_2149e:
	ldr	r1, .L_214dc
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r3, r0, r1
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_214b6
	ldrb	r0, [r3, #30]
	cmp	r0, #58	@ 0x3a
	bne	.L_214ee
.L_214b6:
	ldr	r3, .L_214e0
	ldrb	r0, [r3, #1]
	cmp	r0, #15
	bgt	.L_214e8
	cmp	r0, #12
	blt	.L_214e8
	ldrh	r0, [r3, #50]	@ 0x32
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r3, #18]
	ldr	r1, .L_214e4
	ldrb	r0, [r3, #0]
.L_214ce:
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #16
	bl	_call_via_r1
	b	.L_214f8
.L_214dc:
	.4byte	gSpriteData
.L_214e0:
	.4byte	gWarioData
.L_214e4:
	.4byte	sUnk_82DECA0
.L_214e8:
	bl	func_801EF94
	b	.L_214f8
.L_214ee:
	bl	func_801EDC8
	add	r0, r4, #0
	bl	func_801E52C
.L_214f8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8021500
func_8021500:
	push	{lr}
	ldr	r2, .L_2152c
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_21556
	ldr	r0, .L_21530
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	beq	.L_21556
	ldr	r0, .L_21534
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21538
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_21550
	bl	func_801EDF4
	b	.L_2154a
	.align	2, 0
.L_2152c:
	.4byte	gWarioData
.L_21530:
	.4byte	gUnk_3000047
.L_21534:
	.4byte	gUnk_3000A52
.L_21538:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_21550
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_21550
	bl	func_801EDC8
.L_2154a:
	ldr	r1, .L_2155c
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
.L_21550:
	ldr	r1, .L_21560
	mov	r0, #0
	strb	r0, [r1, #0]
.L_21556:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2155c:
	.4byte	gUnk_3000A59
.L_21560:
	.4byte	gUnk_3000A5B


thumb_func_start func_8021564
func_8021564:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r4, .L_21598
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_215b8
	bl	func_801EFD4
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_215b8
	ldr	r0, .L_2159c
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_215a0
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_215b8
	bl	func_801EDF4
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_215b8
.L_21598:
	.4byte	gWarioData
.L_2159c:
	.4byte	gUnk_3000A52
.L_215a0:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_215b8
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_215b8
	bl	func_801EDC8
	add	r0, r5, #0
	bl	func_801E52C
.L_215b8:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80215C0
func_80215C0:
	push	{lr}
	ldr	r0, .L_215d4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_215d8
	bl	func_801EDF4
	b	.L_215e4
.L_215d4:
	.4byte	gUnk_3000A52
.L_215d8:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_215e4
	bl	func_801EDC8
.L_215e4:
	pop	{r0}
	bx	r0


thumb_func_start func_80215E8
func_80215E8:
	push	{r4, lr}
	add	r4, r0, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_21638
	ldr	r0, .L_21614
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2161c
	ldr	r0, .L_21618
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_21636
	bl	func_801EDF4
	b	.L_21630
	.align	2, 0
.L_21614:
	.4byte	gUnk_3000A52
.L_21618:
	.4byte	gWarioData
.L_2161c:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_21638
	ldr	r0, .L_21648
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_21636
	bl	func_801EDC8
.L_21630:
	add	r0, r4, #0
	bl	func_801E52C
.L_21636:
	mov	r2, #49	@ 0x31
.L_21638:
	ldr	r1, .L_2164c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r2, [r0, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_21648:
	.4byte	gWarioData
.L_2164c:
	.4byte	gSpriteData


thumb_func_start func_8021650
func_8021650:
	push	{r4, lr}
	add	r4, r0, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_216a4
	ldr	r0, .L_2167c
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21684
	ldr	r0, .L_21680
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_216ae
	bl	func_801EDF4
	b	.L_21698
	.align	2, 0
.L_2167c:
	.4byte	gUnk_3000A52
.L_21680:
	.4byte	gWarioData
.L_21684:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_216ae
	ldr	r0, .L_216a0
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_216ae
	bl	func_801EDC8
.L_21698:
	add	r0, r4, #0
	bl	func_801E52C
	b	.L_216ae
.L_216a0:
	.4byte	gWarioData
.L_216a4:
	ldr	r1, .L_216b4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r2, [r0, #28]
.L_216ae:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_216b4:
	.4byte	gSpriteData


thumb_func_start func_80216B8
func_80216B8:
	push	{r4, lr}
	add	r4, r0, #0
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_21708
	ldr	r0, .L_216e4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_216ec
	ldr	r0, .L_216e8
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_21706
	bl	func_801EDF4
	b	.L_21700
	.align	2, 0
.L_216e4:
	.4byte	gUnk_3000A52
.L_216e8:
	.4byte	gWarioData
.L_216ec:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_21708
	ldr	r0, .L_21718
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_21706
	bl	func_801EDC8
.L_21700:
	add	r0, r4, #0
	bl	func_801E52C
.L_21706:
	mov	r2, #108	@ 0x6c
.L_21708:
	ldr	r1, .L_2171c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	strb	r2, [r0, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_21718:
	.4byte	gWarioData
.L_2171c:
	.4byte	gSpriteData


thumb_func_start func_8021720
func_8021720:
	ldr	r2, .L_21730
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	bx	lr
	.align	2, 0
.L_21730:
	.4byte	gSpriteData


thumb_func_start func_8021734
func_8021734:
	push	{lr}
	ldr	r2, .L_21764
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	ldr	r1, .L_21768
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_2177a
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	bne	.L_2177a
	ldr	r0, .L_2176c
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21770
	bl	func_801EF50
	b	.L_21774
	.align	2, 0
.L_21764:
	.4byte	gSpriteData
.L_21768:
	.4byte	gWarioData
.L_2176c:
	.4byte	gUnk_3000A52
.L_21770:
	bl	func_801EF94
.L_21774:
	ldr	r1, .L_21780
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
.L_2177a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_21780:
	.4byte	gWarioData


thumb_func_start func_8021784
func_8021784:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	str	r0, [sp, #0]
	ldr	r0, [sp, #40]	@ 0x28
	ldr	r4, [sp, #44]	@ 0x2c
	ldr	r5, [sp, #48]	@ 0x30
	ldr	r6, [sp, #52]	@ 0x34
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r2, [sp, #4]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	sl, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r9, r4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	ldr	r1, .L_21808
	ldrb	r2, [r1, #0]
	mov	r0, #1
	and	r0, r2
	add	r7, r1, #0
	cmp	r0, #0
	beq	.L_21818
	ldr	r0, .L_2180c
	ldrb	r3, [r0, #0]
	add	r4, r0, #0
	cmp	r3, #0
	beq	.L_217f2
	cmp	r3, #8
	beq	.L_217ec
	mov	r0, r8
	add	r0, #5
	cmp	r0, r6
	bgt	.L_217ec
	mov	r0, r9
	sub	r0, #5
	cmp	r0, r5
	bge	.L_217f2
.L_217ec:
	mov	r0, #254	@ 0xfe
	and	r0, r2
	strb	r0, [r7, #0]
.L_217f2:
	ldr	r0, .L_21810
	ldrh	r0, [r0, #0]
	ldr	r3, .L_21814
	ldrh	r4, [r4, #20]
	cmp	r0, r4
	bls	.L_21850
	ldrb	r1, [r7, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r7, #0]
	b	.L_21850
.L_21808:
	.4byte	gUnk_3000A52
.L_2180c:
	.4byte	gWarioData
.L_21810:
	.4byte	gUnk_30019F4
.L_21814:
	.4byte	gSpriteData
.L_21818:
	mov	r0, #2
	and	r0, r2
	ldr	r3, .L_21844
	cmp	r0, #0
	beq	.L_21850
	mov	r0, #44	@ 0x2c
	ldr	r1, [sp, #0]
	mul	r0, r1
	add	r0, r0, r3
	ldrb	r0, [r0, #30]
	cmp	r0, #22
	beq	.L_21850
	ldr	r0, .L_21848
	ldr	r1, .L_2184c
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #20]
	cmp	r0, r1
	bcs	.L_21850
	mov	r0, #253	@ 0xfd
	and	r0, r2
	strb	r0, [r7, #0]
	b	.L_21c16
.L_21844:
	.4byte	gSpriteData
.L_21848:
	.4byte	gUnk_30019F4
.L_2184c:
	.4byte	gWarioData
.L_21850:
	mov	r0, #44	@ 0x2c
	ldr	r2, [sp, #0]
	mul	r0, r2
	add	r3, r0, r3
	ldrb	r6, [r3, #28]
	ldrb	r1, [r7, #0]
	mov	r5, #1
	and	r5, r1
	cmp	r5, #0
	beq	.L_218b0
	ldr	r1, .L_2188c
	ldr	r0, [sp, #4]
	add	r0, #1
	mov	r2, #0
	strh	r0, [r1, #20]
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_2189a
	ldrb	r0, [r1, #1]
	cmp	r0, #27
	beq	.L_21884
	cmp	r0, #28
	bne	.L_21890
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21884:
	mov	r6, #49	@ 0x31
	bl	func_801EF28
	b	.L_21c00
.L_2188c:
	.4byte	gWarioData
.L_21890:
	ldrh	r0, [r3, #0]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #5
	add	r1, r4, #0
	b	.L_218a2
.L_2189a:
	ldrh	r0, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r1, r2, #0
.L_218a2:
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_21c00
.L_218b0:
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_21960
	ldrb	r0, [r3, #30]
	cmp	r0, #22
	bne	.L_21910
	ldr	r2, .L_21904
	ldrh	r0, [r2, #52]	@ 0x34
	ldrh	r4, [r2, #20]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_218fc
	ldrb	r0, [r2, #1]
	cmp	r0, #23
	beq	.L_218fc
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	mov	r0, #52	@ 0x34
	ldrsh	r1, [r2, r0]
	mov	r0, #80	@ 0x50
	neg	r0, r0
	cmp	r1, r0
	bge	.L_218fc
	ldr	r0, .L_21908
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #52	@ 0x34
	bl	_call_via_r1
.L_218fc:
	ldr	r1, .L_2190c
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_21c16
.L_21904:
	.4byte	gWarioData
.L_21908:
	.4byte	sUnk_82DECA0
.L_2190c:
	.4byte	gUnk_3000A53
.L_21910:
	ldr	r4, .L_21958
	strb	r5, [r4, #0]
	mov	r0, sl
	add	r0, #100	@ 0x64
	ldrh	r1, [r3, #10]
	bl	func_8023BFC
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_21930
	ldr	r1, .L_2195c
	ldrh	r0, [r1, #52]	@ 0x34
	sub	r0, #1
	mov	r2, sl
	sub	r0, r2, r0
	strh	r0, [r1, #20]
.L_21930:
	ldrb	r1, [r7, #0]
	mov	r0, #4
	and	r0, r1
	mov	r6, #53	@ 0x35
	cmp	r0, #0
	beq	.L_2193e
	mov	r6, #51	@ 0x33
.L_2193e:
	ldr	r1, .L_2195c
	ldrb	r0, [r1, #26]
	cmp	r0, #0
	bne	.L_21948
	b	.L_21c00
.L_21948:
	mov	r4, #24
	ldrsh	r0, [r1, r4]
	cmp	r0, #0
	bgt	.L_21952
	b	.L_21c00
.L_21952:
	strh	r5, [r1, #24]
	b	.L_21c00
	.align	2, 0
.L_21958:
	.4byte	gUnk_3000A51
.L_2195c:
	.4byte	gWarioData
.L_21960:
	mov	r0, #4
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_2196e
	b	.L_21aa4
.L_2196e:
	ldr	r1, .L_2198c
	ldrh	r0, [r1, #54]	@ 0x36
	mov	r4, r8
	sub	r0, r4, r0
	strh	r0, [r1, #18]
	strh	r2, [r1, #22]
	ldrb	r0, [r1, #0]
	add	r4, r1, #0
	cmp	r0, #2
	beq	.L_21a64
	cmp	r0, #2
	bgt	.L_21990
	cmp	r0, #0
	beq	.L_2199e
	b	.L_21c00
.L_2198c:
	.4byte	gWarioData
.L_21990:
	cmp	r0, #4
	bne	.L_21996
	b	.L_21be0
.L_21996:
	cmp	r0, #6
	bne	.L_2199c
	b	.L_21a90
.L_2199c:
	b	.L_21c00
.L_2199e:
	ldrb	r0, [r3, #30]
	sub	r0, #23
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_219bc
	mov	r0, #16
	mov	r1, ip
	and	r0, r1
	cmp	r0, #0
	bne	.L_219b6
	b	.L_21c00
.L_219b6:
	bl	func_801EF50
	b	.L_21c00
.L_219bc:
	mov	r0, #16
	mov	r2, ip
	and	r0, r2
	cmp	r0, #0
	bne	.L_219c8
	b	.L_21c00
.L_219c8:
	ldrb	r0, [r4, #1]
	sub	r0, #12
	cmp	r0, #13
	bhi	.L_21a5c
	lsl	r0, r0, #2
	ldr	r1, .L_219dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_219dc:
	.4byte	.L_219e0
.L_219e0:
	.4byte	.L_21a44
	.4byte	.L_21a44
	.4byte	.L_21a44
	.4byte	.L_21a44
	.4byte	.L_21a5c
	.4byte	.L_21a5c
	.4byte	.L_21a5c
	.4byte	.L_21a5c
	.4byte	.L_21a5c
	.4byte	.L_21a5c
	.4byte	.L_21a18
	.4byte	.L_21a18
	.4byte	.L_21a2c
	.4byte	.L_21a2c
.L_21a18:
	mov	r0, #1
	strb	r0, [r4, #8]
	ldr	r1, .L_21a28
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	b	.L_21a36
.L_21a28:
	.4byte	sUnk_82DECA0
.L_21a2c:
	ldr	r0, .L_21a40
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
.L_21a36:
	mov	r0, #26
	bl	_call_via_r1
	mov	r6, #31
	b	.L_21c00
.L_21a40:
	.4byte	sUnk_82DECA0
.L_21a44:
	ldrh	r0, [r4, #54]	@ 0x36
	mov	r1, r8
	sub	r0, r1, r0
	strh	r0, [r4, #18]
	ldr	r1, .L_21a60
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #16
	bl	_call_via_r1
.L_21a5c:
	mov	r6, #51	@ 0x33
	b	.L_21c00
.L_21a60:
	.4byte	sUnk_82DECA0
.L_21a64:
	mov	r0, #16
	mov	r2, ip
	and	r0, r2
	cmp	r0, #0
	bne	.L_21a70
	b	.L_21c00
.L_21a70:
	ldrb	r2, [r4, #1]
	cmp	r2, #6
	bls	.L_21a78
	b	.L_21c00
.L_21a78:
	ldrh	r0, [r4, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r4, #14]
	ldr	r0, .L_21a8c
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	add	r0, r2, #2
	b	.L_21bce
.L_21a8c:
	.4byte	sUnk_82DECA0
.L_21a90:
	ldrb	r0, [r4, #1]
	cmp	r0, #9
	bhi	.L_21a98
	b	.L_21c00
.L_21a98:
	ldr	r0, .L_21aa0
	ldr	r1, [r0, #24]
	b	.L_21be4
	.align	2, 0
.L_21aa0:
	.4byte	sUnk_82DECA0
.L_21aa4:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	bne	.L_21aae
	b	.L_21c00
.L_21aae:
	ldr	r2, .L_21ad0
	ldrh	r0, [r2, #50]	@ 0x32
	mov	r4, r9
	sub	r0, r4, r0
	add	r0, #1
	strh	r0, [r2, #18]
	strh	r5, [r2, #22]
	ldrb	r0, [r2, #0]
	add	r4, r2, #0
	cmp	r0, #2
	beq	.L_21bac
	cmp	r0, #2
	bgt	.L_21ad4
	cmp	r0, #0
	beq	.L_21ae2
	b	.L_21c00
	.align	2, 0
.L_21ad0:
	.4byte	gWarioData
.L_21ad4:
	cmp	r0, #4
	bne	.L_21ada
	b	.L_21be0
.L_21ada:
	cmp	r0, #6
	bne	.L_21ae0
	b	.L_21bf0
.L_21ae0:
	b	.L_21c00
.L_21ae2:
	ldrb	r0, [r3, #30]
	sub	r0, #23
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_21b00
	mov	r0, #32
	mov	r1, ip
	and	r0, r1
	cmp	r0, #0
	bne	.L_21afa
	b	.L_21c00
.L_21afa:
	bl	func_801EF94
	b	.L_21c00
.L_21b00:
	mov	r0, #32
	mov	r1, ip
	and	r0, r1
	cmp	r0, #0
	bne	.L_21b0c
	b	.L_21c00
.L_21b0c:
	ldrb	r0, [r2, #1]
	sub	r0, #12
	cmp	r0, #13
	bhi	.L_21ba2
	lsl	r0, r0, #2
	ldr	r1, .L_21b20
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_21b20:
	.4byte	.L_21b24
.L_21b24:
	.4byte	.L_21b88
	.4byte	.L_21b88
	.4byte	.L_21b88
	.4byte	.L_21b88
	.4byte	.L_21ba2
	.4byte	.L_21ba2
	.4byte	.L_21ba2
	.4byte	.L_21ba2
	.4byte	.L_21ba2
	.4byte	.L_21ba2
	.4byte	.L_21b5c
	.4byte	.L_21b5c
	.4byte	.L_21b70
	.4byte	.L_21b70
.L_21b5c:
	mov	r0, #1
	strb	r0, [r4, #8]
	ldr	r1, .L_21b6c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	b	.L_21b7a
.L_21b6c:
	.4byte	sUnk_82DECA0
.L_21b70:
	ldr	r0, .L_21b84
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
.L_21b7a:
	mov	r0, #26
	bl	_call_via_r1
	mov	r6, #33	@ 0x21
	b	.L_21c00
.L_21b84:
	.4byte	sUnk_82DECA0
.L_21b88:
	ldrh	r0, [r4, #50]	@ 0x32
	mov	r2, r9
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r4, #18]
	ldr	r1, .L_21ba8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #16
	bl	_call_via_r1
.L_21ba2:
	mov	r6, #53	@ 0x35
	b	.L_21c00
	.align	2, 0
.L_21ba8:
	.4byte	sUnk_82DECA0
.L_21bac:
	mov	r0, #32
	mov	r4, ip
	and	r0, r4
	cmp	r0, #0
	beq	.L_21c00
	ldrb	r3, [r2, #1]
	cmp	r3, #6
	bhi	.L_21c00
	ldrh	r0, [r2, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r2, #14]
	ldr	r0, .L_21bdc
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	add	r0, r3, #2
.L_21bce:
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r1, [r1, #0]
	bl	_call_via_r1
	b	.L_21c00
	.align	2, 0
.L_21bdc:
	.4byte	sUnk_82DECA0
.L_21be0:
	ldr	r0, .L_21bec
	ldr	r1, [r0, #16]
.L_21be4:
	mov	r0, #3
	bl	_call_via_r1
	b	.L_21c00
.L_21bec:
	.4byte	sUnk_82DECA0
.L_21bf0:
	ldrb	r0, [r2, #1]
	cmp	r0, #9
	bls	.L_21c00
	ldr	r0, .L_21c28
	ldr	r1, [r0, #24]
	mov	r0, #3
	bl	_call_via_r1
.L_21c00:
	ldr	r0, .L_21c2c
	mov	r1, #44	@ 0x2c
	ldr	r2, [sp, #0]
	mul	r1, r2
	add	r0, r1, r0
	ldrb	r2, [r0, #30]
	cmp	r2, #24
	beq	.L_21c14
	cmp	r2, #26
	bne	.L_21c16
.L_21c14:
	strb	r6, [r0, #28]
.L_21c16:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_21c28:
	.4byte	sUnk_82DECA0
.L_21c2c:
	.4byte	gSpriteData


thumb_func_start func_8021C30
func_8021C30:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldr	r5, .L_21c94
	ldrb	r0, [r5, #0]
	ldr	r2, .L_21c98
	cmp	r0, #8
	bne	.L_21c4a
	ldrb	r1, [r2, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r2, #0]
.L_21c4a:
	ldrb	r1, [r2, #0]
	mov	r6, #1
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_21cbe
	add	r0, r3, #1
	mov	r1, #0
	strh	r0, [r5, #20]
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_21ca4
	ldrb	r0, [r5, #1]
	cmp	r0, #27
	beq	.L_21c72
	cmp	r0, #28
	bne	.L_21ca4
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21c72:
	ldr	r1, .L_21c9c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	bl	func_801EF28
	ldr	r0, .L_21ca0
	ldrh	r1, [r0, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_21cbe
	mov	r0, #32
	strh	r0, [r5, #24]
	b	.L_21cbe
.L_21c94:
	.4byte	gWarioData
.L_21c98:
	.4byte	gUnk_3000A52
.L_21c9c:
	.4byte	gSpriteData
.L_21ca0:
	.4byte	gButtonsHeld
.L_21ca4:
	ldr	r1, .L_21cc4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r2, r3, #0
	orr	r1, r2
	strh	r1, [r0, #0]
	add	r0, #40	@ 0x28
	mov	r1, #2
	strb	r1, [r0, #0]
.L_21cbe:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_21cc4:
	.4byte	gSpriteData


thumb_func_start func_8021CC8
func_8021CC8:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldr	r4, .L_21d20
	ldrb	r0, [r4, #0]
	ldr	r2, .L_21d24
	cmp	r0, #8
	bne	.L_21ce2
	ldrb	r1, [r2, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r2, #0]
.L_21ce2:
	ldrb	r1, [r2, #0]
	mov	r6, #1
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_21d52
	add	r0, r3, #1
	mov	r1, #0
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_21d2c
	ldrb	r0, [r4, #1]
	cmp	r0, #27
	beq	.L_21d0a
	cmp	r0, #28
	bne	.L_21d2c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21d0a:
	bl	func_801EF28
	ldr	r0, .L_21d28
	ldrh	r1, [r0, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_21d46
	mov	r0, #32
	strh	r0, [r4, #24]
	b	.L_21d46
.L_21d20:
	.4byte	gWarioData
.L_21d24:
	.4byte	gUnk_3000A52
.L_21d28:
	.4byte	gButtonsHeld
.L_21d2c:
	ldr	r1, .L_21d58
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r2, r3, #0
	orr	r1, r2
	strh	r1, [r0, #0]
	add	r0, #40	@ 0x28
	mov	r1, #2
	strb	r1, [r0, #0]
.L_21d46:
	ldr	r1, .L_21d58
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
.L_21d52:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_21d58:
	.4byte	gSpriteData


thumb_func_start func_8021D5C
func_8021D5C:
	push	{r4, r5, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldr	r3, .L_21da4
	ldrb	r0, [r3, #0]
	ldr	r2, .L_21da8
	cmp	r0, #8
	bne	.L_21d76
	ldrb	r1, [r2, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r2, #0]
.L_21d76:
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_21dc6
	add	r0, r4, #1
	mov	r1, #0
	strh	r0, [r3, #20]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_21dac
	ldrb	r0, [r3, #1]
	cmp	r0, #27
	beq	.L_21d9c
	cmp	r0, #28
	bne	.L_21dac
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21d9c:
	bl	func_801EF28
	b	.L_21dc6
	.align	2, 0
.L_21da4:
	.4byte	gWarioData
.L_21da8:
	.4byte	gUnk_3000A52
.L_21dac:
	ldr	r1, .L_21dcc
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r2, r3, #0
	orr	r1, r2
	strh	r1, [r0, #0]
	add	r0, #40	@ 0x28
	mov	r1, #2
	strb	r1, [r0, #0]
.L_21dc6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_21dcc:
	.4byte	gSpriteData


thumb_func_start func_8021DD0
func_8021DD0:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r0, .L_21df0
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #8
	bne	.L_21df8
	ldr	r0, .L_21df4
	ldrb	r2, [r0, #0]
	mov	r1, #254	@ 0xfe
	and	r1, r2
	strb	r1, [r0, #0]
	add	r2, r0, #0
	b	.L_21e0a
.L_21df0:
	.4byte	gWarioData
.L_21df4:
	.4byte	gUnk_3000A52
.L_21df8:
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	ldr	r2, .L_21e38
	cmp	r0, #0
	blt	.L_21e0a
	ldrb	r1, [r2, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r2, #0]
.L_21e0a:
	ldrb	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_21e62
	add	r0, r5, #1
	mov	r1, #0
	strh	r0, [r3, #20]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_21e3c
	ldrb	r0, [r3, #1]
	cmp	r0, #27
	beq	.L_21e30
	cmp	r0, #28
	bne	.L_21e3c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21e30:
	bl	func_801EF28
	b	.L_21e56
	.align	2, 0
.L_21e38:
	.4byte	gUnk_3000A52
.L_21e3c:
	ldr	r1, .L_21e68
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r2, r3, #0
	orr	r1, r2
	strh	r1, [r0, #0]
	add	r0, #40	@ 0x28
	mov	r1, #2
	strb	r1, [r0, #0]
.L_21e56:
	ldr	r1, .L_21e68
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #28]
.L_21e62:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_21e68:
	.4byte	gSpriteData


thumb_func_start func_8021E6C
func_8021E6C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r0, .L_21e9c
	mov	r8, r0
	ldrb	r1, [r0, #0]
	mov	r5, #1
	and	r5, r1
	cmp	r5, #0
	beq	.L_21eb0
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21ea0
	bl	func_801EF50
	b	.L_21ea4
.L_21e9c:
	.4byte	gUnk_3000A52
.L_21ea0:
	bl	func_801EF94
.L_21ea4:
	ldr	r1, .L_21eac
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
	b	.L_21f66
.L_21eac:
	.4byte	gWarioData
.L_21eb0:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_21f32
	ldr	r4, .L_21f14
	strb	r5, [r4, #0]
	add	r0, r7, #0
	add	r0, #100	@ 0x64
	ldr	r2, .L_21f18
	mov	r1, #44	@ 0x2c
	mul	r1, r6
	add	r1, r1, r2
	ldrh	r1, [r1, #10]
	bl	func_8023BFC
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_21ede
	ldr	r1, .L_21f1c
	ldrh	r0, [r1, #52]	@ 0x34
	sub	r0, #1
	sub	r0, r7, r0
	strh	r0, [r1, #20]
.L_21ede:
	ldr	r1, .L_21f20
	ldr	r4, .L_21f1c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	beq	.L_21ef8
	strh	r5, [r4, #24]
.L_21ef8:
	ldrb	r0, [r4, #1]
	cmp	r0, #31
	bne	.L_21f66
	mov	r0, r8
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21f28
	mov	r0, #16
	strh	r0, [r4, #14]
	ldr	r0, .L_21f24
	b	.L_21f2e
	.align	2, 0
.L_21f14:
	.4byte	gUnk_3000A51
.L_21f18:
	.4byte	gSpriteData
.L_21f1c:
	.4byte	gWarioData
.L_21f20:
	.4byte	sUnk_82DECA0
.L_21f24:
	.4byte	0x0000fff0
.L_21f28:
	mov	r0, #32
	strh	r0, [r4, #14]
	mov	r0, #16
.L_21f2e:
	strh	r0, [r4, #22]
	b	.L_21f66
.L_21f32:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_21f4c
	ldr	r4, .L_21f48
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r2, r0
	strh	r0, [r4, #18]
	bl	func_801EF50
	b	.L_21f62
.L_21f48:
	.4byte	gWarioData
.L_21f4c:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_21f72
	ldr	r4, .L_21f7c
	ldrh	r0, [r4, #50]	@ 0x32
	sub	r0, r3, r0
	add	r0, #1
	strh	r0, [r4, #18]
	bl	func_801EF94
.L_21f62:
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
.L_21f66:
	ldr	r1, .L_21f80
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
.L_21f72:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_21f7c:
	.4byte	gWarioData
.L_21f80:
	.4byte	gSpriteData


thumb_func_start func_8021F84
func_8021F84:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	r8, r2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r0, .L_21ff4
	ldr	r4, .L_21ff8
	ldrh	r0, [r0, #0]
	ldr	r2, .L_21ffc
	ldrh	r1, [r4, #20]
	cmp	r0, r1
	bls	.L_21fb0
	ldrb	r1, [r2, #0]
	mov	r0, #254	@ 0xfe
	and	r0, r1
	strb	r0, [r2, #0]
.L_21fb0:
	ldrb	r1, [r2, #0]
	mov	r5, #1
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_2207c
	ldrb	r0, [r4, #1]
	cmp	r0, #27
	beq	.L_21fcc
	cmp	r0, #28
	bne	.L_2200c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_21fcc:
	bl	func_801EF28
	ldr	r0, .L_22000
	ldrh	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_21fe0
	mov	r0, #32
	strh	r0, [r4, #24]
.L_21fe0:
	ldr	r1, .L_22004
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
	ldr	r1, .L_22008
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_220e6
.L_21ff4:
	.4byte	gUnk_30019F4
.L_21ff8:
	.4byte	gWarioData
.L_21ffc:
	.4byte	gUnk_3000A52
.L_22000:
	.4byte	gButtonsHeld
.L_22004:
	.4byte	gSpriteData
.L_22008:
	.4byte	gUnk_3000A53
.L_2200c:
	ldr	r0, .L_22044
	ldrh	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_22054
	ldr	r1, .L_22048
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldr	r1, .L_2204c
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
	ldr	r1, .L_22050
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #53	@ 0x35
	bl	m4aSongNumStart
	b	.L_220e6
	.align	2, 0
.L_22044:
	.4byte	gButtonsHeld
.L_22048:
	.4byte	sUnk_82DECA0
.L_2204c:
	.4byte	gSpriteData
.L_22050:
	.4byte	gUnk_3000A53
.L_22054:
	add	r0, r3, #1
	strh	r0, [r4, #20]
	ldr	r2, .L_22078
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r0, r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	add	r1, #40	@ 0x28
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_220e6
	.align	2, 0
.L_22078:
	.4byte	gSpriteData
.L_2207c:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_220b4
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	func_806D5C0
	ldr	r0, .L_220ac
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_220e6
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r7, r0
	strh	r0, [r4, #18]
	ldr	r1, .L_220b0
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #2
	bl	_call_via_r1
	b	.L_220e6
.L_220ac:
	.4byte	gUnk_30000A0
.L_220b0:
	.4byte	sUnk_82DECA0
.L_220b4:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_220e6
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	func_806D5C0
	ldr	r0, .L_220f0
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_220e6
	ldrh	r0, [r4, #50]	@ 0x32
	mov	r1, r8
	sub	r0, r1, r0
	add	r0, #1
	strh	r0, [r4, #18]
	ldr	r1, .L_220f4
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #2
	bl	_call_via_r1
.L_220e6:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_220f0:
	.4byte	gUnk_30000A0
.L_220f4:
	.4byte	sUnk_82DECA0


thumb_func_start func_80220F8
func_80220F8:
	add	r2, r0, #0
	ldr	r0, .L_22110
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_2210e
	ldr	r1, .L_22114
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #114	@ 0x72
	strb	r1, [r0, #28]
.L_2210e:
	bx	lr
.L_22110:
	.4byte	gWarioData
.L_22114:
	.4byte	gSpriteData


thumb_func_start func_8022118
func_8022118:
	add	r3, r0, #0
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	cmp	r1, r2
	bls	.L_22150
	ldr	r0, .L_22138
	mov	r1, #22
	ldrsh	r0, [r0, r1]
	cmp	r0, #128	@ 0x80
	bne	.L_22140
	ldr	r1, .L_2213c
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #31
	b	.L_2217e
.L_22138:
	.4byte	gWarioData
.L_2213c:
	.4byte	gSpriteData
.L_22140:
	ldr	r1, .L_2214c
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #51	@ 0x33
	b	.L_2217e
.L_2214c:
	.4byte	gSpriteData
.L_22150:
	ldr	r0, .L_2216c
	mov	r2, #22
	ldrsh	r1, [r0, r2]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	cmp	r1, r0
	bne	.L_22174
	ldr	r1, .L_22170
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
	b	.L_2217e
	.align	2, 0
.L_2216c:
	.4byte	gWarioData
.L_22170:
	.4byte	gSpriteData
.L_22174:
	ldr	r1, .L_22184
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #53	@ 0x35
.L_2217e:
	strb	r1, [r0, #28]
	bx	lr
	.align	2, 0
.L_22184:
	.4byte	gSpriteData


thumb_func_start func_8022188
func_8022188:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_2220a
	ldr	r0, .L_221b8
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_221bc
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #0
	bl	func_801F00C
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_2220a
.L_221b8:
	.4byte	gUnk_3000A52
.L_221bc:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_221dc
	ldr	r0, .L_221d8
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_2220a
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_221f4
	.align	2, 0
.L_221d8:
	.4byte	gWarioData
.L_221dc:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_22200
	ldr	r0, .L_221fc
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_2220a
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_221f4:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_2220a
.L_221fc:
	.4byte	gWarioData
.L_22200:
	ldr	r1, .L_2221c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_2220a:
	ldr	r1, .L_2221c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2221c:
	.4byte	gSpriteData


thumb_func_start func_8022220
func_8022220:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_222c2
	ldr	r0, .L_2225c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_22274
	ldr	r0, .L_22260
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_22252
	cmp	r0, #28
	bne	.L_22264
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_22252:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_222c2
	.align	2, 0
.L_2225c:
	.4byte	gUnk_3000A52
.L_22260:
	.4byte	gWarioData
.L_22264:
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #1
	bl	func_801F00C
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_222c2
.L_22274:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22294
	ldr	r0, .L_22290
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_222c2
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_222ac
	.align	2, 0
.L_22290:
	.4byte	gWarioData
.L_22294:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_222b8
	ldr	r0, .L_222b4
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_222c2
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_222ac:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_222c2
.L_222b4:
	.4byte	gWarioData
.L_222b8:
	ldr	r1, .L_222d4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_222c2:
	ldr	r1, .L_222d4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_222d4:
	.4byte	gSpriteData


thumb_func_start func_80222D8
func_80222D8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r2, [sp, #0]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	sl, r3
	ldr	r2, .L_22330
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r7, r0, r2
	ldrh	r1, [r7, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_22334
	ldrb	r4, [r0, #0]
	mov	r1, #1
	mov	ip, r1
	mov	r5, ip
	and	r5, r4
	mov	r8, r0
	cmp	r5, #0
	beq	.L_22358
	mov	r0, #4
	and	r0, r4
	cmp	r0, #0
	beq	.L_22340
	bl	func_801EF50
	ldr	r1, .L_22338
	ldr	r0, .L_2233c
	b	.L_22348
	.align	2, 0
.L_22330:
	.4byte	gSpriteData
.L_22334:
	.4byte	gUnk_3000A52
.L_22338:
	.4byte	gWarioData
.L_2233c:
	.4byte	0x0000ffe0
.L_22340:
	bl	func_801EF94
	ldr	r1, .L_22354
	mov	r0, #32
.L_22348:
	strh	r0, [r1, #22]
	ldr	r1, .L_22354
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #24]
	b	.L_22510
	.align	2, 0
.L_22354:
	.4byte	gWarioData
.L_22358:
	mov	r0, #2
	and	r0, r4
	cmp	r0, #0
	beq	.L_223cc
	ldr	r4, .L_2238c
	strb	r5, [r4, #0]
	mov	r0, r9
	add	r0, #100	@ 0x64
	ldrh	r1, [r7, #10]
	bl	func_8023BFC
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_22380
	ldr	r1, .L_22390
	ldrh	r0, [r1, #52]	@ 0x34
	sub	r0, #1
	mov	r2, r9
	sub	r0, r2, r0
	strh	r0, [r1, #20]
.L_22380:
	ldr	r4, .L_22390
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	beq	.L_22394
	strh	r5, [r4, #24]
	b	.L_22510
.L_2238c:
	.4byte	gUnk_3000A51
.L_22390:
	.4byte	gWarioData
.L_22394:
	ldr	r1, .L_223bc
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	mov	r0, r8
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_223c4
	mov	r0, #16
	strh	r0, [r4, #14]
	ldr	r0, .L_223c0
	strh	r0, [r4, #22]
	b	.L_22510
	.align	2, 0
.L_223bc:
	.4byte	sUnk_82DECA0
.L_223c0:
	.4byte	0x0000ffe0
.L_223c4:
	mov	r0, #32
	strh	r0, [r4, #14]
	strh	r0, [r4, #22]
	b	.L_22510
.L_223cc:
	ldr	r0, .L_223e0
	ldrb	r1, [r0, #1]
	add	r5, r0, #0
	cmp	r1, #22
	blt	.L_2247c
	cmp	r1, #23
	ble	.L_223e4
	cmp	r1, #25
	bgt	.L_2247c
	b	.L_223e8
.L_223e0:
	.4byte	gWarioData
.L_223e4:
	mov	r1, ip
	strb	r1, [r5, #8]
.L_223e8:
	mov	r0, r8
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22434
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r2
	ldrb	r0, [r4, #30]
	cmp	r0, #43	@ 0x2b
	bne	.L_22404
	cmp	r3, #0
	beq	.L_22498
.L_22404:
	ldrh	r0, [r5, #54]	@ 0x36
	ldr	r1, [sp, #0]
	sub	r0, r1, r0
	strh	r0, [r5, #18]
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r2
	mov	r1, #31
	strb	r1, [r0, #28]
	ldr	r1, .L_2242c
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	ldr	r0, .L_22430
	b	.L_2246a
	.align	2, 0
.L_2242c:
	.4byte	sUnk_82DECA0
.L_22430:
	.4byte	0x0000ffb8
.L_22434:
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r2
	ldrb	r0, [r4, #30]
	cmp	r0, #43	@ 0x2b
	bne	.L_22444
	cmp	r3, #0
	bne	.L_224dc
.L_22444:
	ldrh	r0, [r5, #50]	@ 0x32
	mov	r1, sl
	sub	r0, r1, r0
	add	r0, #1
	strh	r0, [r5, #18]
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r2
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #28]
	ldr	r1, .L_22478
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r0, #72	@ 0x48
.L_2246a:
	strh	r0, [r5, #22]
	mov	r0, #120	@ 0x78
	strh	r0, [r5, #24]
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_22510
.L_22478:
	.4byte	sUnk_82DECA0
.L_2247c:
	mov	r0, r8
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_224cc
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r2
	ldrb	r0, [r4, #30]
	cmp	r0, #43	@ 0x2b
	bne	.L_224a2
	cmp	r3, #0
	bne	.L_224a2
.L_22498:
	bl	func_801EDF4
	mov	r0, #35	@ 0x23
	strb	r0, [r4, #28]
	b	.L_22510
.L_224a2:
	ldrh	r0, [r5, #54]	@ 0x36
	ldr	r1, [sp, #0]
	sub	r0, r1, r0
	strh	r0, [r5, #18]
	bl	func_801EF50
	ldr	r0, .L_224c4
	strh	r0, [r5, #22]
	ldr	r1, .L_224c8
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #41	@ 0x29
	bne	.L_2250c
	mov	r0, #35	@ 0x23
	b	.L_2250a
.L_224c4:
	.4byte	0x0000ffe0
.L_224c8:
	.4byte	gSpriteData
.L_224cc:
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r2
	ldrb	r0, [r4, #30]
	cmp	r0, #43	@ 0x2b
	bne	.L_224e6
	cmp	r3, #0
	beq	.L_224e6
.L_224dc:
	bl	func_801EDC8
	mov	r0, #37	@ 0x25
	strb	r0, [r4, #28]
	b	.L_22510
.L_224e6:
	add	r4, r5, #0
	ldrh	r0, [r4, #50]	@ 0x32
	mov	r2, sl
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r4, #18]
	bl	func_801EF94
	mov	r0, #32
	strh	r0, [r4, #22]
	ldr	r1, .L_22520
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r1, r0, r1
	ldrb	r0, [r1, #30]
	cmp	r0, #41	@ 0x29
	bne	.L_2250c
	mov	r0, #37	@ 0x25
.L_2250a:
	strb	r0, [r1, #28]
.L_2250c:
	mov	r0, #80	@ 0x50
	strh	r0, [r5, #24]
.L_22510:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_22520:
	.4byte	gSpriteData


thumb_func_start func_8022524
func_8022524:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	mov	r8, r0
	ldr	r0, [sp, #44]	@ 0x2c
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	sl, r2
	lsl	r3, r3, #16
	lsr	r5, r3, #16
	str	r5, [sp, #4]
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	str	r6, [sp, #8]
	ldr	r0, .L_225b4
	ldrh	r2, [r0, #0]
	ldr	r1, .L_225b8
	add	r4, r0, #0
	cmp	r2, r1
	bne	.L_22616
	ldr	r0, .L_225bc
	mov	r9, r0
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_22616
	cmp	r7, r5
	bhi	.L_22616
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_225c8
	ldr	r1, .L_225c0
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #3
	bl	_call_via_r1
	bl	func_8062C78
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #64	@ 0x40
	bl	Sprite_SpawnSecondary
	ldr	r1, .L_225c4
	mov	r0, #44	@ 0x2c
	mov	r4, r8
	mul	r4, r0
	add	r4, r4, r1
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	Sprite_SpawnAsChild
	mov	r0, #1
	bl	VoiceSet_Play
	mov	r0, #15
	strb	r0, [r4, #31]
	b	.L_22710
.L_225b4:
	.4byte	gWarioData
.L_225b8:
	.4byte	0x00000207
.L_225bc:
	.4byte	gUnk_3000A52
.L_225c0:
	.4byte	sUnk_82DECA0
.L_225c4:
	.4byte	gSpriteData
.L_225c8:
	bl	func_8062C78
	ldr	r1, .L_22604
	mov	r0, #44	@ 0x2c
	mov	r4, r8
	mul	r4, r0
	add	r4, r4, r1
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	Sprite_SpawnAsChild
	mov	r0, #1
	bl	VoiceSet_Play
	mov	r0, #60	@ 0x3c
	strb	r0, [r4, #31]
	mov	r2, r9
	ldrb	r1, [r2, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22608
	add	r1, r6, #0
	add	r1, #60	@ 0x3c
	add	r0, r5, #0
	b	.L_2260e
.L_22604:
	.4byte	gSpriteData
.L_22608:
	ldr	r1, [sp, #8]
	sub	r1, #60	@ 0x3c
	ldr	r0, [sp, #4]
.L_2260e:
	mov	r2, #64	@ 0x40
	bl	Sprite_SpawnSecondary
	b	.L_22710
.L_22616:
	add	r5, r4, #0
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_22620
	b	.L_22710
.L_22620:
	ldrb	r0, [r5, #4]
	cmp	r0, #0
	bne	.L_22710
	ldr	r7, .L_22644
	ldrb	r1, [r7, #0]
	mov	r6, #1
	and	r6, r1
	cmp	r6, #0
	beq	.L_22660
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2264c
	bl	func_801EF50
	ldr	r0, .L_22648
	b	.L_22652
	.align	2, 0
.L_22644:
	.4byte	gUnk_3000A52
.L_22648:
	.4byte	0x0000ffe0
.L_2264c:
	bl	func_801EF94
	mov	r0, #32
.L_22652:
	strh	r0, [r5, #22]
	ldr	r1, .L_2265c
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
	b	.L_22700
.L_2265c:
	.4byte	gWarioData
.L_22660:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_226da
	ldr	r4, .L_2269c
	strb	r6, [r4, #0]
	mov	r0, sl
	add	r0, #100	@ 0x64
	ldr	r2, .L_226a0
	mov	r1, #44	@ 0x2c
	mov	r3, r8
	mul	r3, r1
	add	r1, r3, #0
	add	r1, r1, r2
	ldrh	r1, [r1, #10]
	bl	func_8023BFC
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_22692
	ldrh	r0, [r5, #52]	@ 0x34
	sub	r0, #1
	mov	r1, sl
	sub	r0, r1, r0
	strh	r0, [r5, #20]
.L_22692:
	ldrb	r0, [r5, #26]
	cmp	r0, #0
	beq	.L_226a4
	strh	r6, [r5, #24]
	b	.L_22700
.L_2269c:
	.4byte	gUnk_3000A51
.L_226a0:
	.4byte	gSpriteData
.L_226a4:
	ldr	r1, .L_226c8
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldrb	r1, [r7, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_226d0
	mov	r0, #16
	strh	r0, [r5, #14]
	ldr	r0, .L_226cc
	strh	r0, [r5, #22]
	b	.L_22700
.L_226c8:
	.4byte	sUnk_82DECA0
.L_226cc:
	.4byte	0x0000fff0
.L_226d0:
	mov	r0, #32
	strh	r0, [r5, #14]
	mov	r0, #16
	strh	r0, [r5, #22]
	b	.L_22700
.L_226da:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_226f4
	bl	func_801EF50
	ldr	r0, .L_226f0
	strh	r0, [r5, #22]
	mov	r0, #64	@ 0x40
	strh	r0, [r5, #24]
	b	.L_22700
.L_226f0:
	.4byte	0x0000ffe0
.L_226f4:
	bl	func_801EF94
	mov	r0, #32
	strh	r0, [r4, #22]
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
.L_22700:
	ldr	r1, .L_22720
	mov	r0, #44	@ 0x2c
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
.L_22710:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_22720:
	.4byte	gSpriteData


thumb_func_start func_8022724
func_8022724:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r3, r0, #0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldr	r1, .L_2275c
	ldrb	r2, [r1, #0]
	mov	r0, #1
	mov	r9, r0
	and	r0, r2
	add	r6, r1, #0
	cmp	r0, #0
	beq	.L_2277c
	ldr	r4, .L_22760
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	beq	.L_2274c
	b	.L_22936
.L_2274c:
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	beq	.L_22768
	bl	func_801EF50
	ldr	r0, .L_22764
	b	.L_2276e
.L_2275c:
	.4byte	gUnk_3000A52
.L_22760:
	.4byte	gWarioData
.L_22764:
	.4byte	0x0000ffe0
.L_22768:
	bl	func_801EF94
	mov	r0, #32
.L_2276e:
	strh	r0, [r4, #22]
	ldr	r1, .L_22778
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #24]
	b	.L_22936
.L_22778:
	.4byte	gWarioData
.L_2277c:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_227f4
	ldr	r1, .L_227e0
	mov	r8, r1
	mov	r0, #44	@ 0x2c
	add	r7, r3, #0
	mul	r7, r0
	add	r5, r7, r1
	ldrb	r0, [r5, #30]
	cmp	r0, #67	@ 0x43
	bne	.L_227f4
	ldr	r4, .L_227e4
	ldrb	r6, [r4, #4]
	cmp	r6, #0
	beq	.L_227a0
	b	.L_22936
.L_227a0:
	ldr	r1, .L_227e8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #60	@ 0x3c
	bl	_call_via_r1
	mov	r2, #0
	strh	r6, [r4, #22]
	strh	r6, [r4, #24]
	ldrh	r0, [r5, #8]
	ldrh	r1, [r4, #52]	@ 0x34
	sub	r0, r0, r1
	strh	r0, [r4, #20]
	ldrh	r0, [r5, #10]
	strh	r0, [r4, #18]
	ldr	r0, .L_227ec
	mov	r1, r9
	strb	r1, [r0, #0]
	mov	r0, r8
	add	r0, #4
	add	r0, r7, r0
	ldr	r1, .L_227f0
	str	r1, [r0, #0]
	strb	r2, [r5, #22]
	strh	r6, [r5, #20]
	strb	r2, [r5, #30]
	mov	r0, #4
	bl	VoiceSet_Play
	b	.L_22936
.L_227e0:
	.4byte	gSpriteData
.L_227e4:
	.4byte	gWarioData
.L_227e8:
	.4byte	sUnk_82DECA0
.L_227ec:
	.4byte	gUnk_3000A5B
.L_227f0:
	.4byte	sUnk_83B9E50
.L_227f4:
	ldr	r0, .L_22820
	ldrb	r1, [r0, #4]
	add	r5, r0, #0
	cmp	r1, #0
	beq	.L_2280e
	ldr	r1, .L_22824
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #30]
	cmp	r0, #68	@ 0x44
	beq	.L_2280e
	b	.L_22936
.L_2280e:
	ldrb	r0, [r5, #1]
	cmp	r0, #22
	blt	.L_228cc
	cmp	r0, #23
	ble	.L_22828
	cmp	r0, #25
	bgt	.L_228cc
	b	.L_2282c
	.align	2, 0
.L_22820:
	.4byte	gWarioData
.L_22824:
	.4byte	gSpriteData
.L_22828:
	mov	r0, #1
	strb	r0, [r5, #8]
.L_2282c:
	ldrb	r1, [r6, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22880
	mov	r0, #16
	and	r0, r4
	cmp	r0, #0
	bne	.L_22840
	b	.L_22936
.L_22840:
	ldr	r1, .L_22870
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r4, r0, r1
	ldrb	r0, [r4, #30]
	cmp	r0, #68	@ 0x44
	bne	.L_22858
	mov	r0, #31
	strb	r0, [r4, #28]
	ldr	r1, .L_22874
	mov	r0, #1
	strb	r0, [r1, #0]
.L_22858:
	ldr	r1, .L_22878
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r1, #0
	ldr	r0, .L_2287c
	strh	r0, [r5, #22]
	b	.L_228b6
.L_22870:
	.4byte	gSpriteData
.L_22874:
	.4byte	gUnk_3000A58
.L_22878:
	.4byte	sUnk_82DECA0
.L_2287c:
	.4byte	0x0000ffe0
.L_22880:
	mov	r6, #32
	add	r0, r4, #0
	and	r0, r6
	cmp	r0, #0
	beq	.L_22936
	ldr	r1, .L_228c0
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r4, r0, r1
	ldrb	r0, [r4, #30]
	cmp	r0, #68	@ 0x44
	bne	.L_228a2
	mov	r0, #33	@ 0x21
	strb	r0, [r4, #28]
	ldr	r1, .L_228c4
	mov	r0, #1
	strb	r0, [r1, #0]
.L_228a2:
	ldr	r1, .L_228c8
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r1, #0
	strh	r6, [r5, #22]
.L_228b6:
	mov	r0, #64	@ 0x40
	strh	r0, [r5, #24]
	strb	r1, [r4, #30]
	b	.L_22936
	.align	2, 0
.L_228c0:
	.4byte	gSpriteData
.L_228c4:
	.4byte	gUnk_3000A58
.L_228c8:
	.4byte	sUnk_82DECA0
.L_228cc:
	ldrb	r4, [r5, #4]
	cmp	r4, #0
	bne	.L_22936
	ldrb	r1, [r6, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_2290c
	ldr	r1, .L_22904
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #30]
	cmp	r0, #66	@ 0x42
	bne	.L_2290c
	ldrb	r0, [r5, #26]
	cmp	r0, #0
	beq	.L_2290c
	ldr	r0, .L_22908
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #31
	bl	_call_via_r1
	strh	r4, [r5, #24]
	b	.L_22936
.L_22904:
	.4byte	gSpriteData
.L_22908:
	.4byte	sUnk_82DECA0
.L_2290c:
	ldrb	r1, [r6, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22928
	bl	func_801EF50
	ldr	r0, .L_22920
	ldr	r1, .L_22924
	b	.L_22930
.L_22920:
	.4byte	gWarioData
.L_22924:
	.4byte	0x0000ffd8
.L_22928:
	bl	func_801EF94
	ldr	r0, .L_22944
	mov	r1, #40	@ 0x28
.L_22930:
	strh	r1, [r0, #22]
	mov	r1, #72	@ 0x48
	strh	r1, [r0, #24]
.L_22936:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_22944:
	.4byte	gWarioData


thumb_func_start func_8022948
func_8022948:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r2, r1, #16
	ldr	r0, .L_229b8
	ldr	r1, .L_229bc
	ldrh	r0, [r0, #0]
	add	r3, r1, #0
	ldrh	r1, [r3, #20]
	cmp	r0, r1
	bhi	.L_2296a
	ldrh	r1, [r3, #20]
	add	r0, r2, #0
	add	r0, #32
	ldr	r5, .L_229c0
	cmp	r1, r0
	ble	.L_22976
.L_2296a:
	ldr	r0, .L_229c0
	ldrb	r2, [r0, #0]
	mov	r1, #254	@ 0xfe
	and	r1, r2
	strb	r1, [r0, #0]
	add	r5, r0, #0
.L_22976:
	ldrb	r1, [r5, #0]
	mov	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_229e8
	ldr	r1, .L_229c4
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r1
	ldrb	r0, [r4, #30]
	cmp	r0, #63	@ 0x3f
	bne	.L_229cc
	ldrb	r1, [r3, #1]
	cmp	r1, #27
	beq	.L_229a0
	cmp	r1, #28
	bne	.L_229cc
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_229a0:
	ldr	r0, .L_229c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_229ac
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
.L_229ac:
	bl	func_801EF28
	mov	r0, #15
	strb	r0, [r4, #31]
	b	.L_22ad8
	.align	2, 0
.L_229b8:
	.4byte	gUnk_30019F4
.L_229bc:
	.4byte	gWarioData
.L_229c0:
	.4byte	gUnk_3000A52
.L_229c4:
	.4byte	gSpriteData
.L_229c8:
	.4byte	gUnk_3000A5A
.L_229cc:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22abc
	bl	func_801EF50
	ldr	r1, .L_229e0
	ldr	r0, .L_229e4
	b	.L_22ac4
.L_229e0:
	.4byte	gWarioData
.L_229e4:
	.4byte	0x0000ffe0
.L_229e8:
	ldrb	r0, [r3, #1]
	cmp	r0, #22
	blt	.L_22aa0
	cmp	r0, #23
	ble	.L_229f8
	cmp	r0, #25
	bgt	.L_22aa0
	b	.L_229fa
.L_229f8:
	strb	r2, [r3, #8]
.L_229fa:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22a4c
	ldr	r1, .L_22a38
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_22a22
	ldr	r0, .L_22a3c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_22a22
	mov	r0, #31
	strb	r0, [r2, #28]
.L_22a22:
	ldr	r1, .L_22a40
	ldr	r4, .L_22a44
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	ldr	r0, .L_22a48
	b	.L_22a7e
.L_22a38:
	.4byte	gSpriteData
.L_22a3c:
	.4byte	gUnk_3000A5A
.L_22a40:
	.4byte	sUnk_82DECA0
.L_22a44:
	.4byte	gWarioData
.L_22a48:
	.4byte	0x0000ffd0
.L_22a4c:
	ldr	r1, .L_22a90
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_22a6a
	ldr	r0, .L_22a94
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_22a6a
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #28]
.L_22a6a:
	ldr	r1, .L_22a98
	ldr	r4, .L_22a9c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r0, #48	@ 0x30
.L_22a7e:
	strh	r0, [r4, #22]
	ldr	r1, .L_22a9c
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #24]
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_22acc
	.align	2, 0
.L_22a90:
	.4byte	gSpriteData
.L_22a94:
	.4byte	gUnk_3000A5A
.L_22a98:
	.4byte	sUnk_82DECA0
.L_22a9c:
	.4byte	gWarioData
.L_22aa0:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22abc
	bl	func_801EF50
	ldr	r1, .L_22ab4
	ldr	r0, .L_22ab8
	b	.L_22ac4
.L_22ab4:
	.4byte	gWarioData
.L_22ab8:
	.4byte	0x0000ffe0
.L_22abc:
	bl	func_801EF94
	ldr	r1, .L_22ae0
	mov	r0, #32
.L_22ac4:
	strh	r0, [r1, #22]
	ldr	r1, .L_22ae0
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #24]
.L_22acc:
	ldr	r1, .L_22ae4
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
.L_22ad8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_22ae0:
	.4byte	gWarioData
.L_22ae4:
	.4byte	gSpriteData


thumb_func_start func_8022AE8
func_8022AE8:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r1, .L_22b14
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r1
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	ldr	r0, .L_22b18
	ldrb	r1, [r0, #1]
	add	r4, r0, #0
	cmp	r1, #22
	blt	.L_22bd4
	cmp	r1, #23
	ble	.L_22b1c
	cmp	r1, #25
	bgt	.L_22bd4
	b	.L_22b20
.L_22b14:
	.4byte	gSpriteData
.L_22b18:
	.4byte	gWarioData
.L_22b1c:
	mov	r0, #1
	strb	r0, [r4, #8]
.L_22b20:
	ldr	r0, .L_22b64
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22b74
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r3, r0
	strh	r0, [r4, #18]
	ldr	r1, .L_22b68
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	ldr	r0, .L_22b6c
	strh	r0, [r4, #22]
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #24]
	ldr	r2, .L_22b70
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #6
	bl	Sprite_SpawnSecondary
	b	.L_22baa
	.align	2, 0
.L_22b64:
	.4byte	gUnk_3000A52
.L_22b68:
	.4byte	sUnk_82DECA0
.L_22b6c:
	.4byte	0x0000ffb8
.L_22b70:
	.4byte	gSpriteData
.L_22b74:
	ldrh	r0, [r4, #50]	@ 0x32
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r4, #18]
	ldr	r1, .L_22bc8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r0, #72	@ 0x48
	strh	r0, [r4, #22]
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #24]
	ldr	r2, .L_22bcc
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	ldrh	r1, [r1, #10]
	add	r1, #32
	mov	r2, #6
	bl	Sprite_SpawnSecondary
.L_22baa:
	ldr	r0, .L_22bd0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_22bbe
	ldr	r1, .L_22bcc
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #28]
.L_22bbe:
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_22c40
	.align	2, 0
.L_22bc8:
	.4byte	sUnk_82DECA0
.L_22bcc:
	.4byte	gSpriteData
.L_22bd0:
	.4byte	gUnk_3000A5A
.L_22bd4:
	ldr	r0, .L_22c08
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22c18
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r3, r0
	strh	r0, [r4, #18]
	bl	func_801EF50
	ldr	r0, .L_22c0c
	strh	r0, [r4, #22]
	mov	r0, #80	@ 0x50
	strh	r0, [r4, #24]
	ldr	r0, .L_22c10
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_22c40
	ldr	r1, .L_22c14
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #31
	b	.L_22c3e
	.align	2, 0
.L_22c08:
	.4byte	gUnk_3000A52
.L_22c0c:
	.4byte	0x0000ffe0
.L_22c10:
	.4byte	gUnk_3000A5A
.L_22c14:
	.4byte	gSpriteData
.L_22c18:
	ldrh	r0, [r4, #50]	@ 0x32
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r4, #18]
	bl	func_801EF94
	mov	r0, #32
	strh	r0, [r4, #22]
	mov	r0, #80	@ 0x50
	strh	r0, [r4, #24]
	ldr	r0, .L_22c5c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_22c40
	ldr	r1, .L_22c60
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
.L_22c3e:
	strb	r1, [r0, #28]
.L_22c40:
	ldr	r3, .L_22c60
	mov	r2, #44	@ 0x2c
	add	r0, r6, #0
	mul	r0, r2
	add	r0, r0, r3
	mov	r1, #15
	strb	r1, [r0, #31]
	add	r0, r5, #0
	mul	r0, r2
	add	r0, r0, r3
	strb	r1, [r0, #31]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_22c5c:
	.4byte	gUnk_3000A5A
.L_22c60:
	.4byte	gSpriteData


thumb_func_start func_8022C64
func_8022C64:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r0, .L_22c88
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	beq	.L_22ce2
	ldr	r1, .L_22c8c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_22cdc
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_22c90
	add	r0, r4, #0
	bl	func_801E884
	b	.L_22ce2
	.align	2, 0
.L_22c88:
	.4byte	gUnk_3000047
.L_22c8c:
	.4byte	gWarioData
.L_22c90:
	ldr	r0, .L_22cac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_22cba
	ldr	r0, .L_22cb0
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22cb4
	bl	func_801EDF4
	b	.L_22cbe
	.align	2, 0
.L_22cac:
	.4byte	gUnk_3000A60
.L_22cb0:
	.4byte	gUnk_3000A52
.L_22cb4:
	bl	func_801EDC8
	b	.L_22cbe
.L_22cba:
	bl	func_801EADC
.L_22cbe:
	ldr	r1, .L_22cd4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	ldr	r1, .L_22cd8
	mov	r0, #20
	strb	r0, [r1, #0]
	b	.L_22ce2
	.align	2, 0
.L_22cd4:
	.4byte	gSpriteData
.L_22cd8:
	.4byte	gUnk_3000A5B
.L_22cdc:
	add	r0, r4, #0
	bl	func_801E92C
.L_22ce2:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8022CE8
func_8022CE8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	ldr	r0, [sp, #32]
	ldr	r6, [sp, #36]	@ 0x24
	ldr	r4, [sp, #40]	@ 0x28
	ldr	r5, [sp, #44]	@ 0x2c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r9, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	lsl	r6, r6, #16
	lsr	r0, r2, #16
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	cmp	r2, r6
	bcc	.L_22d26
	ldr	r1, .L_22d60
	cmp	r0, r4
	bls	.L_22d32
.L_22d26:
	ldr	r0, .L_22d60
	ldrb	r2, [r0, #0]
	mov	r1, #253	@ 0xfd
	and	r1, r2
	strb	r1, [r0, #0]
	add	r1, r0, #0
.L_22d32:
	ldrb	r2, [r1, #0]
	mov	r3, #1
	add	r0, r3, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_22d70
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	bne	.L_22d48
	b	.L_22eb8
.L_22d48:
	bl	func_801EF50
	ldr	r1, .L_22d64
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	ldr	r1, .L_22d68
	ldr	r0, .L_22d6c
	b	.L_22ecc
	.align	2, 0
.L_22d60:
	.4byte	gUnk_3000A52
.L_22d64:
	.4byte	gSpriteData
.L_22d68:
	.4byte	gWarioData
.L_22d6c:
	.4byte	0x0000ffe0
.L_22d70:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_22db0
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	beq	.L_22d98
	ldr	r1, .L_22d94
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	bl	func_801EEE0
	b	.L_22ed4
	.align	2, 0
.L_22d94:
	.4byte	gSpriteData
.L_22d98:
	ldr	r1, .L_22dac
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
	strb	r1, [r0, #28]
	bl	func_801EE9C
	b	.L_22ed4
	.align	2, 0
.L_22dac:
	.4byte	gSpriteData
.L_22db0:
	ldr	r0, .L_22dc4
	ldrb	r2, [r0, #1]
	add	r4, r0, #0
	cmp	r2, #22
	blt	.L_22e8c
	cmp	r2, #23
	ble	.L_22dc8
	cmp	r2, #25
	bgt	.L_22e8c
	b	.L_22dca
.L_22dc4:
	.4byte	gWarioData
.L_22dc8:
	strb	r3, [r4, #8]
.L_22dca:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22e2c
	mov	r0, #16
	and	r0, r5
	cmp	r0, #0
	beq	.L_22e18
	ldr	r1, .L_22e0c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #31
	strb	r1, [r0, #28]
	ldr	r1, .L_22e10
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	ldr	r0, .L_22e14
	strh	r0, [r4, #22]
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
	mov	r0, r8
	sub	r0, #64	@ 0x40
	mov	r1, sl
	add	r1, #32
	b	.L_22e60
	.align	2, 0
.L_22e0c:
	.4byte	gSpriteData
.L_22e10:
	.4byte	sUnk_82DECA0
.L_22e14:
	.4byte	0x0000ffe0
.L_22e18:
	ldr	r1, .L_22e28
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	b	.L_22ed4
	.align	2, 0
.L_22e28:
	.4byte	gSpriteData
.L_22e2c:
	mov	r6, #32
	add	r0, r5, #0
	and	r0, r6
	cmp	r0, #0
	beq	.L_22e78
	ldr	r1, .L_22e70
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #28]
	ldr	r1, .L_22e74
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	strh	r6, [r4, #22]
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
	mov	r0, r8
	sub	r0, #64	@ 0x40
	mov	r1, r9
	sub	r1, #32
.L_22e60:
	mov	r2, #64	@ 0x40
	bl	Sprite_SpawnSecondary
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_22ed4
	.align	2, 0
.L_22e70:
	.4byte	gSpriteData
.L_22e74:
	.4byte	sUnk_82DECA0
.L_22e78:
	ldr	r1, .L_22e88
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
	strb	r1, [r0, #28]
	b	.L_22ed4
	.align	2, 0
.L_22e88:
	.4byte	gSpriteData
.L_22e8c:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22eb8
	bl	func_801EF50
	ldr	r1, .L_22eac
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	ldr	r1, .L_22eb0
	ldr	r0, .L_22eb4
	b	.L_22ecc
.L_22eac:
	.4byte	gSpriteData
.L_22eb0:
	.4byte	gWarioData
.L_22eb4:
	.4byte	0x0000ffe0
.L_22eb8:
	bl	func_801EF94
	ldr	r1, .L_22ef0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
	strb	r1, [r0, #28]
	ldr	r1, .L_22ef4
	mov	r0, #32
.L_22ecc:
	strh	r0, [r1, #22]
	ldr	r1, .L_22ef4
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
.L_22ed4:
	ldr	r1, .L_22ef0
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	mov	r1, #15
	strb	r1, [r0, #31]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_22ef0:
	.4byte	gSpriteData
.L_22ef4:
	.4byte	gWarioData


thumb_func_start func_8022EF8
func_8022EF8:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r6, .L_22f20
	ldrb	r3, [r6, #0]
	mov	r1, #1
	and	r1, r3
	cmp	r1, #0
	beq	.L_22f2a
	mov	r0, #4
	and	r0, r3
	cmp	r0, #0
	beq	.L_22f24
	bl	func_801EF50
	b	.L_22fb2
	.align	2, 0
.L_22f20:
	.4byte	gUnk_3000A52
.L_22f24:
	bl	func_801EF94
	b	.L_22fb2
.L_22f2a:
	mov	r0, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L_22f70
	ldr	r2, .L_22f54
	ldrb	r0, [r2, #26]
	cmp	r0, #0
	beq	.L_22f3c
	strh	r1, [r2, #24]
.L_22f3c:
	ldrb	r1, [r6, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_22f5c
	ldr	r1, .L_22f58
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	b	.L_22fb8
.L_22f54:
	.4byte	gWarioData
.L_22f58:
	.4byte	gSpriteData
.L_22f5c:
	ldr	r1, .L_22f6c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
	strb	r1, [r0, #28]
	b	.L_22fb8
	.align	2, 0
.L_22f6c:
	.4byte	gSpriteData
.L_22f70:
	mov	r0, #4
	and	r0, r3
	cmp	r0, #0
	beq	.L_22f98
	ldr	r1, .L_22f90
	ldrh	r0, [r1, #54]	@ 0x36
	sub	r0, r5, r0
	strh	r0, [r1, #18]
	bl	func_801EF50
	ldr	r1, .L_22f94
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	b	.L_22fb0
.L_22f90:
	.4byte	gWarioData
.L_22f94:
	.4byte	gSpriteData
.L_22f98:
	ldr	r1, .L_22fc0
	ldrh	r0, [r1, #50]	@ 0x32
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r1, #18]
	bl	func_801EF94
	ldr	r1, .L_22fc4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
.L_22fb0:
	strb	r1, [r0, #28]
.L_22fb2:
	ldr	r1, .L_22fc0
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
.L_22fb8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_22fc0:
	.4byte	gWarioData
.L_22fc4:
	.4byte	gSpriteData


thumb_func_start func_8022FC8
func_8022FC8:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	ldr	r0, .L_22ff4
	ldrb	r3, [r0, #0]
	mov	r6, #1
	add	r1, r6, #0
	and	r1, r3
	add	r5, r0, #0
	cmp	r1, #0
	beq	.L_22ffe
	mov	r0, #4
	and	r0, r3
	cmp	r0, #0
	beq	.L_22ff8
	bl	func_801EF50
	b	.L_230fa
.L_22ff4:
	.4byte	gUnk_3000A52
.L_22ff8:
	bl	func_801EF94
	b	.L_230fa
.L_22ffe:
	mov	r0, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L_23044
	ldr	r2, .L_23028
	ldrb	r0, [r2, #26]
	cmp	r0, #0
	beq	.L_23010
	strh	r1, [r2, #24]
.L_23010:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23030
	ldr	r1, .L_2302c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #28]
	b	.L_23100
.L_23028:
	.4byte	gWarioData
.L_2302c:
	.4byte	gSpriteData
.L_23030:
	ldr	r1, .L_23040
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
	strb	r1, [r0, #28]
	b	.L_23100
	.align	2, 0
.L_23040:
	.4byte	gSpriteData
.L_23044:
	ldr	r0, .L_23058
	ldrb	r3, [r0, #1]
	add	r2, r0, #0
	cmp	r3, #22
	blt	.L_230b4
	cmp	r3, #23
	ble	.L_2305c
	cmp	r3, #25
	bgt	.L_230b4
	b	.L_2305e
.L_23058:
	.4byte	gWarioData
.L_2305c:
	strb	r6, [r2, #8]
.L_2305e:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23080
	ldrh	r0, [r2, #54]	@ 0x36
	mov	r1, ip
	sub	r0, r1, r0
	strh	r0, [r2, #18]
	ldr	r1, .L_2307c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #31
	b	.L_23092
.L_2307c:
	.4byte	gSpriteData
.L_23080:
	ldrh	r0, [r2, #50]	@ 0x32
	sub	r0, r7, r0
	add	r0, #1
	strh	r0, [r2, #18]
	ldr	r1, .L_230ac
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
.L_23092:
	strb	r1, [r0, #28]
	ldr	r0, .L_230b0
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r0, #56	@ 0x38
	bl	m4aSongNumStart
	b	.L_23100
.L_230ac:
	.4byte	gSpriteData
.L_230b0:
	.4byte	sUnk_82DECA0
.L_230b4:
	ldrb	r1, [r5, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_230e0
	ldr	r1, .L_230d8
	ldrh	r0, [r1, #54]	@ 0x36
	mov	r2, ip
	sub	r0, r2, r0
	strh	r0, [r1, #18]
	bl	func_801EF50
	ldr	r1, .L_230dc
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #35	@ 0x23
	b	.L_230f8
.L_230d8:
	.4byte	gWarioData
.L_230dc:
	.4byte	gSpriteData
.L_230e0:
	ldr	r1, .L_23108
	ldrh	r0, [r1, #50]	@ 0x32
	sub	r0, r7, r0
	add	r0, #1
	strh	r0, [r1, #18]
	bl	func_801EF94
	ldr	r1, .L_2310c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #37	@ 0x25
.L_230f8:
	strb	r1, [r0, #28]
.L_230fa:
	ldr	r1, .L_23108
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
.L_23100:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_23108:
	.4byte	gWarioData
.L_2310c:
	.4byte	gSpriteData


thumb_func_start func_8023110
func_8023110:
	push	{r4, r5, lr}
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r1, .L_23138
	ldrb	r3, [r1, #0]
	mov	r4, #1
	add	r0, r4, #0
	and	r0, r3
	cmp	r0, #0
	beq	.L_2314c
	mov	r0, #4
	and	r0, r3
	cmp	r0, #0
	beq	.L_2313c
	bl	func_801EF50
	b	.L_23140
	.align	2, 0
.L_23138:
	.4byte	gUnk_3000A52
.L_2313c:
	bl	func_801EF94
.L_23140:
	ldr	r1, .L_23148
	mov	r0, #64	@ 0x40
	b	.L_231ea
	.align	2, 0
.L_23148:
	.4byte	gWarioData
.L_2314c:
	ldr	r3, .L_23160
	ldrb	r0, [r3, #1]
	cmp	r0, #22
	blt	.L_231c0
	cmp	r0, #23
	ble	.L_23164
	cmp	r0, #25
	bgt	.L_231c0
	b	.L_23166
	.align	2, 0
.L_23160:
	.4byte	gWarioData
.L_23164:
	strb	r4, [r3, #8]
.L_23166:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23198
	ldr	r4, .L_2318c
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r5, r0
	strh	r0, [r4, #18]
	ldr	r1, .L_23190
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	ldr	r0, .L_23194
	b	.L_231b4
.L_2318c:
	.4byte	gWarioData
.L_23190:
	.4byte	sUnk_82DECA0
.L_23194:
	.4byte	0x0000ffd0
.L_23198:
	ldr	r4, .L_231b8
	ldrh	r0, [r4, #50]	@ 0x32
	sub	r0, r2, r0
	add	r0, #1
	strh	r0, [r4, #18]
	ldr	r1, .L_231bc
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #26
	bl	_call_via_r1
	mov	r0, #48	@ 0x30
.L_231b4:
	strh	r0, [r4, #22]
	b	.L_231e6
.L_231b8:
	.4byte	gWarioData
.L_231bc:
	.4byte	sUnk_82DECA0
.L_231c0:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_231dc
	bl	func_801EF50
	ldr	r1, .L_231d4
	ldr	r0, .L_231d8
	b	.L_231e4
.L_231d4:
	.4byte	gWarioData
.L_231d8:
	.4byte	0x0000ffe0
.L_231dc:
	bl	func_801EF94
	ldr	r1, .L_231f4
	mov	r0, #32
.L_231e4:
	strh	r0, [r1, #22]
.L_231e6:
	ldr	r1, .L_231f4
	mov	r0, #80	@ 0x50
.L_231ea:
	strh	r0, [r1, #24]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_231f4:
	.4byte	gWarioData


thumb_func_start func_80231F8
func_80231F8:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_232ae
	ldr	r0, .L_23234
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23248
	ldr	r0, .L_23238
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_2322a
	cmp	r0, #28
	bne	.L_2323c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_2322a:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_232ae
	.align	2, 0
.L_23234:
	.4byte	gUnk_3000A52
.L_23238:
	.4byte	gWarioData
.L_2323c:
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_2329e
.L_23248:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_23280
	ldr	r1, .L_23268
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_2326c
	mov	r4, #51	@ 0x33
	b	.L_2326e
	.align	2, 0
.L_23268:
	.4byte	gSpriteData
.L_2326c:
	mov	r4, #53	@ 0x35
.L_2326e:
	ldr	r0, .L_2327c
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_232ae
	bl	func_801EB04
	b	.L_232ae
.L_2327c:
	.4byte	gWarioData
.L_23280:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2328e
	add	r0, r5, #0
	mov	r1, #1
	b	.L_2329a
.L_2328e:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_232a4
	add	r0, r5, #0
	mov	r1, #0
.L_2329a:
	bl	func_801F14C
.L_2329e:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_232ae
.L_232a4:
	ldr	r1, .L_232c0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_232ae:
	ldr	r1, .L_232c0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_232c0:
	.4byte	gSpriteData


thumb_func_start func_80232C4
func_80232C4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r1, .L_23320
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	mov	sl, r0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r9, r6
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_2339c
	ldr	r0, .L_23324
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23338
	ldr	r0, .L_23328
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_23316
	cmp	r0, #28
	bne	.L_2332c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_23316:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_2339c
	.align	2, 0
.L_23320:
	.4byte	gSpriteData
.L_23324:
	.4byte	gUnk_3000A52
.L_23328:
	.4byte	gWarioData
.L_2332c:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, #1
	bl	func_801F00C
	b	.L_23394
.L_23338:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_2334e
	ldrh	r1, [r5, #0]
	mov	r0, sl
	and	r0, r1
	cmp	r0, #0
	bne	.L_23376
	mov	r4, #51	@ 0x33
	b	.L_23378
.L_2334e:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23368
	cmp	r6, #0
	bne	.L_23362
	mov	r4, #51	@ 0x33
	bl	func_801EB04
	b	.L_2339c
.L_23362:
	add	r0, r7, #0
	mov	r1, #1
	b	.L_23390
.L_23368:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_2339a
	mov	r0, r9
	cmp	r0, #0
	beq	.L_2338c
.L_23376:
	mov	r4, #53	@ 0x35
.L_23378:
	ldr	r0, .L_23388
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_2339c
	bl	func_801EB04
	b	.L_2339c
	.align	2, 0
.L_23388:
	.4byte	gWarioData
.L_2338c:
	add	r0, r7, #0
	mov	r1, #0
.L_23390:
	bl	func_801F14C
.L_23394:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_2339c
.L_2339a:
	ldrb	r4, [r5, #28]
.L_2339c:
	ldr	r1, .L_233b4
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_233b4:
	.4byte	gSpriteData


thumb_func_start func_80233B8
func_80233B8:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_23486
	ldr	r0, .L_233f4
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23408
	ldr	r0, .L_233f8
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_233ea
	cmp	r0, #28
	bne	.L_233fc
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_233ea:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_23486
	.align	2, 0
.L_233f4:
	.4byte	gUnk_3000A52
.L_233f8:
	.4byte	gWarioData
.L_233fc:
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_23476
.L_23408:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_23458
	ldr	r1, .L_23434
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_2343c
	ldr	r0, .L_23438
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_23486
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_2344c
.L_23434:
	.4byte	gSpriteData
.L_23438:
	.4byte	gWarioData
.L_2343c:
	ldr	r0, .L_23454
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_23486
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
.L_2344c:
	add	r0, r5, #0
	bl	func_801E52C
	b	.L_23486
.L_23454:
	.4byte	gWarioData
.L_23458:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23466
	add	r0, r5, #0
	mov	r1, #1
	b	.L_23472
.L_23466:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_2347c
	add	r0, r5, #0
	mov	r1, #0
.L_23472:
	bl	func_801F14C
.L_23476:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_23486
.L_2347c:
	ldr	r1, .L_23498
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_23486:
	ldr	r1, .L_23498
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_23498:
	.4byte	gSpriteData


thumb_func_start func_802349C
func_802349C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r1, .L_234f8
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	mov	sl, r0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r9, r6
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_23584
	ldr	r0, .L_234fc
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23510
	ldr	r0, .L_23500
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_234ee
	cmp	r0, #28
	bne	.L_23504
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_234ee:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_23584
	.align	2, 0
.L_234f8:
	.4byte	gSpriteData
.L_234fc:
	.4byte	gUnk_3000A52
.L_23500:
	.4byte	gWarioData
.L_23504:
	add	r0, r7, #0
	mov	r1, r8
	mov	r2, #1
	bl	func_801F00C
	b	.L_2357c
.L_23510:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_23524
	ldrh	r1, [r5, #0]
	mov	r0, sl
	and	r0, r1
	cmp	r0, #0
	beq	.L_23530
	b	.L_2355c
.L_23524:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2354e
	cmp	r6, #0
	bne	.L_23548
.L_23530:
	ldr	r0, .L_23544
	ldrb	r0, [r0, #4]
	mov	r4, #35	@ 0x23
	cmp	r0, #0
	bne	.L_23584
	mov	r4, #39	@ 0x27
	bl	func_801EDF4
	b	.L_23584
	.align	2, 0
.L_23544:
	.4byte	gWarioData
.L_23548:
	add	r0, r7, #0
	mov	r1, #1
	b	.L_23578
.L_2354e:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_23582
	mov	r0, r9
	cmp	r0, #0
	beq	.L_23574
.L_2355c:
	ldr	r0, .L_23570
	ldrb	r0, [r0, #4]
	mov	r4, #37	@ 0x25
	cmp	r0, #0
	bne	.L_23584
	mov	r4, #41	@ 0x29
	bl	func_801EDC8
	b	.L_23584
	.align	2, 0
.L_23570:
	.4byte	gWarioData
.L_23574:
	add	r0, r7, #0
	mov	r1, #0
.L_23578:
	bl	func_801F14C
.L_2357c:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_23584
.L_23582:
	ldrb	r4, [r5, #28]
.L_23584:
	ldr	r1, .L_2359c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_2359c:
	.4byte	gSpriteData


thumb_func_start func_80235A0
func_80235A0:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	bl	func_801EFD4
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	beq	.L_235b6
	b	.L_236ae
.L_235b6:
	ldr	r1, .L_235e4
	ldrb	r2, [r1, #0]
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_23624
	ldr	r0, .L_235e8
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_235f6
	cmp	r0, #27
	bgt	.L_235ec
	cmp	r0, #25
	bgt	.L_235fe
	cmp	r0, #22
	blt	.L_235fe
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, #1
	bl	func_801F00C
	b	.L_2369e
	.align	2, 0
.L_235e4:
	.4byte	gUnk_3000A52
.L_235e8:
	.4byte	gWarioData
.L_235ec:
	cmp	r0, #28
	bne	.L_235fe
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_235f6:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_236ae
.L_235fe:
	ldrb	r1, [r1, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23610
	mov	r4, #51	@ 0x33
	bl	func_801EF50
	b	.L_23616
.L_23610:
	mov	r4, #53	@ 0x35
	bl	func_801EF94
.L_23616:
	ldr	r1, .L_23620
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #24]
	b	.L_236ae
	.align	2, 0
.L_23620:
	.4byte	gWarioData
.L_23624:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_23680
	ldr	r1, .L_23650
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_23660
	ldr	r0, .L_23654
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_2364c
	ldrb	r0, [r2, #30]
	cmp	r0, #50	@ 0x32
	bne	.L_23658
.L_2364c:
	mov	r4, #35	@ 0x23
	b	.L_236ae
.L_23650:
	.4byte	gSpriteData
.L_23654:
	.4byte	gWarioData
.L_23658:
	mov	r4, #39	@ 0x27
	bl	func_801EADC
	b	.L_236ae
.L_23660:
	ldr	r0, .L_23674
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_2366e
	ldrb	r0, [r2, #30]
	cmp	r0, #50	@ 0x32
	bne	.L_23678
.L_2366e:
	mov	r4, #37	@ 0x25
	b	.L_236ae
	.align	2, 0
.L_23674:
	.4byte	gWarioData
.L_23678:
	mov	r4, #41	@ 0x29
	bl	func_801EADC
	b	.L_236ae
.L_23680:
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	beq	.L_2368e
	add	r0, r5, #0
	mov	r1, #1
	b	.L_2369a
.L_2368e:
	mov	r0, #8
	and	r0, r2
	cmp	r0, #0
	beq	.L_236a4
	add	r0, r5, #0
	mov	r1, #0
.L_2369a:
	bl	func_801F14C
.L_2369e:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_236ae
.L_236a4:
	ldr	r1, .L_236c0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_236ae:
	ldr	r1, .L_236c0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_236c0:
	.4byte	gSpriteData


thumb_func_start func_80236C4
func_80236C4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #16
	lsr	r6, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r8, r3
	mov	r4, #0
	ldr	r0, .L_23700
	ldrb	r1, [r0, #1]
	add	r2, r0, #0
	cmp	r1, #15
	bgt	.L_23724
	cmp	r1, #12
	blt	.L_23724
	ldr	r0, .L_23704
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23708
	mov	r4, #31
	ldrh	r0, [r2, #54]	@ 0x36
	sub	r0, r6, r0
	b	.L_23712
	.align	2, 0
.L_23700:
	.4byte	gWarioData
.L_23704:
	.4byte	gUnk_3000A52
.L_23708:
	mov	r4, #33	@ 0x21
	ldrh	r0, [r2, #50]	@ 0x32
	mov	r1, r8
	sub	r0, r1, r0
	add	r0, #1
.L_23712:
	strh	r0, [r2, #18]
	ldr	r0, .L_23750
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, #16
	bl	_call_via_r1
.L_23724:
	cmp	r4, #0
	bne	.L_237ca
	ldr	r0, .L_23754
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23764
	ldr	r0, .L_23758
	ldrb	r0, [r0, #1]
	cmp	r0, #27
	beq	.L_23746
	cmp	r0, #28
	bne	.L_2375c
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_23746:
	mov	r4, #49	@ 0x31
	bl	func_801EF28
	b	.L_237ca
	.align	2, 0
.L_23750:
	.4byte	sUnk_82DECA0
.L_23754:
	.4byte	gUnk_3000A52
.L_23758:
	.4byte	gWarioData
.L_2375c:
	add	r0, r5, #0
	add	r1, r7, #0
	mov	r2, #1
	b	.L_23772
.L_23764:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_2377c
	add	r0, r5, #0
	add	r1, r7, #0
	mov	r2, #0
.L_23772:
	bl	func_801F00C
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_237ca
.L_2377c:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2379c
	ldr	r4, .L_23798
	ldrh	r0, [r4, #54]	@ 0x36
	sub	r0, r6, r0
	strh	r0, [r4, #18]
	bl	func_801EF50
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
	mov	r4, #35	@ 0x23
	b	.L_237ca
.L_23798:
	.4byte	gWarioData
.L_2379c:
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_237c0
	ldr	r4, .L_237bc
	ldrh	r0, [r4, #50]	@ 0x32
	mov	r1, r8
	sub	r0, r1, r0
	add	r0, #1
	strh	r0, [r4, #18]
	bl	func_801EF94
	mov	r0, #64	@ 0x40
	strh	r0, [r4, #24]
	mov	r4, #37	@ 0x25
	b	.L_237ca
.L_237bc:
	.4byte	gWarioData
.L_237c0:
	ldr	r1, .L_237e0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrb	r4, [r0, #28]
.L_237ca:
	ldr	r1, .L_237e0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strb	r4, [r0, #28]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_237e0:
	.4byte	gSpriteData


thumb_func_start func_80237E4
func_80237E4:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r0, .L_23818
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_23874
	ldr	r4, .L_2381c
	ldrb	r0, [r4, #1]
	cmp	r0, #27
	beq	.L_23806
	cmp	r0, #28
	bne	.L_23824
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_23806:
	ldr	r1, .L_23820
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #28]
	bl	func_801EF28
	b	.L_23892
.L_23818:
	.4byte	gUnk_3000A52
.L_2381c:
	.4byte	gWarioData
.L_23820:
	.4byte	gSpriteData
.L_23824:
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_23892
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23850
	ldr	r1, .L_23848
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	ldr	r0, .L_2384c
	b	.L_23862
	.align	2, 0
.L_23848:
	.4byte	sUnk_82DECA0
.L_2384c:
	.4byte	0x0000ffec
.L_23850:
	ldr	r1, .L_2386c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #31
	bl	_call_via_r1
	mov	r0, #20
.L_23862:
	strh	r0, [r4, #22]
	ldr	r1, .L_23870
	mov	r0, #100	@ 0x64
	strh	r0, [r1, #24]
	b	.L_23892
.L_2386c:
	.4byte	sUnk_82DECA0
.L_23870:
	.4byte	gWarioData
.L_23874:
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_23892
	ldr	r0, .L_23898
	ldrb	r4, [r0, #4]
	cmp	r4, #0
	bne	.L_23892
	bl	func_801EDF4
	ldr	r0, .L_2389c
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	ldr	r0, .L_238a0
	strb	r4, [r0, #0]
.L_23892:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_23898:
	.4byte	gWarioData
.L_2389c:
	.4byte	gUnk_3000A59
.L_238a0:
	.4byte	gUnk_3000A5B
