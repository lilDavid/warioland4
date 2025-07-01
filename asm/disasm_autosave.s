.include "macros.s.inc"


thumb_func_start Autosave_StageClear
Autosave_StageClear:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_8138c
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r1, .L_81390
	mov	r9, r1
	ldrb	r1, [r1, #0]
	ldr	r6, .L_81394
	ldr	r5, .L_81398
	cmp	r1, #0
	beq	.L_811d8
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #1
	orr	r0, r2
	strb	r0, [r1, #0]
.L_811d8:
	ldr	r2, .L_813a0
	mov	r8, r2
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_811fc
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #2
	orr	r0, r2
	strb	r0, [r1, #0]
.L_811fc:
	ldr	r7, .L_813a4
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_8121e
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #4
	orr	r0, r2
	strb	r0, [r1, #0]
.L_8121e:
	ldr	r4, .L_813a8
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_81240
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #8
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81240:
	ldr	r0, .L_813ac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81262
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #16
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81262:
	ldr	r0, .L_813b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81284
	ldr	r3, .L_8139c
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #32
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81284:
	mov	r1, r9
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	beq	.L_812ae
	mov	r2, r8
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	beq	.L_812ae
	ldrb	r0, [r7, #0]
	cmp	r0, #2
	beq	.L_812ae
	ldrb	r0, [r4, #0]
	ldr	r1, .L_813b4
	mov	sl, r1
	ldr	r2, .L_813b8
	mov	r8, r2
	ldr	r7, .L_813bc
	ldr	r1, .L_813c0
	mov	r9, r1
	cmp	r0, #2
	bne	.L_8131a
.L_812ae:
	mov	r4, #0
	ldr	r2, .L_8139c
	mov	ip, r2
	ldr	r0, .L_813b4
	mov	sl, r0
	ldr	r1, .L_813b8
	mov	r8, r1
	ldr	r7, .L_813bc
	ldr	r2, .L_813c0
	mov	r9, r2
	ldr	r0, .L_81398
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	mov	r1, ip
	add	r2, r0, r1
	mov	r3, #3
.L_812d2:
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #31
	cmp	r0, #0
	beq	.L_812ee
	lsl	r0, r1, #30
	cmp	r0, #0
	bge	.L_812ee
	lsl	r0, r1, #29
	cmp	r0, #0
	bge	.L_812ee
	lsl	r0, r1, #28
	cmp	r0, #0
	bge	.L_812ee
	add	r4, #1
.L_812ee:
	add	r2, #4
	sub	r3, #1
	cmp	r3, #0
	bge	.L_812d2
	cmp	r4, #4
	beq	.L_81308
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_81304
	cmp	r0, #5
	bne	.L_8131a
.L_81304:
	cmp	r4, #1
	bne	.L_8131a
.L_81308:
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, ip
	ldrb	r1, [r0, #16]
	mov	r2, #8
	orr	r1, r2
	strb	r1, [r0, #16]
.L_8131a:
	mov	r4, r8
	ldr	r3, [r4, #0]
	mov	r2, sl
	str	r3, [r2, #0]
	ldrb	r1, [r7, #0]
	ldrb	r0, [r7, #1]
	add	r1, r1, r0
	cmp	r1, #8
	ble	.L_8132e
	mov	r1, #8
.L_8132e:
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldr	r2, .L_813c4
	ldr	r1, [r2, #0]
	add	r2, r1, r0
	add	r1, r3, r2
	str	r1, [r4, #0]
	ldr	r0, .L_813c8
	cmp	r2, r0
	ble	.L_81344
	add	r2, r0, #0
.L_81344:
	cmp	r1, r0
	ble	.L_8134c
	mov	r1, r8
	str	r0, [r1, #0]
.L_8134c:
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r9
	ldr	r0, [r0, #0]
	cmp	r0, r2
	bge	.L_81372
	mov	r0, #1
	ldr	r1, .L_8138c
	strb	r0, [r1, #0]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r9
	str	r2, [r0, #0]
.L_81372:
	bl	func_8073880
	ldr	r1, .L_813cc
	mov	r0, #1
	strb	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8138c:
	.4byte	gUnk_3003D64
.L_81390:
	.4byte	gCollectedNEJewelPiece
.L_81394:
	.4byte	gCurrentStageNumber
.L_81398:
	.4byte	gCurrentPassage
.L_8139c:
	.4byte	gCurrentCollection
.L_813a0:
	.4byte	gCollectedSEJewelPiece
.L_813a4:
	.4byte	gCollectedSWJewelPiece
.L_813a8:
	.4byte	gCollectedNWJewelPiece
.L_813ac:
	.4byte	gCollectedCD
.L_813b0:
	.4byte	gCollectedKeyzer
.L_813b4:
	.4byte	gUnk_3003D60
.L_813b8:
	.4byte	gUnk_3000BF4
.L_813bc:
	.4byte	gWarioHearts
.L_813c0:
	.4byte	gUnk_3000B10
.L_813c4:
	.4byte	gUnk_3000BF8
.L_813c8:
	.4byte	0x0001869f
.L_813cc:
	.4byte	gUnk_3000013


thumb_func_start Autosave_BossClear
Autosave_BossClear:
	push	{r4, r5, lr}
	ldr	r0, .L_814b8
	ldrb	r0, [r0, #0]
	ldr	r3, .L_814bc
	ldr	r4, .L_814c0
	ldr	r5, .L_814c4
	cmp	r0, #0
	beq	.L_813f8
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #1
	orr	r0, r2
	strb	r0, [r1, #0]
.L_813f8:
	ldr	r0, .L_814c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81418
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #2
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81418:
	ldr	r0, .L_814cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81438
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #4
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81438:
	ldr	r0, .L_814d0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81458
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	mov	r2, #32
	orr	r0, r2
	strb	r0, [r1, #0]
.L_81458:
	ldr	r1, .L_814d4
	ldrb	r0, [r5, #0]
	strb	r0, [r1, #0]
	mov	r0, #6
	strb	r0, [r4, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r2, #32
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_814a0
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	ldrb	r1, [r0, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_814a0
	add	r0, r3, #0
	add	r0, #88	@ 0x58
	ldrb	r1, [r0, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_814a0
	add	r0, r3, #0
	add	r0, #112	@ 0x70
	ldrb	r1, [r0, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_814a0
	mov	r0, #5
	strb	r0, [r5, #0]
.L_814a0:
	bl	func_8073880
	ldr	r1, .L_814d8
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_814d0
	mov	r0, #0
	strb	r0, [r1, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_814b8:
	.4byte	gCollectedNEJewelPiece
.L_814bc:
	.4byte	gCurrentCollection
.L_814c0:
	.4byte	gCurrentStageNumber
.L_814c4:
	.4byte	gCurrentPassage
.L_814c8:
	.4byte	gCollectedSEJewelPiece
.L_814cc:
	.4byte	gCollectedSWJewelPiece
.L_814d0:
	.4byte	gCollectedKeyzer
.L_814d4:
	.4byte	gUnk_3000010
.L_814d8:
	.4byte	gUnk_3000013


thumb_func_start Autosave_Defeat
Autosave_Defeat:
	push	{lr}
	bl	func_8073880
	ldr	r1, .L_814ec
	mov	r0, #1
	strb	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_814ec:
	.4byte	gUnk_3000013


thumb_func_start Autosave_FinalBoss
Autosave_FinalBoss:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_815e8
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r3, #0
	ldr	r0, .L_815ec
	mov	r9, r0
	ldr	r1, .L_815f0
	mov	sl, r1
	ldr	r6, .L_815f4
	mov	r0, #33	@ 0x21
	neg	r0, r0
	mov	r8, r0
	mov	r1, #2
	neg	r1, r1
	mov	ip, r1
	mov	r7, #3
	neg	r7, r7
	mov	r2, r9
	add	r2, #40	@ 0x28
	mov	r5, #5
	neg	r5, r5
	mov	r4, #9
	neg	r4, r4
.L_81528:
	ldrb	r1, [r2, #0]
	mov	r0, r8
	and	r0, r1
	mov	r1, ip
	and	r0, r1
	and	r0, r7
	and	r0, r5
	and	r0, r4
	strb	r0, [r2, #0]
	add	r2, #24
	add	r3, #1
	cmp	r3, #4
	ble	.L_81528
	mov	r3, sl
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r6, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r9
	ldrb	r0, [r1, #0]
	mov	r2, #16
	orr	r0, r2
	strb	r0, [r1, #0]
	ldrb	r4, [r6, #0]
	ldr	r0, .L_815f8
	strb	r4, [r0, #0]
	mov	r0, #6
	strb	r0, [r6, #0]
	strb	r0, [r3, #0]
	ldr	r1, .L_815fc
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81600
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81604
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81608
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_8160c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81610
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81614
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81618
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_8161c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81620
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81624
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r0, .L_81628
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_81644
	ldr	r2, .L_8162c
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_81638
	ldr	r0, .L_81630
	ldrb	r1, [r0, #0]
	cmp	r1, #1
	bne	.L_81638
	mov	r0, #2
	ldr	r3, .L_81634
	strb	r0, [r3, #0]
	strb	r1, [r2, #0]
	bl	func_8072CA0
	b	.L_8164a
	.align	2, 0
.L_815e8:
	.4byte	gDisableSoftReset
.L_815ec:
	.4byte	gCurrentCollection
.L_815f0:
	.4byte	gCurrentStageNumber
.L_815f4:
	.4byte	gCurrentPassage
.L_815f8:
	.4byte	gUnk_3000010
.L_815fc:
	.4byte	gCollectedNEJewelPiece
.L_81600:
	.4byte	gCollectedSEJewelPiece
.L_81604:
	.4byte	gCollectedSWJewelPiece
.L_81608:
	.4byte	gCollectedNWJewelPiece
.L_8160c:
	.4byte	gHasGoldenDivaChest5
.L_81610:
	.4byte	gHasGoldenDivaChest6
.L_81614:
	.4byte	gHasGoldenDivaChest7
.L_81618:
	.4byte	gHasGoldenDivaChest8
.L_8161c:
	.4byte	gHasGoldenDivaChest9
.L_81620:
	.4byte	gHasGoldenDivaChest10
.L_81624:
	.4byte	gHasGoldenDivaChest11
.L_81628:
	.4byte	gHasGoldenDivaChest12
.L_8162c:
	.4byte	gClearedHardDifficulty
.L_81630:
	.4byte	gUnk_3000017
.L_81634:
	.4byte	gUnk_3000011
.L_81638:
	mov	r0, #1
	ldr	r1, .L_81640
	strb	r0, [r1, #0]
	b	.L_8164a
.L_81640:
	.4byte	gUnk_3000011
.L_81644:
	mov	r0, #0
	ldr	r3, .L_8166c
	strb	r0, [r3, #0]
.L_8164a:
	bl	func_8073880
	ldr	r1, .L_81670
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_81674
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_81678
	strb	r4, [r0, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8166c:
	.4byte	gUnk_3000011
.L_81670:
	.4byte	gUnk_3000013
.L_81674:
	.4byte	gCollectedKeyzer
.L_81678:
	.4byte	gCurrentPassage
