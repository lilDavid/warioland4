.include "macros.s.inc"


thumb_func_start func_802B524
func_802B524:
	ldr	r0, .L_2b574
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrb	r1, [r1, #26]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	mov	r1, ip
	strb	r0, [r1, #26]
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #208	@ 0xd0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
.L_2b574:
	.4byte	gCurrentSprite


thumb_func_start func_802B578
func_802B578:
	push	{lr}
	ldr	r1, .L_2b598
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #30]
	add	r2, r1, #0
	add	r2, #35	@ 0x23
	mov	r0, #168	@ 0xa8
	strb	r0, [r2, #0]
	ldr	r0, .L_2b59c
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	bl	func_802B524
	pop	{r0}
	bx	r0
.L_2b598:
	.4byte	gCurrentSprite
.L_2b59c:
	.4byte	sUnk_83B59EC


thumb_func_start func_802B5A0
func_802B5A0:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_2b5dc
	mov	r0, #29
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #35	@ 0x23
	mov	r0, #176	@ 0xb0
	strb	r0, [r1, #0]
	ldr	r0, .L_2b5e0
	str	r0, [r4, #4]
	mov	r0, #48	@ 0x30
	strb	r0, [r4, #28]
	bl	func_802B524
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #170	@ 0xaa
	bl	func_801E430
	add	r4, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r4, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2b5dc:
	.4byte	gCurrentSprite
.L_2b5e0:
	.4byte	sUnk_83B5A8C


thumb_func_start func_802B5E4
func_802B5E4:
	push	{lr}
	ldr	r1, .L_2b61c
	ldr	r2, .L_2b620
	ldr	r0, .L_2b624
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #168	@ 0xa8
	strb	r0, [r1, #0]
	ldr	r0, .L_2b628
	str	r0, [r2, #4]
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	add	r2, #39	@ 0x27
	mov	r0, #1
	strb	r0, [r2, #0]
	bl	func_802B524
	pop	{r0}
	bx	r0
.L_2b61c:
	.4byte	gPersistentSpriteData
.L_2b620:
	.4byte	gCurrentSprite
.L_2b624:
	.4byte	gCurrentRoom
.L_2b628:
	.4byte	sUnk_83B5BE4


thumb_func_start func_802B62C
func_802B62C:
	ldr	r0, .L_2b65c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2b658
	ldr	r2, .L_2b660
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2b658
	ldr	r0, .L_2b664
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #130	@ 0x82
	strb	r0, [r3, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
.L_2b658:
	bx	lr
	.align	2, 0
.L_2b65c:
	.4byte	gDisableWario
.L_2b660:
	.4byte	gCurrentSprite
.L_2b664:
	.4byte	sUnk_83B5B1C


thumb_func_start func_802B668
func_802B668:
	ldr	r2, .L_2b68c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2b688
	ldr	r0, .L_2b690
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_2b688:
	bx	lr
	.align	2, 0
.L_2b68c:
	.4byte	gCurrentSprite
.L_2b690:
	.4byte	sUnk_83B59EC


thumb_func_start func_802B694
func_802B694:
	push	{lr}
	ldr	r1, .L_2b714
	ldr	r2, .L_2b718
	ldr	r0, .L_2b71c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r3, #0
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #0]
	mov	r0, #29
	strb	r0, [r2, #30]
	ldr	r0, .L_2b720
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #18
	strb	r0, [r2, #28]
	add	r2, #39	@ 0x27
	mov	r0, #13
	strb	r0, [r2, #0]
	ldr	r0, .L_2b724
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_2b728
	strb	r1, [r0, #0]
	ldr	r0, .L_2b72c
	mov	r2, #2
	strb	r2, [r0, #4]
	ldr	r0, .L_2b730
	strb	r1, [r0, #0]
	ldr	r0, .L_2b734
	str	r3, [r0, #0]
	ldr	r1, .L_2b738
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r0, .L_2b73c
	strb	r2, [r0, #0]
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #1
	mov	r0, #200	@ 0xc8
	mov	r2, #78	@ 0x4e
	bl	SpriteSpawnSecondary
	ldr	r2, .L_2b740
	ldrh	r0, [r2, #20]
	ldr	r1, .L_2b744
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	ldrh	r1, [r2, #18]
	ldr	r2, .L_2b748
	ldrh	r2, [r2, #0]
	add	r2, #64	@ 0x40
	sub	r1, r1, r2
	mov	r2, #79	@ 0x4f
	bl	SpriteSpawnSecondary
	bl	m4aMPlayAllStop
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2b714:
	.4byte	gPersistentSpriteData
.L_2b718:
	.4byte	gCurrentSprite
.L_2b71c:
	.4byte	gCurrentRoom
.L_2b720:
	.4byte	sUnk_83B59FC
.L_2b724:
	.4byte	gSwitchPressed
.L_2b728:
	.4byte	gUnk_3000035
.L_2b72c:
	.4byte	gSwitchStates
.L_2b730:
	.4byte	gUnk_3000047
.L_2b734:
	.4byte	gUnk_3000BEC
.L_2b738:
	.4byte	gUnk_3000C01
.L_2b73c:
	.4byte	gUnk_3000C03
.L_2b740:
	.4byte	gWarioData
.L_2b744:
	.4byte	gBg1YPosition
.L_2b748:
	.4byte	gBg1XPosition


thumb_func_start func_802B74C
func_802B74C:
	push	{lr}
	ldr	r3, .L_2b77c
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
	beq	.L_2b780
	add	r0, r1, #0
	cmp	r0, #12
	bne	.L_2b798
	mov	r0, #217	@ 0xd9
	bl	m4aSongNumStart
	mov	r0, #5
	bl	VoiceSetPlay
	b	.L_2b798
	.align	2, 0
.L_2b77c:
	.4byte	gCurrentSprite
.L_2b780:
	ldr	r0, .L_2b79c
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #24
	strb	r0, [r3, #28]
	mov	r0, #40	@ 0x28
	mov	r1, ip
	strb	r0, [r1, #0]
	ldr	r1, .L_2b7a0
	mov	r0, #200	@ 0xc8
	strh	r0, [r1, #0]
.L_2b798:
	pop	{r0}
	bx	r0
.L_2b79c:
	.4byte	sUnk_83B5A24
.L_2b7a0:
	.4byte	gWarioPauseTimer


thumb_func_start func_802B7A4
func_802B7A4:
	ldr	r2, .L_2b7cc
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2b7c8
	ldr	r0, .L_2b7d0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #34	@ 0x22
	strb	r0, [r3, #0]
.L_2b7c8:
	bx	lr
	.align	2, 0
.L_2b7cc:
	.4byte	gCurrentSprite
.L_2b7d0:
	.4byte	sUnk_83B5A34


thumb_func_start func_802B7D4
func_802B7D4:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_2b824
	mov	ip, r0
	mov	r4, ip
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2b81a
	mov	r2, ip
	add	r2, #35	@ 0x23
	mov	r0, #176	@ 0xb0
	strb	r0, [r2, #0]
	ldr	r0, .L_2b828
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #28]
	ldrb	r1, [r2, #24]
	ldrb	r2, [r2, #25]
	mov	r5, ip
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #170	@ 0xaa
	bl	func_801E430
	mov	r0, #33	@ 0x21
	strb	r0, [r4, #0]
.L_2b81a:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2b824:
	.4byte	gCurrentSprite
.L_2b828:
	.4byte	sUnk_83B5A8C


thumb_func_start func_802B82C
func_802B82C:
	push	{r4, lr}
	ldr	r0, .L_2b850
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bhi	.L_2b838
	b	.L_2b9a0
.L_2b838:
	ldr	r0, .L_2b854
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #33	@ 0x21
	bls	.L_2b844
	b	.L_2b996
.L_2b844:
	lsl	r0, r0, #2
	ldr	r1, .L_2b858
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2b850:
	.4byte	gUnk_3000047
.L_2b854:
	.4byte	gCurrentSprite
.L_2b858:
	.4byte	.L_2b85c
.L_2b85c:
	.4byte	.L_2b990
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b978
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b968
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b958
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b948
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b938
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b928
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b918
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b908
	.4byte	.L_2b996
	.4byte	.L_2b996
	.4byte	.L_2b8e4
.L_2b8e4:
	ldr	r4, .L_2b900
	ldrh	r0, [r4, #8]
	sub	r0, #30
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r0, .L_2b904
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	b	.L_2b996
	.align	2, 0
.L_2b900:
	.4byte	gCurrentSprite
.L_2b904:
	.4byte	sUnk_83B5BF4
.L_2b908:
	ldr	r1, .L_2b914
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r1, #10]
	sub	r1, #16
	b	.L_2b982
.L_2b914:
	.4byte	gCurrentSprite
.L_2b918:
	ldr	r1, .L_2b924
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r1, #10]
	add	r1, #40	@ 0x28
	b	.L_2b982
.L_2b924:
	.4byte	gCurrentSprite
.L_2b928:
	ldr	r1, .L_2b934
	ldrh	r0, [r1, #8]
	sub	r0, #128	@ 0x80
	ldrh	r1, [r1, #10]
	b	.L_2b982
	.align	2, 0
.L_2b934:
	.4byte	gCurrentSprite
.L_2b938:
	ldr	r1, .L_2b944
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r1, #10]
	b	.L_2b982
	.align	2, 0
.L_2b944:
	.4byte	gCurrentSprite
.L_2b948:
	ldr	r1, .L_2b954
	ldrh	r0, [r1, #8]
	sub	r0, #128	@ 0x80
	ldrh	r1, [r1, #10]
	sub	r1, #24
	b	.L_2b982
.L_2b954:
	.4byte	gCurrentSprite
.L_2b958:
	ldr	r1, .L_2b964
	ldrh	r0, [r1, #8]
	sub	r0, #90	@ 0x5a
	ldrh	r1, [r1, #10]
	add	r1, #36	@ 0x24
	b	.L_2b982
.L_2b964:
	.4byte	gCurrentSprite
.L_2b968:
	ldr	r1, .L_2b974
	ldrh	r0, [r1, #8]
	sub	r0, #160	@ 0xa0
	ldrh	r1, [r1, #10]
	sub	r1, #16
	b	.L_2b982
.L_2b974:
	.4byte	gCurrentSprite
.L_2b978:
	ldr	r1, .L_2b98c
	ldrh	r0, [r1, #8]
	sub	r0, #192	@ 0xc0
	ldrh	r1, [r1, #10]
	add	r1, #24
.L_2b982:
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_2b996
	.align	2, 0
.L_2b98c:
	.4byte	gCurrentSprite
.L_2b990:
	ldr	r1, .L_2b9a8
	mov	r0, #0
	strh	r0, [r1, #0]
.L_2b996:
	ldr	r1, .L_2b9a8
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_2b9a0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2b9a8:
	.4byte	gCurrentSprite


thumb_func_start func_802B9AC
func_802B9AC:
	push	{r4, lr}
	ldr	r0, .L_2ba00
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_2ba04
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #16
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_2ba08
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #30]
	strb	r3, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2ba00:
	.4byte	gCurrentSprite
.L_2ba04:
	.4byte	0xFFFB
.L_2ba08:
	.4byte	sUnk_83B5AB4


thumb_func_start SpriteSwitch
SpriteSwitch:
	push	{lr}
	ldr	r0, .L_2ba28
	ldrb	r0, [r0, #28]
	cmp	r0, #18
	beq	.L_2ba7a
	cmp	r0, #18
	bgt	.L_2ba36
	cmp	r0, #1
	beq	.L_2ba68
	cmp	r0, #1
	bgt	.L_2ba2c
	cmp	r0, #0
	beq	.L_2ba52
	b	.L_2ba9c
.L_2ba28:
	.4byte	gCurrentSprite
.L_2ba2c:
	cmp	r0, #2
	beq	.L_2ba6e
	cmp	r0, #17
	beq	.L_2ba74
	b	.L_2ba9c
.L_2ba36:
	cmp	r0, #48	@ 0x30
	beq	.L_2ba98
	cmp	r0, #48	@ 0x30
	bgt	.L_2ba48
	cmp	r0, #20
	beq	.L_2ba86
	cmp	r0, #24
	beq	.L_2ba80
	b	.L_2ba9c
.L_2ba48:
	cmp	r0, #111	@ 0x6f
	beq	.L_2ba8c
	cmp	r0, #113	@ 0x71
	beq	.L_2ba92
	b	.L_2ba9c
.L_2ba52:
	ldr	r0, .L_2ba64
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_2ba68
	bl	func_802B5E4
	b	.L_2ba9c
.L_2ba64:
	.4byte	gCurrentStageID
.L_2ba68:
	bl	func_802B578
	b	.L_2ba9c
.L_2ba6e:
	bl	func_802B5A0
	b	.L_2ba9c
.L_2ba74:
	bl	func_802B694
	b	.L_2ba9c
.L_2ba7a:
	bl	func_802B74C
	b	.L_2ba9c
.L_2ba80:
	bl	func_802B7A4
	b	.L_2ba9c
.L_2ba86:
	bl	func_802B7D4
	b	.L_2ba9c
.L_2ba8c:
	bl	func_802B62C
	b	.L_2ba9c
.L_2ba92:
	bl	func_802B668
	b	.L_2ba9c
.L_2ba98:
	bl	func_802B82C
.L_2ba9c:
	bl	func_8026838
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownAA
SpriteUnknownAA:
	push	{lr}
	mov	r0, #7
	bl	SpriteUtilDespawnChildWithParent
	add	r2, r0, #0
	cmp	r2, #0
	bne	.L_2bad2
	ldr	r1, .L_2bac4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #0
	bne	.L_2bac8
	bl	func_802B9AC
	b	.L_2bad2
.L_2bac4:
	.4byte	gCurrentSprite
.L_2bac8:
	ldr	r0, .L_2bad8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_2bad2
	strh	r2, [r1, #0]
.L_2bad2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2bad8:
	.4byte	gUnk_3000047
