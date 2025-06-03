.include "macros.s.inc"

thumb_func_start AgbMain
AgbMain:
	push	{r4, r5, lr}
	bl	InitializeGame
	b	.L_664
.L_1d4:
	bl	PollInput
	bl	CheckSoftReset
	ldr	r1, .L_200
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_204
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	cmp	r0, #12
	bls	.L_1f6
	b	.L_630
.L_1f6:
	lsl	r0, r0, #2
	ldr	r1, .L_208
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_200:
	.4byte	gUnk_3000C41
.L_204:
	.4byte	gUnk_3000006
.L_208:
	.4byte	.L_20c
.L_20c:
	.4byte	.L_240
	.4byte	.L_37c
	.4byte	.L_3c0
	.4byte	.L_548
	.4byte	.L_4cc
	.4byte	.L_53a
	.4byte	.L_54e
	.4byte	.L_58c
	.4byte	.L_5a0
	.4byte	.L_2d0
	.4byte	.L_5dc
	.4byte	.L_630
	.4byte	.L_618
.L_240:
	bl	func_8003474
	cmp	r0, #1
	bne	.L_25c
	ldr	r1, .L_254
	mov	r0, #9
	strh	r0, [r1, #0]
	ldr	r1, .L_258
	mov	r0, #0
	b	.L_62e
.L_254:
	.4byte	gMainGameMode
.L_258:
	.4byte	gSubGameMode
.L_25c:
	cmp	r0, #2
	bne	.L_274
	ldr	r1, .L_26c
	mov	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_270
	mov	r0, #5
	b	.L_62e
.L_26c:
	.4byte	gMainGameMode
.L_270:
	.4byte	gSubGameMode
.L_274:
	cmp	r0, #3
	bne	.L_28c
	ldr	r1, .L_284
	mov	r0, #12
	strh	r0, [r1, #0]
	ldr	r1, .L_288
	mov	r0, #0
	b	.L_62e
.L_284:
	.4byte	gMainGameMode
.L_288:
	.4byte	gSubGameMode
.L_28c:
	cmp	r0, #4
	bne	.L_2a8
	ldr	r1, .L_2a0
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_2a4
	mov	r2, #1
	neg	r2, r2
	b	.L_62c
	.align	2, 0
.L_2a0:
	.4byte	gMainGameMode
.L_2a4:
	.4byte	gSubGameMode
.L_2a8:
	ldr	r0, .L_2c4
	ldrb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_2b6
	b	.L_630
.L_2b6:
	ldr	r1, .L_2c8
	mov	r0, #8
	strh	r0, [r1, #0]
	ldr	r1, .L_2cc
	mov	r0, #0
	b	.L_62e
	.align	2, 0
.L_2c4:
	.4byte	gUnk_3000020
.L_2c8:
	.4byte	gMainGameMode
.L_2cc:
	.4byte	gSubGameMode
.L_2d0:
	bl	func_80917A8
	cmp	r0, #0
	beq	.L_366
	ldr	r0, .L_2fc
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	add	r4, r0, #0
	cmp	r1, #1
	bne	.L_358
	ldr	r0, .L_300
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	beq	.L_30c
	ldr	r1, .L_304
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_308
	mov	r0, #2
	strh	r0, [r1, #0]
	b	.L_362
	.align	2, 0
.L_2fc:
	.4byte	gUnk_3000C3E
.L_300:
	.4byte	gUnk_3000012
.L_304:
	.4byte	gSubGameMode
.L_308:
	.4byte	gMainGameMode
.L_30c:
	ldr	r3, .L_328
	strh	r1, [r3, #0]
	ldr	r0, .L_32c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_334
	ldr	r1, .L_330
	mov	r5, #2
	neg	r5, r5
	add	r0, r5, #0
	strh	r0, [r1, #0]
	strh	r2, [r3, #0]
	b	.L_362
	.align	2, 0
.L_328:
	.4byte	gMainGameMode
.L_32c:
	.4byte	gUnk_3000013
.L_330:
	.4byte	gSubGameMode
.L_334:
	ldr	r0, .L_344
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bne	.L_34c
	ldr	r0, .L_348
	strh	r2, [r0, #0]
	b	.L_362
	.align	2, 0
.L_344:
	.4byte	gCurrentStageNumber
.L_348:
	.4byte	gSubGameMode
.L_34c:
	ldr	r1, .L_354
	mov	r0, #38	@ 0x26
	strh	r0, [r1, #0]
	b	.L_362
.L_354:
	.4byte	gSubGameMode
.L_358:
	ldr	r0, .L_370
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_374
	strh	r1, [r0, #0]
.L_362:
	mov	r0, #0
	strb	r0, [r4, #0]
.L_366:
	ldr	r1, .L_378
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_630
	.align	2, 0
.L_370:
	.4byte	gSubGameMode
.L_374:
	.4byte	gMainGameMode
.L_378:
	.4byte	gUnk_3000C3F
.L_37c:
	bl	func_80799A8
	cmp	r0, #0
	bne	.L_386
	b	.L_630
.L_386:
	ldr	r1, .L_3b4
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_3b8
	mov	r0, #2
	strh	r0, [r1, #0]
	ldr	r0, .L_3bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #6
	beq	.L_3ac
	cmp	r0, #12
	beq	.L_3ac
	cmp	r0, #18
	beq	.L_3ac
	cmp	r0, #24
	beq	.L_3ac
	b	.L_630
.L_3ac:
	ldr	r1, .L_3b8
	mov	r0, #6
	b	.L_62e
	.align	2, 0
.L_3b4:
	.4byte	gSubGameMode
.L_3b8:
	.4byte	gMainGameMode
.L_3bc:
	.4byte	gCurrentStageID
.L_3c0:
	bl	func_801B8BC
	cmp	r0, #0
	bne	.L_3ca
	b	.L_630
.L_3ca:
	ldr	r0, .L_3dc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_3e4
	ldr	r1, .L_3e0
	mov	r0, #4
	b	.L_62e
.L_3dc:
	.4byte	gUnk_3000C35
.L_3e0:
	.4byte	gMainGameMode
.L_3e4:
	ldr	r0, .L_3f8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_400
	ldr	r1, .L_3fc
	mov	r0, #7
	b	.L_62e
	.align	2, 0
.L_3f8:
	.4byte	gUnk_3000C37
.L_3fc:
	.4byte	gMainGameMode
.L_400:
	ldr	r0, .L_410
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_418
	ldr	r1, .L_414
	mov	r0, #11
	b	.L_62e
	.align	2, 0
.L_410:
	.4byte	gUnk_3000022
.L_414:
	.4byte	gMainGameMode
.L_418:
	ldr	r0, .L_434
	mov	r1, #1
	strh	r1, [r0, #0]
	ldr	r0, .L_438
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bls	.L_428
	b	.L_630
.L_428:
	lsl	r0, r0, #2
	ldr	r1, .L_43c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_434:
	.4byte	gMainGameMode
.L_438:
	.4byte	gUnk_3000048
.L_43c:
	.4byte	.L_440
.L_440:
	.4byte	.L_45c
	.4byte	.L_45c
	.4byte	.L_474
	.4byte	.L_480
	.4byte	.L_480
	.4byte	.L_48c
	.4byte	.L_468
.L_45c:
	ldr	r1, .L_464
	mov	r0, #21
	b	.L_62e
	.align	2, 0
.L_464:
	.4byte	gSubGameMode
.L_468:
	ldr	r1, .L_470
	mov	r0, #38	@ 0x26
	b	.L_62e
	.align	2, 0
.L_470:
	.4byte	gSubGameMode
.L_474:
	ldr	r1, .L_47c
	mov	r0, #20
	b	.L_62e
	.align	2, 0
.L_47c:
	.4byte	gSubGameMode
.L_480:
	ldr	r1, .L_488
	mov	r0, #14
	b	.L_62e
	.align	2, 0
.L_488:
	.4byte	gSubGameMode
.L_48c:
	ldr	r0, .L_49c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4a4
	ldr	r1, .L_4a0
	mov	r0, #29
	b	.L_62e
	.align	2, 0
.L_49c:
	.4byte	gUnk_3000010
.L_4a0:
	.4byte	gSubGameMode
.L_4a4:
	cmp	r0, #5
	bne	.L_4c0
	ldr	r1, .L_4b8
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_4bc
	mov	r2, #3
	neg	r2, r2
	b	.L_62c
	.align	2, 0
.L_4b8:
	.4byte	gMainGameMode
.L_4bc:
	.4byte	gSubGameMode
.L_4c0:
	ldr	r1, .L_4c8
	mov	r0, #25
	b	.L_62e
	.align	2, 0
.L_4c8:
	.4byte	gSubGameMode
.L_4cc:
	bl	func_8088678
	cmp	r0, #0
	bne	.L_4d6
	b	.L_630
.L_4d6:
	ldr	r2, .L_4ec
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	cmp	r1, #2
	beq	.L_500
	cmp	r1, #2
	bgt	.L_4f0
	cmp	r1, #1
	beq	.L_4f6
	b	.L_630
	.align	2, 0
.L_4ec:
	.4byte	gUnk_3000C35
.L_4f0:
	cmp	r1, #3
	beq	.L_534
	b	.L_630
.L_4f6:
	ldr	r1, .L_4fc
	mov	r0, #2
	b	.L_62e
.L_4fc:
	.4byte	gMainGameMode
.L_500:
	ldr	r0, .L_510
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_518
	ldr	r1, .L_514
	mov	r0, #11
	b	.L_62e
	.align	2, 0
.L_510:
	.4byte	gUnk_3000022
.L_514:
	.4byte	gMainGameMode
.L_518:
	ldr	r0, .L_528
	strb	r1, [r0, #0]
	ldr	r1, .L_52c
	mov	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_530
	mov	r0, #21
	b	.L_62e
.L_528:
	.4byte	gUnk_3000025
.L_52c:
	.4byte	gMainGameMode
.L_530:
	.4byte	gSubGameMode
.L_534:
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_60c
.L_53a:
	bl	func_8072C70
	ldr	r1, .L_544
	mov	r0, #4
	b	.L_62e
.L_544:
	.4byte	gMainGameMode
.L_548:
	bl	func_8000834
	b	.L_630
.L_54e:
	bl	func_8089900
	cmp	r0, #0
	beq	.L_630
	ldr	r0, .L_56c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_578
	ldr	r1, .L_570
	mov	r0, #11
	strh	r0, [r1, #0]
	ldr	r1, .L_574
	mov	r0, #0
	b	.L_62e
	.align	2, 0
.L_56c:
	.4byte	gUnk_3000022
.L_570:
	.4byte	gMainGameMode
.L_574:
	.4byte	gSubGameMode
.L_578:
	ldr	r1, .L_584
	mov	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_588
	mov	r0, #39	@ 0x27
	b	.L_62e
.L_584:
	.4byte	gMainGameMode
.L_588:
	.4byte	gSubGameMode
.L_58c:
	bl	func_808FB84
	cmp	r0, #0
	beq	.L_630
	ldr	r1, .L_59c
	mov	r0, #2
	b	.L_62e
	.align	2, 0
.L_59c:
	.4byte	gMainGameMode
.L_5a0:
	bl	func_801B8BC
	cmp	r0, #0
	beq	.L_630
	ldr	r0, .L_5d0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_630
	ldr	r4, .L_5d4
	bl	func_8072B98
	mov	r1, #0
	cmp	r0, #0
	bne	.L_5c6
	mov	r5, #1
	neg	r5, r5
	add	r1, r5, #0
.L_5c6:
	strh	r1, [r4, #0]
	ldr	r1, .L_5d8
	mov	r0, #0
	b	.L_62e
	.align	2, 0
.L_5d0:
	.4byte	gUnk_3000C35
.L_5d4:
	.4byte	gSubGameMode
.L_5d8:
	.4byte	gMainGameMode
.L_5dc:
	bl	func_80927E4
	cmp	r0, #0
	beq	.L_630
	ldr	r0, .L_600
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_604
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #1
	bne	.L_60c
	ldr	r1, .L_608
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_630
	.align	2, 0
.L_600:
	.4byte	gSubGameMode
.L_604:
	.4byte	gUnk_3000C3E
.L_608:
	.4byte	gUnk_3000018
.L_60c:
	ldr	r0, .L_614
	strh	r1, [r0, #0]
	b	.L_630
	.align	2, 0
.L_614:
	.4byte	gMainGameMode
.L_618:
	bl	func_8092FD8
	cmp	r0, #0
	beq	.L_630
	ldr	r1, .L_698
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_69c
	mov	r2, #4
	neg	r2, r2
.L_62c:
	add	r0, r2, #0
.L_62e:
	strh	r0, [r1, #0]
.L_630:
	ldr	r0, .L_6a0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_64a
	ldr	r0, .L_698
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	cmp	r0, #0
	beq	.L_64a
	bl	func_8001D98
.L_64a:
	ldr	r0, .L_6a4
	ldrh	r2, [r0, #0]
	ldr	r1, .L_6a8
	and	r1, r2
	strh	r1, [r0, #0]
	add	r2, r0, #0
	mov	r3, #1
.L_658:
	svc	2
	ldrh	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_658
.L_664:
	ldr	r0, .L_6a0
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r5, .L_698
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	cmp	r0, #0
	beq	.L_678
	bl	func_8001D98
.L_678:
	ldr	r4, .L_6ac
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_682
	b	.L_1d4
.L_682:
	bl	func_80023B4
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_690
	bl	func_8000828
.L_690:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_698:
	.4byte	gMainGameMode
.L_69c:
	.4byte	gSubGameMode
.L_6a0:
	.4byte	gUnk_3000C40
.L_6a4:
	.4byte	gUnk_3000C42
.L_6a8:
	.4byte	0xfffe
.L_6ac:
	.4byte	gUnk_3000018
