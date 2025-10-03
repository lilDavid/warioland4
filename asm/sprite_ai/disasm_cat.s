.include "macros.s.inc"


thumb_func_start func_80615D0
func_80615D0:
	push	{r4, lr}
	ldr	r1, .L_61644
	ldr	r3, .L_61648
	ldr	r0, .L_6164c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r3, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r4, #0
	mov	r1, #17
	strb	r1, [r0, #0]
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	strb	r2, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
	add	r0, #4
	strb	r2, [r0, #0]
	ldr	r0, .L_61650
	ldrh	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	sub	r0, #2
	add	r2, r3, #0
	cmp	r0, #4
	bls	.L_6163a
	b	.L_61730
.L_6163a:
	lsl	r0, r0, #2
	ldr	r1, .L_61654
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_61644:
	.4byte	gPersistentSpriteData
.L_61648:
	.4byte	gCurrentSprite
.L_6164c:
	.4byte	gCurrentRoom
.L_61650:
	.4byte	gRandomSeed
.L_61654:
	.4byte	.L_61658
.L_61658:
	.4byte	.L_6166c
	.4byte	.L_61688
	.4byte	.L_616b4
	.4byte	.L_616d8
	.4byte	.L_61704
.L_6166c:
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
	ldr	r0, .L_61684
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r1, #222	@ 0xde
	lsl	r1, r1, #2
	b	.L_616c8
	.align	2, 0
.L_61684:
	.4byte	sUnk_83E2AEC
.L_61688:
	mov	r0, #22
	strb	r0, [r2, #28]
	ldr	r0, .L_616b0
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r1, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r2, #10]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_61720
	.align	2, 0
.L_616b0:
	.4byte	sUnk_83E2A2C
.L_616b4:
	mov	r0, #20
	strb	r0, [r2, #28]
	ldr	r0, .L_616d4
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #1
.L_616c8:
	add	r0, r1, #0
	ldrh	r1, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r2, #10]
	b	.L_61732
	.align	2, 0
.L_616d4:
	.4byte	sUnk_83E2B8C
.L_616d8:
	mov	r0, #18
	strb	r0, [r2, #28]
	ldr	r0, .L_61700
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r1, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r2, #10]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_61732
	.align	2, 0
.L_61700:
	.4byte	sUnk_83E2B5C
.L_61704:
	mov	r0, #16
	strb	r0, [r2, #28]
	ldr	r0, .L_61728
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r2, #10]
.L_61720:
	ldr	r0, .L_6172c
	bl	m4aSongNumStart
	b	.L_61732
.L_61728:
	.4byte	sUnk_83E2A0C
.L_6172c:
	.4byte	0x1EB
.L_61730:
	strh	r4, [r3, #0]
.L_61732:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8061738
func_8061738:
	push	{r4, lr}
	ldr	r3, .L_61774
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_6176e
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r3, #28]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #0]
	ldr	r0, .L_61778
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
.L_6176e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_61774:
	.4byte	gCurrentSprite
.L_61778:
	.4byte	sUnk_83E2A6C


thumb_func_start func_806177C
func_806177C:
	push	{lr}
	ldr	r2, .L_617ac
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_617a8
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
	mov	r0, #10
	strb	r0, [r3, #0]
	ldr	r0, .L_617b0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_617b4
	bl	m4aSongNumStart
.L_617a8:
	pop	{r0}
	bx	r0
.L_617ac:
	.4byte	gCurrentSprite
.L_617b0:
	.4byte	sUnk_83E2A0C
.L_617b4:
	.4byte	0x1EB


thumb_func_start func_80617B8
func_80617B8:
	ldr	r3, .L_617e4
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_617e0
	ldrh	r0, [r3, #10]
	sub	r0, #10
	strh	r0, [r3, #10]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bhi	.L_617e2
	ldrh	r0, [r3, #0]
	mov	r1, #4
	eor	r0, r1
.L_617e0:
	strh	r0, [r3, #0]
.L_617e2:
	bx	lr
.L_617e4:
	.4byte	gCurrentSprite


thumb_func_start func_80617E8
func_80617E8:
	ldr	r3, .L_61814
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_61810
	ldrh	r0, [r3, #10]
	sub	r0, #5
	strh	r0, [r3, #10]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bhi	.L_61812
	ldrh	r0, [r3, #0]
	mov	r1, #4
	eor	r0, r1
.L_61810:
	strh	r0, [r3, #0]
.L_61812:
	bx	lr
.L_61814:
	.4byte	gCurrentSprite


thumb_func_start func_8061818
func_8061818:
	push	{lr}
	ldr	r2, .L_61848
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_61844
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #36	@ 0x24
	strb	r0, [r3, #0]
	ldr	r0, .L_6184c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_61850
	bl	m4aSongNumStart
.L_61844:
	pop	{r0}
	bx	r0
.L_61848:
	.4byte	gCurrentSprite
.L_6184c:
	.4byte	sUnk_83E2A0C
.L_61850:
	.4byte	0x1EB


thumb_func_start func_8061854
func_8061854:
	push	{r4, lr}
	ldr	r4, .L_6188c
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_61886
	mov	r0, #16
	strb	r0, [r4, #28]
	strb	r0, [r2, #0]
	ldr	r0, .L_61890
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	ldr	r0, .L_61894
	bl	m4aSongNumStart
	ldrh	r1, [r4, #0]
	ldr	r0, .L_61898
	and	r0, r1
	strh	r0, [r4, #0]
.L_61886:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6188c:
	.4byte	gCurrentSprite
.L_61890:
	.4byte	sUnk_83E2A0C
.L_61894:
	.4byte	0x1EB
.L_61898:
	.4byte	0xFFBF


thumb_func_start func_806189C
func_806189C:
	ldr	r3, .L_618c8
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_618c4
	ldrh	r0, [r3, #10]
	add	r0, #10
	strh	r0, [r3, #10]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bhi	.L_618c6
	ldrh	r0, [r3, #0]
	mov	r1, #4
	eor	r0, r1
.L_618c4:
	strh	r0, [r3, #0]
.L_618c6:
	bx	lr
.L_618c8:
	.4byte	gCurrentSprite


thumb_func_start SpriteBossCorridorCat
SpriteBossCorridorCat:
	push	{lr}
	ldr	r1, .L_618ec
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #20
	beq	.L_61936
	cmp	r0, #20
	bgt	.L_618fa
	cmp	r0, #1
	beq	.L_61918
	cmp	r0, #1
	bgt	.L_618f0
	cmp	r0, #0
	beq	.L_61912
	b	.L_61946
.L_618ec:
	.4byte	gCurrentSprite
.L_618f0:
	cmp	r0, #16
	beq	.L_61942
	cmp	r0, #18
	beq	.L_6193c
	b	.L_61946
.L_618fa:
	cmp	r0, #110	@ 0x6e
	beq	.L_6191e
	cmp	r0, #110	@ 0x6e
	bgt	.L_61908
	cmp	r0, #22
	beq	.L_61930
	b	.L_61946
.L_61908:
	cmp	r0, #111	@ 0x6f
	beq	.L_61924
	cmp	r0, #112	@ 0x70
	beq	.L_6192a
	b	.L_61946
.L_61912:
	bl	func_80615D0
	b	.L_61946
.L_61918:
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_61946
.L_6191e:
	bl	func_8061738
	b	.L_61946
.L_61924:
	bl	func_806177C
	b	.L_61946
.L_6192a:
	bl	func_80617B8
	b	.L_61946
.L_61930:
	bl	func_80617E8
	b	.L_61946
.L_61936:
	bl	func_8061818
	b	.L_61946
.L_6193c:
	bl	func_8061854
	b	.L_61946
.L_61942:
	bl	func_806189C
.L_61946:
	pop	{r0}
	bx	r0
	.align	2, 0
