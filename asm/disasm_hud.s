.include "macros.s.inc"


thumb_func_start func_80743BC
func_80743BC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #0
	ldr	r1, .L_743d8
	ldrb	r0, [r1, #0]
	sub	r0, #1
	add	r4, r1, #0
	cmp	r0, #9
	bls	.L_743ce
	b	.L_746b2
.L_743ce:
	lsl	r0, r0, #2
	ldr	r1, .L_743dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_743d8:
	.4byte	gUnk_300001A
.L_743dc:
	.4byte	.L_743e0
.L_743e0:
	.4byte	.L_74408
	.4byte	.L_74484
	.4byte	.L_744b8
	.4byte	.L_7451c
	.4byte	.L_74540
	.4byte	.L_7459c
	.4byte	.L_74614
	.4byte	.L_74664
	.4byte	.L_74690
	.4byte	.L_746a8
.L_74408:
	ldr	r4, .L_7446c
	ldr	r0, [r4, #0]
	ldr	r5, .L_74470
	ldr	r6, .L_74474
	ldrh	r2, [r6, #42]	@ 0x2a
	lsr	r2, r2, #2
	add	r1, r5, #0
	bl	func_8002D58
	ldr	r0, [r4, #12]
	ldrh	r2, [r6, #42]	@ 0x2a
	lsr	r2, r2, #2
	add	r1, r5, #0
	bl	func_8002D58
	ldr	r0, [r4, #24]
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8002D58
	ldr	r0, [r4, #36]	@ 0x24
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8002D58
	ldr	r0, [r4, #48]	@ 0x30
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8002D58
	ldr	r0, [r4, #60]	@ 0x3c
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8002D58
	ldr	r0, [r4, #72]	@ 0x48
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8002D58
	ldr	r1, .L_74478
	ldr	r2, .L_7447c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r3, .L_74480
	add	r0, r3, #0
	strh	r0, [r1, #0]
	b	.L_7463c
	.align	2, 0
.L_7446c:
	.4byte	sUnk_8097FC8
.L_74470:
	.4byte	0x0000ffff
.L_74474:
	.4byte	gUnk_3000074
.L_74478:
	.4byte	0x04000042
.L_7447c:
	.4byte	0x00007878
.L_74480:
	.4byte	0x00005050
.L_74484:
	ldr	r3, .L_744a4
	mov	r0, #0
	strh	r0, [r3, #0]
	ldr	r2, .L_744a8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744ac
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_744b0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744b4
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	b	.L_7469c
.L_744a4:
	.4byte	0x04000208
.L_744a8:
	.4byte	0x04000004
.L_744ac:
	.4byte	0x0000ffef
.L_744b0:
	.4byte	0x04000200
.L_744b4:
	.4byte	0x0000fffd
.L_744b8:
	ldr	r2, .L_744f8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744fc
	and	r0, r1
	mov	r3, #224	@ 0xe0
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #0
	bl	func_806BF04
	ldr	r1, .L_74500
	ldr	r0, .L_74504
	str	r0, [r1, #0]
	ldr	r0, .L_74508
	str	r0, [r1, #4]
	ldr	r0, .L_7450c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_74510
	ldrb	r0, [r2, #0]
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_74514
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_74518
	b	.L_74534
	.align	2, 0
.L_744f8:
	.4byte	0x0400000e
.L_744fc:
	.4byte	0x0000e0ff
.L_74500:
	.4byte	0x040000d4
.L_74504:
	.4byte	0x0201f040
.L_74508:
	.4byte	0x06003800
.L_7450c:
	.4byte	0x80000400
.L_74510:
	.4byte	0x0400004a
.L_74514:
	.4byte	gUnk_300001A
.L_74518:
	.4byte	gUnk_300188E
.L_7451c:
	ldr	r1, .L_7453c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #29
	bhi	.L_7452e
	b	.L_746b2
.L_7452e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_74534:
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_746b2
	.align	2, 0
.L_7453c:
	.4byte	gUnk_300188E
.L_74540:
	ldr	r3, .L_74560
	ldrh	r0, [r3, #0]
	add	r2, r0, #1
	strh	r2, [r3, #0]
	ldr	r0, .L_74564
	ldrh	r1, [r0, #0]
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_74568
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #0
	strh	r0, [r3, #0]
	b	.L_746b2
.L_74560:
	.4byte	gUnk_300188E
.L_74564:
	.4byte	gButtonsPressed
.L_74568:
	mov	r0, #31
	and	r0, r2
	cmp	r0, #0
	beq	.L_74572
	b	.L_746b2
.L_74572:
	mov	r0, #32
	and	r2, r0
	cmp	r2, #0
	beq	.L_7458c
	ldr	r2, .L_74588
	ldrb	r1, [r2, #0]
	mov	r0, #55	@ 0x37
	and	r0, r1
	strb	r0, [r2, #0]
	b	.L_746b2
	.align	2, 0
.L_74588:
	.4byte	0x0400004a
.L_7458c:
	ldr	r0, .L_74598
	ldrb	r1, [r0, #0]
	mov	r2, #8
	orr	r1, r2
	strb	r1, [r0, #0]
	b	.L_746b2
.L_74598:
	.4byte	0x0400004a
.L_7459c:
	ldr	r0, .L_74600
	bl	Sound_Play
	ldr	r2, .L_74604
	ldrb	r1, [r2, #0]
	mov	r0, #55	@ 0x37
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r4, .L_74608
	ldr	r0, [r4, #0]
	ldr	r5, .L_7460c
	ldr	r6, .L_74610
	ldrh	r2, [r6, #42]	@ 0x2a
	add	r1, r5, #0
	bl	func_8002D58
	ldr	r0, [r4, #12]
	ldrh	r2, [r6, #42]	@ 0x2a
	add	r1, r5, #0
	bl	func_8002D58
	ldr	r0, [r4, #24]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_8002D58
	ldr	r0, [r4, #36]	@ 0x24
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_8002D58
	ldr	r0, [r4, #48]	@ 0x30
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_8002D58
	ldr	r0, [r4, #60]	@ 0x3c
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_8002D58
	ldr	r0, [r4, #72]	@ 0x48
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_8002D58
	b	.L_7463c
	.align	2, 0
.L_74600:
	.4byte	0x00000123
.L_74604:
	.4byte	0x0400004a
.L_74608:
	.4byte	sUnk_8097FC8
.L_7460c:
	.4byte	0x0000ffff
.L_74610:
	.4byte	gUnk_3000074
.L_74614:
	ldr	r2, .L_74648
	ldrh	r1, [r2, #0]
	ldr	r0, .L_7464c
	and	r0, r1
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	bl	func_806BF04
	ldr	r1, .L_74650
	ldr	r0, .L_74654
	str	r0, [r1, #0]
	ldr	r0, .L_74658
	str	r0, [r1, #4]
	ldr	r0, .L_7465c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_7463c:
	ldr	r1, .L_74660
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_746b2
	.align	2, 0
.L_74648:
	.4byte	0x0400000e
.L_7464c:
	.4byte	0x0000e0ff
.L_74650:
	.4byte	0x040000d4
.L_74654:
	.4byte	0x0201f840
.L_74658:
	.4byte	0x06003800
.L_7465c:
	.4byte	0x80000400
.L_74660:
	.4byte	gUnk_300001A
.L_74664:
	ldr	r0, .L_74684
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7469c
	ldr	r2, .L_74688
	ldrh	r0, [r2, #0]
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_7468c
	ldrh	r0, [r2, #0]
	mov	r1, #16
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_7469c
	.align	2, 0
.L_74684:
	.4byte	gUnk_3000037
.L_74688:
	.4byte	0x04000200
.L_7468c:
	.4byte	0x04000004
.L_74690:
	ldr	r1, .L_746a4
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
.L_7469c:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_746b2
.L_746a4:
	.4byte	0x04000042
.L_746a8:
	ldr	r1, .L_746bc
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r0, [r4, #0]
	mov	r7, #1
.L_746b2:
	add	r0, r7, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_746bc:
	.4byte	gUnk_300188E


thumb_func_start func_80746C0
func_80746C0:
	ldr	r1, .L_746fc
	ldr	r0, .L_74700
.L_746c4:
	str	r0, [r1, #0]
	ldr	r0, .L_74704
	str	r0, [r1, #4]
	ldr	r0, .L_74708
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_7470c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_747c4
	ldr	r0, .L_74710
	str	r0, [r1, #0]
	ldr	r0, .L_74714
	str	r0, [r1, #4]
	ldr	r0, .L_74718
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_7471c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bhi	.L_747c4
	lsl	r0, r0, #2
	ldr	r1, .L_74720
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_746fc:
	.4byte	0x040000d4
.L_74700:
	.4byte	sCommonSpritesGfx
.L_74704:
	.4byte	0x06011000
.L_74708:
	.4byte	0x80001800
.L_7470c:
	.4byte	gCurrentStageNumber
.L_74710:
	.4byte	sBossStageSpritesGfx
.L_74714:
	.4byte	0x06012400
.L_74718:
	.4byte	0x80000600
.L_7471c:
	.4byte	gUnk_3000C38
.L_74720:
	.4byte	.L_74724
.L_74724:
	.4byte	.L_74744
	.4byte	.L_74754
	.4byte	.L_74764
	.4byte	.L_74774
	.4byte	.L_74784
	.4byte	.L_74794
	.4byte	.L_747a4
	.4byte	.L_747b4
.L_74744:
	ldr	r1, .L_7474c
	ldr	r0, .L_74750
	b	.L_747b8
	.align	2, 0
.L_7474c:
	.4byte	0x040000d4
.L_74750:
	.4byte	sAppleBombGfx
.L_74754:
	ldr	r1, .L_7475c
	ldr	r0, .L_74760
	b	.L_747b8
	.align	2, 0
.L_7475c:
	.4byte	0x040000d4
.L_74760:
	.4byte	sBlastCannonGfx
.L_74764:
	ldr	r1, .L_7476c
	ldr	r0, .L_74770
	b	.L_747b8
	.align	2, 0
.L_7476c:
	.4byte	0x040000d4
.L_74770:
	.4byte	sVizormanGfx
.L_74774:
	ldr	r1, .L_7477c
	ldr	r0, .L_74780
	b	.L_747b8
	.align	2, 0
.L_7477c:
	.4byte	0x040000d4
.L_74780:
	.4byte	sBugleGfx
.L_74784:
	ldr	r1, .L_7478c
	ldr	r0, .L_74790
	b	.L_747b8
	.align	2, 0
.L_7478c:
	.4byte	0x040000d4
.L_74790:
	.4byte	sBlackDogGfx
.L_74794:
	ldr	r1, .L_7479c
	ldr	r0, .L_747a0
	b	.L_747b8
	.align	2, 0
.L_7479c:
	.4byte	0x040000d4
.L_747a0:
	.4byte	sLargeLipsGfx
.L_747a4:
	ldr	r1, .L_747ac
	ldr	r0, .L_747b0
	b	.L_747b8
	.align	2, 0
.L_747ac:
	.4byte	0x040000d4
.L_747b0:
	.4byte	sBigFistGfx
.L_747b4:
	ldr	r1, .L_747c8
	ldr	r0, .L_747cc
.L_747b8:
	str	r0, [r1, #0]
	ldr	r0, .L_747d0
	str	r0, [r1, #4]
	ldr	r0, .L_747d4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_747c4:
	bx	lr
	.align	2, 0
.L_747c8:
	.4byte	0x040000d4
.L_747cc:
	.4byte	sBlackDragonGfx
.L_747d0:
	.4byte	0x06013000
.L_747d4:
	.4byte	0x80000800


thumb_func_start func_80747D8
func_80747D8:
	ldr	r0, .L_747f4
	ldrb	r0, [r0, #29]
	ldr	r1, .L_747f8
	ldr	r2, .L_747fc
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_74800
	str	r0, [r1, #4]
	ldr	r0, .L_74804
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bx	lr
.L_747f4:
	.4byte	gCurrentSprite
.L_747f8:
	.4byte	0x040000d4
.L_747fc:
	.4byte	sBossLifeMeterGfx
.L_74800:
	.4byte	0x06012c00
.L_74804:
	.4byte	0x800000a0


thumb_func_start func_8074808
func_8074808:
	push	{r4, lr}
	mov	r4, #0
	ldr	r2, .L_74828
	strb	r4, [r2, #2]
	ldrb	r3, [r2, #1]
	add	r1, r3, #0
	cmp	r1, #0
	beq	.L_74868
	ldrb	r0, [r2, #3]
	cmp	r0, #0
	bne	.L_74864
	cmp	r1, #128	@ 0x80
	bne	.L_7482c
	strb	r4, [r2, #0]
	strb	r4, [r2, #1]
	b	.L_74868
.L_74828:
	.4byte	gHeartGauge
.L_7482c:
	cmp	r1, #255	@ 0xff
	bne	.L_74834
	mov	r4, #8
	b	.L_74868
.L_74834:
	mov	r0, #1
	strb	r0, [r2, #3]
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	ldrb	r4, [r2, #0]
	sub	r0, r3, #1
	strb	r0, [r2, #1]
	ldr	r1, .L_74860
	ldrh	r0, [r1, #20]
	sub	r0, #40	@ 0x28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r1, #18]
	sub	r1, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, #63	@ 0x3f
	bl	Sprite_SpawnSecondary
	b	.L_74868
	.align	2, 0
.L_74860:
	.4byte	gWarioData
.L_74864:
	sub	r0, #1
	strb	r0, [r2, #3]
.L_74868:
	ldr	r2, .L_74894
	ldr	r1, .L_74898
	ldr	r3, .L_7489c
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	cmp	r4, #8
	bne	.L_748c8
	ldr	r2, .L_748a0
	ldrb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r0, r1
	cmp	r0, #7
	ble	.L_748a4
	mov	r0, #255	@ 0xff
	strb	r0, [r3, #1]
	mov	r0, #0
	strb	r0, [r3, #3]
	b	.L_748c8
	.align	2, 0
.L_74894:
	.4byte	gUnk_3000C20
.L_74898:
	.4byte	sHeartMeterGfx
.L_7489c:
	.4byte	gHeartGauge
.L_748a0:
	.4byte	gWarioHearts
.L_748a4:
	mov	r0, #128	@ 0x80
	strb	r0, [r3, #1]
	strb	r4, [r3, #3]
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	ldrb	r1, [r2, #0]
	ldrb	r0, [r2, #1]
	add	r0, r1, r0
	cmp	r0, #8
	ble	.L_748c0
	mov	r0, #8
	sub	r0, r0, r1
	strb	r0, [r2, #1]
.L_748c0:
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	strb	r0, [r2, #2]
	strb	r4, [r2, #3]
.L_748c8:
	ldr	r1, .L_74900
	ldrb	r2, [r1, #1]
	cmp	r2, #0
	beq	.L_7490c
	ldrb	r0, [r1, #3]
	cmp	r0, #0
	bne	.L_74908
	mov	r0, #8
	strb	r0, [r1, #3]
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	sub	r0, r2, #1
	strb	r0, [r1, #1]
	ldr	r1, .L_74904
	ldrh	r0, [r1, #20]
	sub	r0, #72	@ 0x48
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r1, #18]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, #62	@ 0x3e
	bl	Sprite_SpawnSecondary
	b	.L_7490c
	.align	2, 0
.L_74900:
	.4byte	gWarioHearts
.L_74904:
	.4byte	gWarioData
.L_74908:
	sub	r0, #1
	strb	r0, [r1, #3]
.L_7490c:
	ldr	r3, .L_74954
	ldrb	r0, [r3, #2]
	cmp	r0, #0
	beq	.L_74918
	sub	r0, #1
	strb	r0, [r3, #2]
.L_74918:
	ldrb	r0, [r3, #0]
	cmp	r0, #1
	bne	.L_7496c
	ldr	r0, .L_74958
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_7496c
	ldr	r0, .L_7495c
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_7496c
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #32
	bne	.L_7494a
	ldr	r0, .L_74960
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7494a
	mov	r0, #228	@ 0xe4
	lsl	r0, r0, #1
	bl	Sound_Play
.L_7494a:
	ldr	r0, .L_74964
	ldr	r1, .L_74968
	ldr	r1, [r1, #36]	@ 0x24
	str	r1, [r0, #0]
	b	.L_7497a
.L_74954:
	.4byte	gWarioHearts
.L_74958:
	.4byte	gUnk_3000047
.L_7495c:
	.4byte	gUnk_3000C41
.L_74960:
	.4byte	gWarioPauseTimer
.L_74964:
	.4byte	gUnk_3000C1C
.L_74968:
	.4byte	sHeartGaugeGfx
.L_7496c:
	ldr	r2, .L_74980
	ldr	r1, .L_74984
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
.L_7497a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_74980:
	.4byte	gUnk_3000C1C
.L_74984:
	.4byte	sHeartGaugeGfx


thumb_func_start func_8074988
func_8074988:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, .L_74ad0
	mov	r0, #0
	mov	ip, r0
	ldr	r0, .L_74ad4
	ldrb	r1, [r0, #0]
	mov	sl, r7
	cmp	r1, #3
	bhi	.L_749a4
	b	.L_74ae8
.L_749a4:
	ldr	r0, .L_74ad8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_749ae
	b	.L_74bdc
.L_749ae:
	ldr	r0, .L_74adc
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_749b8
	b	.L_74bdc
.L_749b8:
	mov	r1, ip
	strh	r1, [r7, #0]
	add	r7, #2
	mov	r0, #6
	mov	r2, sl
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r8, r1
	mov	r2, r8
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #1]
	mov	r2, ip
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r1, [r1, #2]
	ldr	r5, .L_74ae0
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #161	@ 0xa1
	orr	r0, r1
	mov	r1, sl
	strh	r0, [r1, #2]
	ldrb	r1, [r1, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r2, r8
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #3]
	mov	r2, ip
	strh	r2, [r7, #0]
	ldrh	r1, [r1, #4]
	ldr	r4, .L_74ae4
	add	r0, r4, #0
	and	r0, r1
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #1
	add	r1, r2, #0
	orr	r0, r1
	mov	r1, sl
	strh	r0, [r1, #4]
	ldrb	r1, [r1, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r2, #224	@ 0xe0
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r2, sl
	add	r2, #8
	mov	r0, #6
	strb	r0, [r1, #8]
	ldrb	r1, [r2, #1]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #193	@ 0xc1
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, #0
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #178	@ 0xb2
	lsl	r1, r1, #1
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #224	@ 0xe0
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, sl
	add	r1, #16
	mov	r2, #6
	mov	r0, sl
	strb	r2, [r0, #16]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, r8
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #225	@ 0xe1
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	strb	r6, [r1, #3]
	mov	r2, #0
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r2, #180	@ 0xb4
	lsl	r2, r2, #1
	add	r0, r2, #0
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r0, #224	@ 0xe0
	orr	r3, r0
	strb	r3, [r1, #5]
	b	.L_74bd6
	.align	2, 0
.L_74ad0:
	.4byte	gUnk_3001444
.L_74ad4:
	.4byte	gCurrentStageNumber
.L_74ad8:
	.4byte	gCurrentRoom
.L_74adc:
	.4byte	gUnk_3000047
.L_74ae0:
	.4byte	0xfffffe00
.L_74ae4:
	.4byte	0xfffffc00
.L_74ae8:
	ldr	r0, .L_74cac
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bhi	.L_74bdc
	mov	r2, ip
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, #6
	mov	r0, sl
	strb	r1, [r0, #0]
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r1, [r0, #2]
	ldr	r4, .L_74cb0
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #179	@ 0xb3
	orr	r0, r1
	mov	r2, sl
	strh	r0, [r2, #2]
	mov	r0, ip
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r6, .L_74cb4
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #203	@ 0xcb
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r5, #15
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #96	@ 0x60
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r1, #0
	strh	r1, [r7, #0]
	add	r7, #2
	add	r2, #8
	mov	r1, #6
	mov	r0, sl
	strb	r1, [r0, #8]
	ldrb	r1, [r2, #1]
	mov	r3, #63	@ 0x3f
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r8, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #188	@ 0xbc
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	strb	r0, [r2, #3]
	mov	r1, #0
	strh	r1, [r7, #0]
	ldrh	r1, [r2, #4]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #132	@ 0x84
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, sl
	add	r1, #16
	mov	r2, #6
	mov	r0, sl
	strb	r2, [r0, #16]
	ldrb	r2, [r1, #1]
	add	r0, r3, #0
	and	r0, r2
	mov	r2, r8
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r4, r0
	mov	r0, #204	@ 0xcc
	orr	r4, r0
	strh	r4, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r3, r0
	orr	r3, r2
	strb	r3, [r1, #3]
	mov	r2, #0
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r6, r0
	mov	r0, #134	@ 0x86
	orr	r6, r0
	strh	r6, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r5, r0
	mov	r0, r8
	orr	r5, r0
	strb	r5, [r1, #5]
.L_74bd6:
	add	r7, #4
	mov	r1, #3
	mov	ip, r1
.L_74bdc:
	ldr	r2, .L_74cb8
	ldrb	r0, [r2, #0]
	cmp	r0, #3
	bls	.L_74cc0
	ldr	r0, .L_74cbc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_74bee
	b	.L_74d7a
.L_74bee:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r0, ip
	lsl	r2, r0, #3
	add	r2, sl
	mov	r1, #0
	mov	r8, r1
	mov	r0, #6
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_74cb0
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #9
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r4, .L_74cb4
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #112	@ 0x70
	mov	r9, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #1
	add	ip, r2
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, ip
	lsl	r1, r2, #3
	add	r1, sl
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, #64	@ 0x40
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #41	@ 0x29
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	orr	r6, r2
	strb	r6, [r1, #3]
	mov	r2, r8
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r0, #148	@ 0x94
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r0, r9
	orr	r3, r0
	strb	r3, [r1, #5]
	mov	r1, #1
	add	ip, r1
	b	.L_74d7a
.L_74cac:
	.4byte	gUnk_3000047
.L_74cb0:
	.4byte	0xfffffe00
.L_74cb4:
	.4byte	0xfffffc00
.L_74cb8:
	.4byte	gCurrentStageNumber
.L_74cbc:
	.4byte	gCurrentRoom
.L_74cc0:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r0, ip
	lsl	r2, r0, #3
	add	r2, sl
	mov	r1, #0
	mov	r8, r1
	mov	r0, #6
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_74d90
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #9
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r4, .L_74d94
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #112	@ 0x70
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #1
	add	ip, r2
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, ip
	lsl	r1, r2, #3
	add	r1, sl
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, #64	@ 0x40
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #41	@ 0x29
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	mov	r2, #128	@ 0x80
	orr	r6, r2
	strb	r6, [r1, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r0, #148	@ 0x94
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r2, #112	@ 0x70
	orr	r3, r2
	strb	r3, [r1, #5]
	mov	r0, #1
	add	ip, r0
.L_74d7a:
	ldr	r0, .L_74d98
	mov	r1, ip
	strb	r1, [r0, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74d90:
	.4byte	0xfffffe00
.L_74d94:
	.4byte	0xfffffc00
.L_74d98:
	.4byte	gUnk_300184A


thumb_func_start func_8074D9C
func_8074D9C:
	push	{r4, lr}
	ldr	r0, .L_74db4
	ldrb	r3, [r0, #3]
	add	r2, r0, #0
	cmp	r3, #5
	bls	.L_74daa
	b	.L_74ef2
.L_74daa:
	lsl	r0, r3, #2
	ldr	r1, .L_74db8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_74db4:
	.4byte	gCurrentSecondarySprite
.L_74db8:
	.4byte	.L_74dbc
.L_74dbc:
	.4byte	.L_74dd4
	.4byte	.L_74de6
	.4byte	.L_74e38
	.4byte	.L_74e74
	.4byte	.L_74eaa
	.4byte	.L_74ef2
.L_74dd4:
	ldrb	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strb	r0, [r2, #0]
	mov	r0, #8
	strb	r0, [r2, #4]
	mov	r0, #1
	strb	r0, [r2, #3]
	b	.L_74ef2
.L_74de6:
	ldrb	r0, [r2, #1]
	cmp	r0, #0
	bne	.L_74dee
	b	.L_74ef2
.L_74dee:
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	ldrh	r0, [r2, #6]
	add	r3, r0, #1
	strh	r3, [r2, #6]
	mov	r1, #2
	strb	r1, [r2, #3]
	mov	r4, #4
	strb	r4, [r2, #4]
	sub	r0, #6
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #67	@ 0x43
	bls	.L_74ef2
	ldrh	r1, [r2, #10]
	add	r0, r1, #0
	add	r0, #64	@ 0x40
	strh	r0, [r2, #10]
	lsl	r0, r3, #16
	lsr	r0, r0, #16
	cmp	r0, #79	@ 0x4f
	bne	.L_74e2c
	add	r0, r1, #0
	add	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	strb	r4, [r2, #3]
	b	.L_74ef2
.L_74e2c:
	cmp	r0, #1
	bne	.L_74ef2
	add	r0, r1, #0
	add	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	b	.L_74ef2
.L_74e38:
	ldrh	r0, [r2, #6]
	sub	r0, #7
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #67	@ 0x43
	bhi	.L_74e4c
	ldr	r1, .L_74e70
	ldrh	r0, [r1, #0]
	add	r0, #16
	strh	r0, [r1, #0]
.L_74e4c:
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	mov	r1, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	mov	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #8
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #1]
	sub	r0, #1
	strb	r0, [r2, #1]
	and	r0, r1
	cmp	r0, #0
	bne	.L_74ece
	b	.L_74ee0
.L_74e70:
	.4byte	gUnk_300003A
.L_74e74:
	ldrb	r0, [r2, #1]
	cmp	r0, #0
	beq	.L_74ef2
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	ldrh	r0, [r2, #6]
	sub	r0, #1
	strh	r0, [r2, #6]
	mov	r4, #4
	strb	r4, [r2, #3]
	strb	r4, [r2, #4]
	ldrh	r3, [r2, #10]
	add	r1, r3, #0
	sub	r1, #64	@ 0x40
	strh	r1, [r2, #10]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #78	@ 0x4e
	bne	.L_74ef2
	add	r0, r3, #0
	sub	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	b .L_74ef2
.L_74eaa:
	add r1, r2, #0
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	mov	r3, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	mov	r0, #3
	strb	r0, [r1, #3]
	mov	r0, #8
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #1]
	sub	r0, #1
	strb	r0, [r1, #1]
	and	r0, r3
	cmp	r0, #0
	beq	.L_74ed6
.L_74ece:
	mov	r0, #224	@ 0xe0
	bl	Sound_Play
	b	.L_74ef2
.L_74ed6:
	ldrh	r0, [r1, #6]
	cmp	r0, #79	@ 0x4f
	bne	.L_74ee8
	mov	r0, #5
	strb	r0, [r1, #3]
.L_74ee0:
	mov	r0, #225	@ 0xe1
	bl	Sound_Play
	b	.L_74ef2
.L_74ee8:
	mov	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #225	@ 0xe1
	bl	Sound_Play
.L_74ef2:
	ldr	r0, .L_74f0c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_74f02
	ldr	r4, .L_74f10
	ldrb	r0, [r4, #3]
	cmp	r0, #2
	bne	.L_74f1c
.L_74f02:
	ldr	r1, .L_74f14
	ldr	r0, .L_74f18
	str	r0, [r1, #0]
	b	.L_74f30
	.align	2, 0
.L_74f0c:
	.4byte	gUnk_3000038
.L_74f10:
	.4byte	gCurrentSecondarySprite
.L_74f14:
	.4byte	gUnk_3000C10
.L_74f18:
	.4byte	sUnk_83BF986
.L_74f1c:
	ldr	r3, .L_74f38
	ldr	r2, .L_74f3c
	ldr	r1, .L_74f40
	ldrh	r0, [r4, #6]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r3, #0]
.L_74f30:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74f38:
	.4byte	gUnk_3000C10
.L_74f3c:
	.4byte	sBigBoardSpaceSpriteTable
.L_74f40:
	.4byte	sBigBoardSpaces


thumb_func_start func_8074F44
func_8074F44:
	push	{r4, lr}
	ldr	r1, .L_74f6c
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	bne	.L_74fa0
	ldrb	r0, [r1, #1]
	ldrb	r2, [r1, #2]
	mov	r4, #2
	ldrsb	r4, [r1, r4]
	cmp	r4, #1
	bne	.L_74f74
	cmp	r0, #0
	bne	.L_74f74
	mov	r0, #0
	bl	func_806F650
	ldr	r0, .L_74f70
	strb	r4, [r0, #0]
	b	.L_74fa0
.L_74f6c:
	.4byte	gUnk_3000BF0
.L_74f70:
	.4byte	gCollectedNEJewelPiece
.L_74f74:
	cmp	r2, #0
	bne	.L_74fa0
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #4
	bne	.L_74f90
	mov	r0, #1
	bl	func_806F650
	ldr	r1, .L_74f8c
	b	.L_74f9c
	.align	2, 0
.L_74f8c:
	.4byte	gCollectedSEJewelPiece
.L_74f90:
	cmp	r0, #2
	bne	.L_74fa0
	mov	r0, #2
	bl	func_806F650
	ldr	r1, .L_74fa8
.L_74f9c:
	mov	r0, #1
	strb	r0, [r1, #0]
.L_74fa0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74fa8:
	.4byte	gCollectedSWJewelPiece


thumb_func_start func_8074FAC
func_8074FAC:
	push	{r4, lr}
	ldr	r4, .L_74fbc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fc0
	mov	r0, #0
	b	.L_7506a
	.align	2, 0
.L_74fbc:
	.4byte	gCollectedNEJewelPiece
.L_74fc0:
	ldr	r4, .L_74fcc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fd0
	mov	r0, #3
	b	.L_7506a
.L_74fcc:
	.4byte	gCollectedNWJewelPiece
.L_74fd0:
	ldr	r4, .L_74fdc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fe0
	mov	r0, #6
	b	.L_7506a
.L_74fdc:
	.4byte	gHasGoldenDivaChest7
.L_74fe0:
	ldr	r4, .L_74fec
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74ff0
	mov	r0, #9
	b	.L_7506a
.L_74fec:
	.4byte	gHasGoldenDivaChest10
.L_74ff0:
	ldr	r4, .L_74ffc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75000
	mov	r0, #1
	b	.L_7506a
.L_74ffc:
	.4byte	gCollectedSEJewelPiece
.L_75000:
	ldr	r4, .L_7500c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75010
	mov	r0, #4
	b	.L_7506a
.L_7500c:
	.4byte	gHasGoldenDivaChest5
.L_75010:
	ldr	r4, .L_7501c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75020
	mov	r0, #7
	b	.L_7506a
.L_7501c:
	.4byte	gHasGoldenDivaChest8
.L_75020:
	ldr	r4, .L_7502c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75030
	mov	r0, #10
	b	.L_7506a
.L_7502c:
	.4byte	gHasGoldenDivaChest11
.L_75030:
	ldr	r4, .L_7503c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75040
	mov	r0, #2
	b	.L_7506a
.L_7503c:
	.4byte	gCollectedSWJewelPiece
.L_75040:
	ldr	r4, .L_7504c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75050
	mov	r0, #5
	b	.L_7506a
.L_7504c:
	.4byte	gHasGoldenDivaChest6
.L_75050:
	ldr	r4, .L_7505c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75060
	mov	r0, #8
	b	.L_7506a
.L_7505c:
	.4byte	gHasGoldenDivaChest9
.L_75060:
	ldr	r4, .L_75078
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75072
	mov	r0, #11
.L_7506a:
	bl	func_806F650
	mov	r0, #1
	strb	r0, [r4, #0]
.L_75072:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_75078:
	.4byte	gHasGoldenDivaChest12


thumb_func_start func_807507C
func_807507C:
	push	{lr}
	ldr	r1, .L_750b0
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	beq	.L_7508a
	b	.L_751f4
.L_7508a:
	ldrb	r0, [r1, #1]
	add	r2, r0, #0
	ldrb	r1, [r1, #2]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	cmp	r1, #2
	bne	.L_750b8
	cmp	r0, #0
	beq	.L_7509e
	b	.L_751f4
.L_7509e:
	ldr	r0, .L_750b4
	ldrb	r0, [r0, #0]
	cmp	r0, #12
	beq	.L_750a8
	b	.L_751f4
.L_750a8:
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_750b0:
	.4byte	gUnk_3000BF0
.L_750b4:
	.4byte	gGoldenTreasureCount
.L_750b8:
	cmp	r1, #1
	bne	.L_75164
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #5
	bls	.L_750c6
	b	.L_751f4
.L_750c6:
	lsl	r0, r0, #2
	ldr	r1, .L_750d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_750d0:
	.4byte	.L_750d4
.L_750d4:
	.4byte	.L_75150
	.4byte	.L_7513c
	.4byte	.L_75128
	.4byte	.L_75114
	.4byte	.L_75100
	.4byte	.L_750ec
.L_750ec:
	ldr	r0, .L_750fc
	ldrb	r0, [r0, #0]
	cmp	r0, #10
	bhi	.L_750f6
	b	.L_751f4
.L_750f6:
	bl	func_8074FAC
	b	.L_751f4
.L_750fc:
	.4byte	gGoldenTreasureCount
.L_75100:
	ldr	r0, .L_75110
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	bhi	.L_7510a
	b	.L_751f4
.L_7510a:
	bl	func_8074FAC
	b	.L_751f4
.L_75110:
	.4byte	gGoldenTreasureCount
.L_75114:
	ldr	r0, .L_75124
	ldrb	r0, [r0, #0]
	cmp	r0, #8
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75124:
	.4byte	gGoldenTreasureCount
.L_75128:
	ldr	r0, .L_75138
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75138:
	.4byte	gGoldenTreasureCount
.L_7513c:
	ldr	r0, .L_7514c
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_7514c:
	.4byte	gGoldenTreasureCount
.L_75150:
	ldr	r0, .L_75160
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75160:
	.4byte	gGoldenTreasureCount
.L_75164:
	cmp	r1, #0
	bne	.L_751f4
	lsl	r0, r2, #24
	mov	r1, #255	@ 0xff
	lsl	r1, r1, #24
	add	r0, r0, r1
	asr	r0, r0, #24
	cmp	r0, #4
	bhi	.L_751f4
	lsl	r0, r0, #2
	ldr	r1, .L_75180
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_75180:
	.4byte	.L_75184
.L_75184:
	.4byte	.L_751e8
	.4byte	.L_751d4
	.4byte	.L_751c0
	.4byte	.L_751ac
	.4byte	.L_75198
.L_75198:
	ldr	r0, .L_751a8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751a8:
	.4byte	gGoldenTreasureCount
.L_751ac:
	ldr	r0, .L_751bc
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751bc:
	.4byte	gGoldenTreasureCount
.L_751c0:
	ldr	r0, .L_751d0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751d0:
	.4byte	gGoldenTreasureCount
.L_751d4:
	ldr	r0, .L_751e4
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751e4:
	.4byte	gGoldenTreasureCount
.L_751e8:
	ldr	r0, .L_751f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_751f4
	bl	func_8074FAC
.L_751f4:
	pop	{r0}
	bx	r0
.L_751f8:
	.4byte	gGoldenTreasureCount
