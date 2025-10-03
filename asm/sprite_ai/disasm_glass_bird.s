.include "macros.s.inc"


thumb_func_start func_80624F8
func_80624F8:
	ldr	r0, .L_62544
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
	mov	r0, ip
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_62548
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	strb	r2, [r1, #30]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_62544:
	.4byte	gCurrentSprite
.L_62548:
	.4byte	sUnk_83E45F0


thumb_func_start func_806254C
func_806254C:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_62574
	ldr	r1, [r4, #20]
	ldr	r0, .L_62578
	and	r1, r0
	ldr	r0, .L_6257c
	cmp	r1, r0
	bne	.L_62580
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #235	@ 0xeb
	bl	SpriteSpawnAsChild
	b	.L_62596
	.align	2, 0
.L_62574:
	.4byte	gCurrentSprite
.L_62578:
	.4byte	0xFFFFFF
.L_6257c:
	.4byte	0x40020
.L_62580:
	ldr	r0, .L_625a0
	cmp	r1, r0
	bne	.L_62596
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_62596
	mov	r0, #66	@ 0x42
	bl	m4aSongNumStart
.L_62596:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_625a0:
	.4byte	0x40004


thumb_func_start func_80625A4
func_80625A4:
	ldr	r0, .L_625f0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r0, .L_625f4
	and	r0, r1
	mov	r2, #0
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	ldr	r0, .L_625f8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #5
	strb	r0, [r1, #30]
	mov	r0, #29
	strb	r0, [r1, #28]
	bx	lr
.L_625f0:
	.4byte	gCurrentSprite
.L_625f4:
	.4byte	0xFFFB
.L_625f8:
	.4byte	sUnk_83E4778


thumb_func_start func_80625FC
func_80625FC:
	push	{r4, r5, lr}
	ldr	r1, .L_62644
	mov	r5, #0
	mov	r4, #1
	strb	r4, [r1, #31]
	ldrh	r0, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r2, r3, #0
	mov	r3, #0
	orr	r2, r0
	ldr	r0, .L_62648
	and	r2, r0
	strh	r2, [r1, #0]
	ldr	r0, .L_6264c
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r5, [r1, #20]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #28
	strb	r0, [r3, #0]
	strb	r4, [r1, #26]
	mov	r0, #123	@ 0x7b
	strb	r0, [r1, #28]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_6263c
	mov	r0, #67	@ 0x43
	bl	m4aSongNumStart
.L_6263c:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_62644:
	.4byte	gCurrentSprite
.L_62648:
	.4byte	0xFEF7
.L_6264c:
	.4byte	sUnk_83E47A8


thumb_func_start func_8062650
func_8062650:
	ldr	r2, .L_6266c
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_6266a
	strh	r0, [r2, #0]
.L_6266a:
	bx	lr
.L_6266c:
	.4byte	gCurrentSprite


thumb_func_start func_8062670
func_8062670:
	ldr	r0, .L_62680
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_62680:
	.4byte	gCurrentSprite


thumb_func_start func_8062684
func_8062684:
	ldr	r2, .L_626b4
	mov	r1, #0
	mov	r0, #123	@ 0x7b
	strb	r0, [r2, #28]
	ldr	r0, .L_626b8
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #28
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_626bc
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_626b4:
	.4byte	gCurrentSprite
.L_626b8:
	.4byte	sUnk_83E4818
.L_626bc:
	.4byte	0xFEFF


thumb_func_start func_80626C0
func_80626C0:
	push	{lr}
	ldr	r2, .L_626d4
	ldrh	r1, [r2, #0]
	ldr	r0, .L_626d8
	and	r0, r1
	strh	r0, [r2, #0]
	bl	func_8062684
	pop	{r0}
	bx	r0
.L_626d4:
	.4byte	gCurrentSprite
.L_626d8:
	.4byte	0xFFBF


thumb_func_start func_80626DC
func_80626DC:
	push	{lr}
	ldr	r2, .L_626f0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r2, #0]
	bl	func_8062684
	pop	{r0}
	bx	r0
.L_626f0:
	.4byte	gCurrentSprite


thumb_func_start func_80626F4
func_80626F4:
	ldr	r0, .L_62708
	add	r3, r0, #0
	add	r3, #41	@ 0x29
	mov	r2, #0
	mov	r1, #8
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_62708:
	.4byte	gCurrentSprite


thumb_func_start func_806270C
func_806270C:
	push	{lr}
	ldr	r1, .L_6271c
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80626F4
	pop	{r0}
	bx	r0
.L_6271c:
	.4byte	gCurrentSprite


thumb_func_start func_8062720
func_8062720:
	push	{lr}
	ldr	r1, .L_62730
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80626F4
	pop	{r0}
	bx	r0
.L_62730:
	.4byte	gCurrentSprite


thumb_func_start func_8062734
func_8062734:
	ldr	r1, .L_6274c
	ldrh	r2, [r1, #0]
	ldr	r0, .L_62750
	and	r0, r2
	mov	r2, #0
	mov	r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_62754
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	bx	lr
.L_6274c:
	.4byte	gCurrentSprite
.L_62750:
	.4byte	0xFFF7
.L_62754:
	.4byte	sUnk_83E4790


thumb_func_start func_8062758
func_8062758:
	push	{lr}
	ldr	r1, .L_62768
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8062734
	pop	{r0}
	bx	r0
.L_62768:
	.4byte	gCurrentSprite


thumb_func_start func_806276C
func_806276C:
	push	{lr}
	ldr	r1, .L_6277c
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8062734
	pop	{r0}
	bx	r0
.L_6277c:
	.4byte	gCurrentSprite


thumb_func_start func_8062780
func_8062780:
	push	{lr}
	ldr	r0, .L_62794
	mov	r1, #1
	strb	r1, [r0, #31]
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	bl	func_8062734
	pop	{r0}
	bx	r0
.L_62794:
	.4byte	gCurrentSprite


thumb_func_start func_8062798
func_8062798:
	push	{lr}
	ldr	r0, .L_627ac
	mov	r1, #1
	strb	r1, [r0, #31]
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	bl	func_8062734
	pop	{r0}
	bx	r0
.L_627ac:
	.4byte	gCurrentSprite


thumb_func_start SpriteGlassBird
SpriteGlassBird:
	push	{lr}
	ldr	r1, .L_627c4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #0
	beq	.L_627c8
	cmp	r0, #16
	beq	.L_627ce
	b	.L_627d2
.L_627c4:
	.4byte	gCurrentSprite
.L_627c8:
	bl	func_80624F8
	b	.L_627d2
.L_627ce:
	bl	func_806254C
.L_627d2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownEB
SpriteUnknownEB:
	push	{lr}
	ldr	r0, .L_62808
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #123	@ 0x7b
	beq	.L_627f4
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_627f4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_627f4:
	ldrb	r0, [r2, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_627fc
	b	.L_62ac0
.L_627fc:
	lsl	r0, r0, #2
	ldr	r1, .L_6280c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_62808:
	.4byte	gCurrentSprite
.L_6280c:
	.4byte	.L_62810
.L_62810:
	.4byte	.L_62a00
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62a16
	.4byte	.L_62a1a
	.4byte	.L_62a06
	.4byte	.L_62ac0
	.4byte	.L_62a10
	.4byte	.L_62ac0
	.4byte	.L_62a06
	.4byte	.L_62ac0
	.4byte	.L_62a10
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62a06
	.4byte	.L_62ac0
	.4byte	.L_62a10
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62a20
	.4byte	.L_62a30
	.4byte	.L_62a26
	.4byte	.L_62a3a
	.4byte	.L_62a2c
	.4byte	.L_62a30
	.4byte	.L_62a36
	.4byte	.L_62a3a
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62a06
	.4byte	.L_62a10
	.4byte	.L_62a40
	.4byte	.L_62a46
	.4byte	.L_62a4c
	.4byte	.L_62a52
	.4byte	.L_62a64
	.4byte	.L_62a6a
	.4byte	.L_62a58
	.4byte	.L_62a5e
	.4byte	.L_62a70
	.4byte	.L_62a74
	.4byte	.L_62a98
	.4byte	.L_62a9c
	.4byte	.L_62a7a
	.4byte	.L_62a7e
	.4byte	.L_62aa2
	.4byte	.L_62aa6
	.4byte	.L_62a84
	.4byte	.L_62a88
	.4byte	.L_62aac
	.4byte	.L_62ab0
	.4byte	.L_62a8e
	.4byte	.L_62a92
	.4byte	.L_62ab6
	.4byte	.L_62aba
	.4byte	.L_62a10
	.4byte	.L_62a06
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62ac0
	.4byte	.L_62a0a
.L_62a00:
	bl	func_80625A4
	b	.L_62ac4
.L_62a06:
	bl	func_80626C0
.L_62a0a:
	bl	func_8062650
	b	.L_62ac4
.L_62a10:
	bl	func_80626DC
	b	.L_62a0a
.L_62a16:
	bl	func_8062670
.L_62a1a:
	bl	func_8023FA8
	b	.L_62ac4
.L_62a20:
	bl	func_8024AC0
	b	.L_62a30
.L_62a26:
	bl	func_8024BEC
	b	.L_62a3a
.L_62a2c:
	bl	func_806270C
.L_62a30:
	bl	func_8024AD4
	b	.L_62ac4
.L_62a36:
	bl	func_8062720
.L_62a3a:
	bl	func_8024C00
	b	.L_62ac4
.L_62a40:
	bl	func_8062758
	b	.L_62ac4
.L_62a46:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_62ac4
.L_62a4c:
	bl	func_806276C
	b	.L_62ac4
.L_62a52:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_62ac4
.L_62a58:
	bl	func_8062780
	b	.L_62ac4
.L_62a5e:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_62ac4
.L_62a64:
	bl	func_8062798
	b	.L_62ac4
.L_62a6a:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_62ac4
.L_62a70:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_62a74:
	bl	SpriteUtilThrownLeftSoft
	b	.L_62ac4
.L_62a7a:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_62a7e:
	bl	SpriteUtilThrownLeftHard
	b	.L_62ac4
.L_62a84:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_62a88:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_62ac4
.L_62a8e:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_62a92:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_62ac4
.L_62a98:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_62a9c:
	bl	SpriteUtilThrownRightSoft
	b	.L_62ac4
.L_62aa2:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_62aa6:
	bl	SpriteUtilThrownRightHard
	b	.L_62ac4
.L_62aac:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_62ab0:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_62ac4
.L_62ab6:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_62aba:
	bl	SpriteUtilThrownUpRightHard
	b	.L_62ac4
.L_62ac0:
	bl	func_80625FC
.L_62ac4:
	pop	{r0}
	bx	r0
