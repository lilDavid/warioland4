.include "macros.s.inc"


thumb_func_start func_800D1AC
func_800D1AC:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_d1b4
	add	r0, #31
.L_d1b4:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_d1c8
	ldr	r0, .L_d1c4
	b	.L_d1da
	.align	2, 0
.L_d1c4:
	.4byte	sUnk_82AE088
.L_d1c8:
	cmp	r3, #15
	ble	.L_d1d8
	cmp	r3, #23
	bgt	.L_d1d8
	ldr	r0, .L_d1d4
	b	.L_d1da
.L_d1d4:
	.4byte	sUnk_82AE10A
.L_d1d8:
	ldr	r0, .L_d1e8
.L_d1da:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_d1e4
	mov	r0, #1
.L_d1e4:
	bx	lr
	.align	2, 0
.L_d1e8:
	.4byte	sUnk_82AE0CC


thumb_func_start func_800D1EC
func_800D1EC:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_d1f4
	add	r0, #31
.L_d1f4:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_d208
	ldr	r0, .L_d204
	b	.L_d21a
	.align	2, 0
.L_d204:
	.4byte	sUnk_82AE148
.L_d208:
	cmp	r3, #15
	ble	.L_d218
	cmp	r3, #23
	bgt	.L_d218
	ldr	r0, .L_d214
	b	.L_d21a
.L_d214:
	.4byte	sUnk_82AE1D0
.L_d218:
	ldr	r0, .L_d228
.L_d21a:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_d224
	mov	r0, #1
.L_d224:
	bx	lr
	.align	2, 0
.L_d228:
	.4byte	sUnk_82AE18C


thumb_func_start func_800D22C
func_800D22C:
	ldr	r2, .L_d23c
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #98	@ 0x62
	ble	.L_d238
	mov	r1, #1
.L_d238:
	add	r0, r1, #0
	bx	lr
.L_d23c:
	.4byte	sUnk_82AE4B0


thumb_func_start func_800D240
func_800D240:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_d248
	add	r0, #31
.L_d248:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_d25c
	ldr	r0, .L_d258
	b	.L_d26e
	.align	2, 0
.L_d258:
	.4byte	sUnk_82AE47E
.L_d25c:
	cmp	r3, #15
	ble	.L_d26c
	cmp	r3, #23
	bgt	.L_d26c
	ldr	r0, .L_d268
	b	.L_d26e
.L_d268:
	.4byte	sUnk_82AE4E2
.L_d26c:
	ldr	r0, .L_d27c
.L_d26e:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_d278
	mov	r0, #1
.L_d278:
	bx	lr
	.align	2, 0
.L_d27c:
	.4byte	sUnk_82AE4B0


thumb_func_start func_800D280
func_800D280:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #20
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #9
	bgt	.L_d298
	ldr	r0, .L_d294
	b	.L_d29a
.L_d294:
	.4byte	sUnk_82AE214
.L_d298:
	ldr	r0, .L_d2ac
.L_d29a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #19
	bne	.L_d2a4
	mov	r0, #1
.L_d2a4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d2ac:
	.4byte	sUnk_82AE258


thumb_func_start func_800D2B0
func_800D2B0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #184	@ 0xb8
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #99	@ 0x63
	ble	.L_d30c
	cmp	r1, #103	@ 0x67
	bgt	.L_d2cc
	ldr	r0, .L_d2c8
	b	.L_d30e
.L_d2c8:
	.4byte	sUnk_82AE29C
.L_d2cc:
	cmp	r1, #107	@ 0x6b
	bgt	.L_d2d8
	ldr	r0, .L_d2d4
	b	.L_d30e
.L_d2d4:
	.4byte	sUnk_82AE2E0
.L_d2d8:
	cmp	r1, #111	@ 0x6f
	bgt	.L_d2e4
	ldr	r0, .L_d2e0
	b	.L_d30e
.L_d2e0:
	.4byte	sUnk_82AE29C
.L_d2e4:
	cmp	r1, #121	@ 0x79
	ble	.L_d30c
	cmp	r1, #125	@ 0x7d
	bgt	.L_d2f4
	ldr	r0, .L_d2f0
	b	.L_d30e
.L_d2f0:
	.4byte	sUnk_82AE29C
.L_d2f4:
	cmp	r1, #129	@ 0x81
	bgt	.L_d300
	ldr	r0, .L_d2fc
	b	.L_d30e
.L_d2fc:
	.4byte	sUnk_82AE2E0
.L_d300:
	cmp	r1, #133	@ 0x85
	bgt	.L_d30c
	ldr	r0, .L_d308
	b	.L_d30e
.L_d308:
	.4byte	sUnk_82AE29C
.L_d30c:
	ldr	r0, .L_d320
.L_d30e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #183	@ 0xb7
	bne	.L_d318
	mov	r0, #1
.L_d318:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d320:
	.4byte	sUnk_82AE324


thumb_func_start func_800D324
func_800D324:
	ldr	r2, .L_d334
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #98	@ 0x62
	ble	.L_d330
	mov	r1, #1
.L_d330:
	add	r0, r1, #0
	bx	lr
.L_d334:
	.4byte	sUnk_82AE362


thumb_func_start func_800D338
func_800D338:
	ldr	r2, .L_d348
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #98	@ 0x62
	ble	.L_d344
	mov	r1, #1
.L_d344:
	add	r0, r1, #0
	bx	lr
.L_d348:
	.4byte	sUnk_82AE370


thumb_func_start func_800D34C
func_800D34C:
	add	r2, r0, #0
	cmp	r2, #7
	bgt	.L_d35c
	ldr	r0, .L_d358
	b	.L_d3ae
	.align	2, 0
.L_d358:
	.4byte	sUnk_82AE384
.L_d35c:
	cmp	r2, #15
	bgt	.L_d368
	ldr	r0, .L_d364
	b	.L_d3ae
.L_d364:
	.4byte	sUnk_82AE392
.L_d368:
	cmp	r2, #23
	bgt	.L_d374
	ldr	r0, .L_d370
	b	.L_d3ae
.L_d370:
	.4byte	sUnk_82AE3A0
.L_d374:
	cmp	r2, #43	@ 0x2b
	ble	.L_d3ac
	cmp	r2, #47	@ 0x2f
	bgt	.L_d384
	ldr	r0, .L_d380
	b	.L_d3ae
.L_d380:
	.4byte	sUnk_82AE3CE
.L_d384:
	cmp	r2, #51	@ 0x33
	bgt	.L_d390
	ldr	r0, .L_d38c
	b	.L_d3ae
.L_d38c:
	.4byte	sUnk_82AE3F4
.L_d390:
	cmp	r2, #59	@ 0x3b
	ble	.L_d3ac
	cmp	r2, #65	@ 0x41
	bgt	.L_d3a0
	ldr	r0, .L_d39c
	b	.L_d3ae
.L_d39c:
	.4byte	sUnk_82AE3CE
.L_d3a0:
	cmp	r2, #71	@ 0x47
	bgt	.L_d3ac
	ldr	r0, .L_d3a8
	b	.L_d3ae
.L_d3a8:
	.4byte	sUnk_82AE3F4
.L_d3ac:
	ldr	r0, .L_d3bc
.L_d3ae:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r2, #170	@ 0xaa
	ble	.L_d3b8
	mov	r0, #1
.L_d3b8:
	bx	lr
	.align	2, 0
.L_d3bc:
	.4byte	sUnk_82AE3AE


thumb_func_start func_800D3C0
func_800D3C0:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_d3c8
	add	r0, #15
.L_d3c8:
	asr	r3, r0, #4
	lsl	r0, r3, #4
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_d3dc
	ldr	r0, .L_d3d8
	b	.L_d3de
	.align	2, 0
.L_d3d8:
	.4byte	sUnk_82AE41A
.L_d3dc:
	ldr	r0, .L_d3ec
.L_d3de:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #15
	bne	.L_d3e8
	mov	r0, #1
.L_d3e8:
	bx	lr
	.align	2, 0
.L_d3ec:
	.4byte	sUnk_82AE44C


thumb_func_start func_800D3F0
func_800D3F0:
	ldr	r2, .L_d400
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #2
	ble	.L_d3fc
	mov	r1, #1
.L_d3fc:
	add	r0, r1, #0
	bx	lr
.L_d400:
	.4byte	sUnk_82AE3AE


thumb_func_start func_800D404
func_800D404:
	add	r2, r0, #0
	cmp	r2, #7
	bgt	.L_d414
	ldr	r0, .L_d410
	b	.L_d43a
	.align	2, 0
.L_d410:
	.4byte	sUnk_82AE514
.L_d414:
	cmp	r2, #15
	bgt	.L_d420
	ldr	r0, .L_d41c
	b	.L_d43a
.L_d41c:
	.4byte	sUnk_82AE534
.L_d420:
	cmp	r2, #23
	bgt	.L_d42c
	ldr	r0, .L_d428
	b	.L_d43a
.L_d428:
	.4byte	sUnk_82AE566
.L_d42c:
	cmp	r2, #31
	bgt	.L_d438
	ldr	r0, .L_d434
	b	.L_d43a
.L_d434:
	.4byte	sUnk_82AE592
.L_d438:
	ldr	r0, .L_d448
.L_d43a:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r2, #130	@ 0x82
	ble	.L_d444
	mov	r0, #1
.L_d444:
	bx	lr
	.align	2, 0
.L_d448:
	.4byte	sUnk_82AE5CA


thumb_func_start func_800D44C
func_800D44C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_d464
	ldr	r0, .L_d460
	b	.L_d472
.L_d460:
	.4byte	sUnk_82AE5CA
.L_d464:
	cmp	r1, #15
	bgt	.L_d470
	ldr	r0, .L_d46c
	b	.L_d472
.L_d46c:
	.4byte	sUnk_82AE602
.L_d470:
	ldr	r0, .L_d484
.L_d472:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_d47c
	mov	r0, #1
.L_d47c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d484:
	.4byte	sUnk_82AE63A


thumb_func_start func_800D488
func_800D488:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #48	@ 0x30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_d4a0
	ldr	r0, .L_d49c
	b	.L_d4d2
.L_d49c:
	.4byte	sUnk_82AE5CA
.L_d4a0:
	cmp	r1, #15
	bgt	.L_d4ac
	ldr	r0, .L_d4a8
	b	.L_d4d2
.L_d4a8:
	.4byte	sUnk_82AE602
.L_d4ac:
	cmp	r1, #23
	bgt	.L_d4b8
	ldr	r0, .L_d4b4
	b	.L_d4d2
.L_d4b4:
	.4byte	sUnk_82AE63A
.L_d4b8:
	cmp	r1, #31
	bgt	.L_d4c4
	ldr	r0, .L_d4c0
	b	.L_d4d2
.L_d4c0:
	.4byte	sUnk_82AE672
.L_d4c4:
	cmp	r1, #39	@ 0x27
	bgt	.L_d4d0
	ldr	r0, .L_d4cc
	b	.L_d4d2
.L_d4cc:
	.4byte	sUnk_82AE6AA
.L_d4d0:
	ldr	r0, .L_d4e4
.L_d4d2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #47	@ 0x2f
	bne	.L_d4dc
	mov	r0, #1
.L_d4dc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d4e4:
	.4byte	sUnk_82AE6E2


thumb_func_start func_800D4E8
func_800D4E8:
	ldr	r2, .L_d4f8
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #2
	ble	.L_d4f4
	mov	r1, #1
.L_d4f4:
	add	r0, r1, #0
	bx	lr
.L_d4f8:
	.4byte	sUnk_82AE514


thumb_func_start func_800D4FC
func_800D4FC:
	ldr	r2, .L_d50c
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #2
	ble	.L_d508
	mov	r1, #1
.L_d508:
	add	r0, r1, #0
	bx	lr
.L_d50c:
	.4byte	sUnk_82AE73A


thumb_func_start func_800D510
func_800D510:
	add	r2, r0, #0
	cmp	r2, #44	@ 0x2c
	bgt	.L_d520
	ldr	r0, .L_d51c
	b	.L_d52e
	.align	2, 0
.L_d51c:
	.4byte	sUnk_82AE514
.L_d520:
	cmp	r2, #106	@ 0x6a
	bgt	.L_d52c
	ldr	r0, .L_d528
	b	.L_d52e
.L_d528:
	.4byte	sUnk_82AE71A
.L_d52c:
	ldr	r0, .L_d53c
.L_d52e:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r2, #126	@ 0x7e
	bne	.L_d538
	mov	r0, #1
.L_d538:
	bx	lr
	.align	2, 0
.L_d53c:
	.4byte	sUnk_82AE73A


thumb_func_start func_800D540
func_800D540:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_d558
	ldr	r0, .L_d554
	b	.L_d58a
.L_d554:
	.4byte	sUnk_82AE6E2
.L_d558:
	cmp	r1, #7
	bgt	.L_d564
	ldr	r0, .L_d560
	b	.L_d58a
.L_d560:
	.4byte	sUnk_82AE6AA
.L_d564:
	cmp	r1, #11
	bgt	.L_d570
	ldr	r0, .L_d56c
	b	.L_d58a
.L_d56c:
	.4byte	sUnk_82AE672
.L_d570:
	cmp	r1, #15
	bgt	.L_d57c
	ldr	r0, .L_d578
	b	.L_d58a
.L_d578:
	.4byte	sUnk_82AE63A
.L_d57c:
	cmp	r1, #19
	bgt	.L_d588
	ldr	r0, .L_d584
	b	.L_d58a
.L_d584:
	.4byte	sUnk_82AE602
.L_d588:
	ldr	r0, .L_d59c
.L_d58a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_d594
	mov	r0, #1
.L_d594:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d59c:
	.4byte	sUnk_82AE5CA


thumb_func_start func_800D5A0
func_800D5A0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_d5b8
	ldr	r0, .L_d5b4
	b	.L_d5de
.L_d5b4:
	.4byte	sUnk_82AE75A
.L_d5b8:
	cmp	r1, #11
	bgt	.L_d5c4
	ldr	r0, .L_d5c0
	b	.L_d5de
.L_d5c0:
	.4byte	sUnk_82AE762
.L_d5c4:
	cmp	r1, #17
	bgt	.L_d5d0
	ldr	r0, .L_d5cc
	b	.L_d5de
.L_d5cc:
	.4byte	sUnk_82AE76A
.L_d5d0:
	cmp	r1, #23
	bgt	.L_d5dc
	ldr	r0, .L_d5d8
	b	.L_d5de
.L_d5d8:
	.4byte	sUnk_82AE772
.L_d5dc:
	mov	r0, #0
.L_d5de:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #29
	bne	.L_d5e8
	mov	r0, #1
.L_d5e8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_800D5F0
func_800D5F0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_d608
	ldr	r0, .L_d604
	b	.L_d62e
.L_d604:
	.4byte	sUnk_82AE77A
.L_d608:
	cmp	r1, #11
	bgt	.L_d614
	ldr	r0, .L_d610
	b	.L_d62e
.L_d610:
	.4byte	sUnk_82AE782
.L_d614:
	cmp	r1, #17
	bgt	.L_d620
	ldr	r0, .L_d61c
	b	.L_d62e
.L_d61c:
	.4byte	sUnk_82AE78A
.L_d620:
	cmp	r1, #23
	bgt	.L_d62c
	ldr	r0, .L_d628
	b	.L_d62e
.L_d628:
	.4byte	sUnk_82AE792
.L_d62c:
	mov	r0, #0
.L_d62e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #29
	bne	.L_d638
	mov	r0, #1
.L_d638:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_800D640
func_800D640:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_d658
	ldr	r0, .L_d654
	b	.L_d67e
.L_d654:
	.4byte	sUnk_82AE79A
.L_d658:
	cmp	r1, #11
	bgt	.L_d664
	ldr	r0, .L_d660
	b	.L_d67e
.L_d660:
	.4byte	sUnk_82AE7A2
.L_d664:
	cmp	r1, #17
	bgt	.L_d670
	ldr	r0, .L_d66c
	b	.L_d67e
.L_d66c:
	.4byte	sUnk_82AE7AA
.L_d670:
	cmp	r1, #23
	bgt	.L_d67c
	ldr	r0, .L_d678
	b	.L_d67e
.L_d678:
	.4byte	sUnk_82AE7B2
.L_d67c:
	mov	r0, #0
.L_d67e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #29
	bne	.L_d688
	mov	r0, #1
.L_d688:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_800D690
func_800D690:
	ldr	r2, .L_d6a0
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_d69c
	mov	r1, #1
.L_d69c:
	add	r0, r1, #0
	bx	lr
.L_d6a0:
	.4byte	sUnk_82AE7BA


thumb_func_start func_800D6A4
func_800D6A4:
	ldr	r2, .L_d6b4
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_d6b0
	mov	r1, #1
.L_d6b0:
	add	r0, r1, #0
	bx	lr
.L_d6b4:
	.4byte	sUnk_82AE7C2


thumb_func_start func_800D6B8
func_800D6B8:
	ldr	r2, .L_d6c8
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_d6c4
	mov	r1, #1
.L_d6c4:
	add	r0, r1, #0
	bx	lr
.L_d6c8:
	.4byte	sUnk_82AE7CA


thumb_func_start func_800D6CC
func_800D6CC:
	ldr	r2, .L_d6dc
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_d6d8
	mov	r1, #1
.L_d6d8:
	add	r0, r1, #0
	bx	lr
.L_d6dc:
	.4byte	sUnk_82AE7D2


thumb_func_start func_800D6E0
func_800D6E0:
	ldr	r2, .L_d6f0
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_d6ec
	mov	r1, #1
.L_d6ec:
	add	r0, r1, #0
	bx	lr
.L_d6f0:
	.4byte	sUnk_82AE7DA
	.4byte	0x600A4A03
	.4byte	0x28032100
	.4byte	0x2101D100
	.4byte	0x47701C08
	.4byte	sUnk_82AE7E2


thumb_func_start func_800D708
func_800D708:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_d710
	add	r0, #31
.L_d710:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #3
	bgt	.L_d724
	ldr	r0, .L_d720
	b	.L_d76e
	.align	2, 0
.L_d720:
	.4byte	sUnk_82AE7EA
.L_d724:
	cmp	r3, #7
	bgt	.L_d730
	ldr	r0, .L_d72c
	b	.L_d76e
.L_d72c:
	.4byte	sUnk_82AE7F2
.L_d730:
	cmp	r3, #11
	bgt	.L_d73c
	ldr	r0, .L_d738
	b	.L_d76e
.L_d738:
	.4byte	sUnk_82AE7FA
.L_d73c:
	cmp	r3, #15
	bgt	.L_d748
	ldr	r0, .L_d744
	b	.L_d76e
.L_d744:
	.4byte	sUnk_82AE802
.L_d748:
	cmp	r3, #19
	bgt	.L_d754
	ldr	r0, .L_d750
	b	.L_d76e
.L_d750:
	.4byte	sUnk_82AE80A
.L_d754:
	cmp	r3, #23
	bgt	.L_d760
	ldr	r0, .L_d75c
	b	.L_d76e
.L_d75c:
	.4byte	sUnk_82AE812
.L_d760:
	cmp	r3, #27
	bgt	.L_d76c
	ldr	r0, .L_d768
	b	.L_d76e
.L_d768:
	.4byte	sUnk_82AE81A
.L_d76c:
	ldr	r0, .L_d77c
.L_d76e:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_d778
	mov	r0, #1
.L_d778:
	bx	lr
	.align	2, 0
.L_d77c:
	.4byte	sUnk_82AE822


thumb_func_start func_800D780
func_800D780:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #72	@ 0x48
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #11
	bgt	.L_d798
	ldr	r0, .L_d794
	b	.L_d7ca
.L_d794:
	.4byte	sUnk_82AE82A
.L_d798:
	cmp	r1, #23
	bgt	.L_d7a4
	ldr	r0, .L_d7a0
	b	.L_d7ca
.L_d7a0:
	.4byte	sUnk_82AE832
.L_d7a4:
	cmp	r1, #35	@ 0x23
	bgt	.L_d7b0
	ldr	r0, .L_d7ac
	b	.L_d7ca
.L_d7ac:
	.4byte	sUnk_82AE83A
.L_d7b0:
	cmp	r1, #47	@ 0x2f
	bgt	.L_d7bc
	ldr	r0, .L_d7b8
	b	.L_d7ca
.L_d7b8:
	.4byte	sUnk_82AE842
.L_d7bc:
	cmp	r1, #59	@ 0x3b
	bgt	.L_d7c8
	ldr	r0, .L_d7c4
	b	.L_d7ca
.L_d7c4:
	.4byte	sUnk_82AE84A
.L_d7c8:
	ldr	r0, .L_d7dc
.L_d7ca:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #71	@ 0x47
	bne	.L_d7d4
	mov	r0, #1
.L_d7d4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_d7dc:
	.4byte	sUnk_82AE852


thumb_func_start func_800D7E0
func_800D7E0:
	add	r2, r0, #0
	cmp	r2, #3
	bgt	.L_d7f0
	ldr	r0, .L_d7ec
	b	.L_d846
	.align	2, 0
.L_d7ec:
	.4byte	sUnk_82AE85A
.L_d7f0:
	cmp	r2, #7
	bgt	.L_d7fc
	ldr	r0, .L_d7f8
	b	.L_d846
.L_d7f8:
	.4byte	sUnk_82AE88C
.L_d7fc:
	cmp	r2, #11
	bgt	.L_d808
	ldr	r0, .L_d804
	b	.L_d846
.L_d804:
	.4byte	sUnk_82AE8BE
.L_d808:
	cmp	r2, #15
	bgt	.L_d814
	ldr	r0, .L_d810
	b	.L_d846
.L_d810:
	.4byte	sUnk_82AE8F0
.L_d814:
	cmp	r2, #19
	bgt	.L_d820
	ldr	r0, .L_d81c
	b	.L_d846
.L_d81c:
	.4byte	sUnk_82AE922
.L_d820:
	cmp	r2, #23
	bgt	.L_d82c
	ldr	r0, .L_d828
	b	.L_d846
.L_d828:
	.4byte	sUnk_82AE954
.L_d82c:
	cmp	r2, #27
	bgt	.L_d838
	ldr	r0, .L_d834
	b	.L_d846
.L_d834:
	.4byte	sUnk_82AE986
.L_d838:
	cmp	r2, #31
	bgt	.L_d844
	ldr	r0, .L_d840
	b	.L_d846
.L_d840:
	.4byte	sUnk_82AE9B8
.L_d844:
	mov	r0, #0
.L_d846:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r2, #30
	ble	.L_d850
	mov	r0, #1
.L_d850:
	bx	lr
	.align	2, 0


thumb_func_start func_800D854
func_800D854:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #1
	bgt	.L_d864
	ldr	r0, .L_d860
	b	.L_da0a
.L_d860:
	.4byte	sUnk_82AE9EA
.L_d864:
	cmp	r4, #3
	bgt	.L_d870
	ldr	r0, .L_d86c
	b	.L_da0a
.L_d86c:
	.4byte	sUnk_82AE9F8
.L_d870:
	cmp	r4, #5
	bgt	.L_d87c
	ldr	r0, .L_d878
	b	.L_da0a
.L_d878:
	.4byte	sUnk_82AE9EA
.L_d87c:
	cmp	r4, #7
	bgt	.L_d888
	ldr	r0, .L_d884
	b	.L_da0a
.L_d884:
	.4byte	sUnk_82AE9F8
.L_d888:
	cmp	r4, #9
	bgt	.L_d894
	ldr	r0, .L_d890
	b	.L_da0a
.L_d890:
	.4byte	sUnk_82AE9EA
.L_d894:
	cmp	r4, #11
	bgt	.L_d8a0
	ldr	r0, .L_d89c
	b	.L_da0a
.L_d89c:
	.4byte	sUnk_82AE9F8
.L_d8a0:
	cmp	r4, #13
	bgt	.L_d8ac
	ldr	r0, .L_d8a8
	b	.L_da0a
.L_d8a8:
	.4byte	sUnk_82AE9EA
.L_d8ac:
	cmp	r4, #17
	bgt	.L_d8b8
	ldr	r0, .L_d8b4
	b	.L_da0a
.L_d8b4:
	.4byte	sUnk_82AE9F8
.L_d8b8:
	cmp	r4, #21
	bgt	.L_d8c4
	ldr	r0, .L_d8c0
	b	.L_da0a
.L_d8c0:
	.4byte	sUnk_82AEA06
.L_d8c4:
	cmp	r4, #25
	bgt	.L_d8d0
	ldr	r0, .L_d8cc
	b	.L_da0a
.L_d8cc:
	.4byte	sUnk_82AE9F8
.L_d8d0:
	cmp	r4, #29
	bgt	.L_d8dc
	ldr	r0, .L_d8d8
	b	.L_da0a
.L_d8d8:
	.4byte	sUnk_82AEA06
.L_d8dc:
	cmp	r4, #33	@ 0x21
	bgt	.L_d8e8
	ldr	r0, .L_d8e4
	b	.L_da0a
.L_d8e4:
	.4byte	sUnk_82AEA0E
.L_d8e8:
	cmp	r4, #37	@ 0x25
	bgt	.L_d8f4
	ldr	r0, .L_d8f0
	b	.L_da0a
.L_d8f0:
	.4byte	sUnk_82AEA06
.L_d8f4:
	cmp	r4, #41	@ 0x29
	bgt	.L_d900
	ldr	r0, .L_d8fc
	b	.L_da0a
.L_d8fc:
	.4byte	sUnk_82AEA0E
.L_d900:
	cmp	r4, #45	@ 0x2d
	bgt	.L_d90c
	ldr	r0, .L_d908
	b	.L_da0a
.L_d908:
	.4byte	sUnk_82AEA16
.L_d90c:
	cmp	r4, #49	@ 0x31
	bgt	.L_d918
	ldr	r0, .L_d914
	b	.L_da0a
.L_d914:
	.4byte	sUnk_82AEA0E
.L_d918:
	cmp	r4, #53	@ 0x35
	bgt	.L_d924
	ldr	r0, .L_d920
	b	.L_da0a
.L_d920:
	.4byte	sUnk_82AEA16
.L_d924:
	cmp	r4, #57	@ 0x39
	bgt	.L_d930
	ldr	r0, .L_d92c
	b	.L_da0a
.L_d92c:
	.4byte	sUnk_82AEA24
.L_d930:
	cmp	r4, #61	@ 0x3d
	bgt	.L_d93c
	ldr	r0, .L_d938
	b	.L_da0a
.L_d938:
	.4byte	sUnk_82AEA16
.L_d93c:
	cmp	r4, #65	@ 0x41
	bgt	.L_d948
	ldr	r0, .L_d944
	b	.L_da0a
.L_d944:
	.4byte	sUnk_82AEA24
.L_d948:
	cmp	r4, #69	@ 0x45
	bgt	.L_d954
	ldr	r0, .L_d950
	b	.L_da0a
.L_d950:
	.4byte	sUnk_82AEA32
.L_d954:
	cmp	r4, #73	@ 0x49
	bgt	.L_d960
	ldr	r0, .L_d95c
	b	.L_da0a
.L_d95c:
	.4byte	sUnk_82AEA24
.L_d960:
	cmp	r4, #77	@ 0x4d
	bgt	.L_d96c
	ldr	r0, .L_d968
	b	.L_da0a
.L_d968:
	.4byte	sUnk_82AEA32
.L_d96c:
	cmp	r4, #81	@ 0x51
	bgt	.L_d978
	ldr	r0, .L_d974
	b	.L_da0a
.L_d974:
	.4byte	sUnk_82AEA40
.L_d978:
	cmp	r4, #85	@ 0x55
	bgt	.L_d984
	ldr	r0, .L_d980
	b	.L_da0a
.L_d980:
	.4byte	sUnk_82AEA32
.L_d984:
	cmp	r4, #105	@ 0x69
	bgt	.L_d990
	ldr	r0, .L_d98c
	b	.L_da0a
.L_d98c:
	.4byte	sUnk_82AEA40
.L_d990:
	cmp	r4, #107	@ 0x6b
	bgt	.L_d99c
	ldr	r0, .L_d998
	b	.L_da0a
.L_d998:
	.4byte	sUnk_82AEA5A
.L_d99c:
	cmp	r4, #109	@ 0x6d
	bgt	.L_d9a8
	ldr	r0, .L_d9a4
	b	.L_da0a
.L_d9a4:
	.4byte	sUnk_82AEA40
.L_d9a8:
	cmp	r4, #111	@ 0x6f
	bgt	.L_d9b4
	ldr	r0, .L_d9b0
	b	.L_da0a
.L_d9b0:
	.4byte	sUnk_82AEA5A
.L_d9b4:
	cmp	r4, #113	@ 0x71
	bgt	.L_d9c0
	ldr	r0, .L_d9bc
	b	.L_da0a
.L_d9bc:
	.4byte	sUnk_82AEA40
.L_d9c0:
	cmp	r4, #163	@ 0xa3
	bgt	.L_d9cc
	ldr	r0, .L_d9c8
	b	.L_da0a
.L_d9c8:
	.4byte	sUnk_82AEA5A
.L_d9cc:
	cmp	r4, #213	@ 0xd5
	ble	.L_da08
	cmp	r4, #221	@ 0xdd
	bgt	.L_d9dc
	ldr	r0, .L_d9d8
	b	.L_da0a
.L_d9d8:
	.4byte	sUnk_82AEA5A
.L_d9dc:
	cmp	r4, #241	@ 0xf1
	ble	.L_da08
	cmp	r4, #247	@ 0xf7
	bgt	.L_d9ec
	ldr	r0, .L_d9e8
	b	.L_da0a
.L_d9e8:
	.4byte	sUnk_82AEA5A
.L_d9ec:
	ldr	r0, .L_d9fc
	cmp	r4, r0
	ble	.L_da08
	ldr	r0, .L_da00
	cmp	r4, r0
	bgt	.L_da08
	ldr	r0, .L_da04
	b	.L_da0a
.L_d9fc:
	.4byte	0x129
.L_da00:
	.4byte	0x15B
.L_da04:
	.4byte	sUnk_82AEA94
.L_da08:
	ldr	r0, .L_da20
.L_da0a:
	str	r0, [r1, #0]
	cmp	r4, #78	@ 0x4e
	bne	.L_da16
	ldr	r0, .L_da24
	bl	m4aSongNumStartOrChange
.L_da16:
	cmp	r4, #114	@ 0x72
	bne	.L_da28
	mov	r0, #2
	b	.L_da34
	.align	2, 0
.L_da20:
	.4byte	sUnk_82AEA74
.L_da24:
	.4byte	0x1A9
.L_da28:
	mov	r1, #0
	ldr	r0, .L_da3c
	cmp	r4, r0
	ble	.L_da32
	mov	r1, #1
.L_da32:
	add	r0, r1, #0
.L_da34:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_da3c:
	.4byte	0x15B


thumb_func_start func_800DA40
func_800DA40:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #1
	bgt	.L_da50
	ldr	r0, .L_da4c
	b	.L_dbf6
.L_da4c:
	.4byte	sUnk_82AE9EA
.L_da50:
	cmp	r4, #3
	bgt	.L_da5c
	ldr	r0, .L_da58
	b	.L_dbf6
.L_da58:
	.4byte	sUnk_82AE9F8
.L_da5c:
	cmp	r4, #5
	bgt	.L_da68
	ldr	r0, .L_da64
	b	.L_dbf6
.L_da64:
	.4byte	sUnk_82AE9EA
.L_da68:
	cmp	r4, #7
	bgt	.L_da74
	ldr	r0, .L_da70
	b	.L_dbf6
.L_da70:
	.4byte	sUnk_82AE9F8
.L_da74:
	cmp	r4, #9
	bgt	.L_da80
	ldr	r0, .L_da7c
	b	.L_dbf6
.L_da7c:
	.4byte	sUnk_82AE9EA
.L_da80:
	cmp	r4, #11
	bgt	.L_da8c
	ldr	r0, .L_da88
	b	.L_dbf6
.L_da88:
	.4byte	sUnk_82AE9F8
.L_da8c:
	cmp	r4, #13
	bgt	.L_da98
	ldr	r0, .L_da94
	b	.L_dbf6
.L_da94:
	.4byte	sUnk_82AE9EA
.L_da98:
	cmp	r4, #15
	bgt	.L_daa4
	ldr	r0, .L_daa0
	b	.L_dbf6
.L_daa0:
	.4byte	sUnk_82AE9F8
.L_daa4:
	cmp	r4, #19
	bgt	.L_dab0
	ldr	r0, .L_daac
	b	.L_dbf6
.L_daac:
	.4byte	sUnk_82AEA06
.L_dab0:
	cmp	r4, #23
	bgt	.L_dabc
	ldr	r0, .L_dab8
	b	.L_dbf6
.L_dab8:
	.4byte	sUnk_82AE9F8
.L_dabc:
	cmp	r4, #27
	bgt	.L_dac8
	ldr	r0, .L_dac4
	b	.L_dbf6
.L_dac4:
	.4byte	sUnk_82AEA06
.L_dac8:
	cmp	r4, #31
	bgt	.L_dad4
	ldr	r0, .L_dad0
	b	.L_dbf6
.L_dad0:
	.4byte	sUnk_82AEA0E
.L_dad4:
	cmp	r4, #35	@ 0x23
	bgt	.L_dae0
	ldr	r0, .L_dadc
	b	.L_dbf6
.L_dadc:
	.4byte	sUnk_82AEA06
.L_dae0:
	cmp	r4, #39	@ 0x27
	bgt	.L_daec
	ldr	r0, .L_dae8
	b	.L_dbf6
.L_dae8:
	.4byte	sUnk_82AEA0E
.L_daec:
	cmp	r4, #43	@ 0x2b
	bgt	.L_daf8
	ldr	r0, .L_daf4
	b	.L_dbf6
.L_daf4:
	.4byte	sUnk_82AEA16
.L_daf8:
	cmp	r4, #47	@ 0x2f
	bgt	.L_db04
	ldr	r0, .L_db00
	b	.L_dbf6
.L_db00:
	.4byte	sUnk_82AEA0E
.L_db04:
	cmp	r4, #51	@ 0x33
	bgt	.L_db10
	ldr	r0, .L_db0c
	b	.L_dbf6
.L_db0c:
	.4byte	sUnk_82AEA16
.L_db10:
	cmp	r4, #55	@ 0x37
	bgt	.L_db1c
	ldr	r0, .L_db18
	b	.L_dbf6
.L_db18:
	.4byte	sUnk_82AEA24
.L_db1c:
	cmp	r4, #59	@ 0x3b
	bgt	.L_db28
	ldr	r0, .L_db24
	b	.L_dbf6
.L_db24:
	.4byte	sUnk_82AEA16
.L_db28:
	cmp	r4, #63	@ 0x3f
	bgt	.L_db34
	ldr	r0, .L_db30
	b	.L_dbf6
.L_db30:
	.4byte	sUnk_82AEA24
.L_db34:
	cmp	r4, #67	@ 0x43
	bgt	.L_db40
	ldr	r0, .L_db3c
	b	.L_dbf6
.L_db3c:
	.4byte	sUnk_82AEA32
.L_db40:
	cmp	r4, #71	@ 0x47
	bgt	.L_db4c
	ldr	r0, .L_db48
	b	.L_dbf6
.L_db48:
	.4byte	sUnk_82AEA24
.L_db4c:
	cmp	r4, #75	@ 0x4b
	bgt	.L_db58
	ldr	r0, .L_db54
	b	.L_dbf6
.L_db54:
	.4byte	sUnk_82AEA32
.L_db58:
	cmp	r4, #79	@ 0x4f
	bgt	.L_db64
	ldr	r0, .L_db60
	b	.L_dbf6
.L_db60:
	.4byte	sUnk_82AEA40
.L_db64:
	cmp	r4, #83	@ 0x53
	bgt	.L_db70
	ldr	r0, .L_db6c
	b	.L_dbf6
.L_db6c:
	.4byte	sUnk_82AEA32
.L_db70:
	cmp	r4, #103	@ 0x67
	bgt	.L_db7c
	ldr	r0, .L_db78
	b	.L_dbf6
.L_db78:
	.4byte	sUnk_82AEA40
.L_db7c:
	cmp	r4, #105	@ 0x69
	bgt	.L_db88
	ldr	r0, .L_db84
	b	.L_dbf6
.L_db84:
	.4byte	sUnk_82AEAE8
.L_db88:
	cmp	r4, #107	@ 0x6b
	bgt	.L_db94
	ldr	r0, .L_db90
	b	.L_dbf6
.L_db90:
	.4byte	sUnk_82AEAB4
.L_db94:
	cmp	r4, #109	@ 0x6d
	bgt	.L_dba0
	ldr	r0, .L_db9c
	b	.L_dbf6
.L_db9c:
	.4byte	sUnk_82AEAE8
.L_dba0:
	cmp	r4, #111	@ 0x6f
	bgt	.L_dbac
	ldr	r0, .L_dba8
	b	.L_dbf6
.L_dba8:
	.4byte	sUnk_82AEAB4
.L_dbac:
	cmp	r4, #161	@ 0xa1
	bgt	.L_dbb8
	ldr	r0, .L_dbb4
	b	.L_dbf6
.L_dbb4:
	.4byte	sUnk_82AEAE8
.L_dbb8:
	cmp	r4, #211	@ 0xd3
	ble	.L_dbf4
	cmp	r4, #219	@ 0xdb
	bgt	.L_dbc8
	ldr	r0, .L_dbc4
	b	.L_dbf6
.L_dbc4:
	.4byte	sUnk_82AEAE8
.L_dbc8:
	cmp	r4, #239	@ 0xef
	ble	.L_dbf4
	cmp	r4, #245	@ 0xf5
	bgt	.L_dbd8
	ldr	r0, .L_dbd4
	b	.L_dbf6
.L_dbd4:
	.4byte	sUnk_82AEAE8
.L_dbd8:
	ldr	r0, .L_dbe8
	cmp	r4, r0
	ble	.L_dbf4
	ldr	r0, .L_dbec
	cmp	r4, r0
	bgt	.L_dbf4
	ldr	r0, .L_dbf0
	b	.L_dbf6
.L_dbe8:
	.4byte	0x127
.L_dbec:
	.4byte	0x159
.L_dbf0:
	.4byte	sUnk_82AEB08
.L_dbf4:
	ldr	r0, .L_dc0c
.L_dbf6:
	str	r0, [r1, #0]
	cmp	r4, #76	@ 0x4c
	bne	.L_dc02
	ldr	r0, .L_dc10
	bl	m4aSongNumStartOrChange
.L_dc02:
	cmp	r4, #112	@ 0x70
	bne	.L_dc14
	mov	r0, #2
	b	.L_dc20
	.align	2, 0
.L_dc0c:
	.4byte	sUnk_82AEACE
.L_dc10:
	.4byte	0x1A9
.L_dc14:
	mov	r1, #0
	ldr	r0, .L_dc28
	cmp	r4, r0
	ble	.L_dc1e
	mov	r1, #1
.L_dc1e:
	add	r0, r1, #0
.L_dc20:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_dc28:
	.4byte	0x159


thumb_func_start func_800DC2C
func_800DC2C:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #1
	bgt	.L_dc3c
	ldr	r0, .L_dc38
	b	.L_de2a
.L_dc38:
	.4byte	sUnk_82AE9EA
.L_dc3c:
	cmp	r4, #3
	bgt	.L_dc48
	ldr	r0, .L_dc44
	b	.L_de2a
.L_dc44:
	.4byte	sUnk_82AE9F8
.L_dc48:
	cmp	r4, #5
	bgt	.L_dc54
	ldr	r0, .L_dc50
	b	.L_de2a
.L_dc50:
	.4byte	sUnk_82AE9EA
.L_dc54:
	cmp	r4, #7
	bgt	.L_dc60
	ldr	r0, .L_dc5c
	b	.L_de2a
.L_dc5c:
	.4byte	sUnk_82AE9F8
.L_dc60:
	cmp	r4, #9
	bgt	.L_dc6c
	ldr	r0, .L_dc68
	b	.L_de2a
.L_dc68:
	.4byte	sUnk_82AE9EA
.L_dc6c:
	cmp	r4, #11
	bgt	.L_dc78
	ldr	r0, .L_dc74
	b	.L_de2a
.L_dc74:
	.4byte	sUnk_82AE9F8
.L_dc78:
	cmp	r4, #13
	bgt	.L_dc84
	ldr	r0, .L_dc80
	b	.L_de2a
.L_dc80:
	.4byte	sUnk_82AE9EA
.L_dc84:
	cmp	r4, #17
	bgt	.L_dc90
	ldr	r0, .L_dc8c
	b	.L_de2a
.L_dc8c:
	.4byte	sUnk_82AE9F8
.L_dc90:
	cmp	r4, #21
	bgt	.L_dc9c
	ldr	r0, .L_dc98
	b	.L_de2a
.L_dc98:
	.4byte	sUnk_82AEA06
.L_dc9c:
	cmp	r4, #25
	bgt	.L_dca8
	ldr	r0, .L_dca4
	b	.L_de2a
.L_dca4:
	.4byte	sUnk_82AE9F8
.L_dca8:
	cmp	r4, #29
	bgt	.L_dcb4
	ldr	r0, .L_dcb0
	b	.L_de2a
.L_dcb0:
	.4byte	sUnk_82AEA06
.L_dcb4:
	cmp	r4, #33	@ 0x21
	bgt	.L_dcc0
	ldr	r0, .L_dcbc
	b	.L_de2a
.L_dcbc:
	.4byte	sUnk_82AEA0E
.L_dcc0:
	cmp	r4, #37	@ 0x25
	bgt	.L_dccc
	ldr	r0, .L_dcc8
	b	.L_de2a
.L_dcc8:
	.4byte	sUnk_82AEA06
.L_dccc:
	cmp	r4, #41	@ 0x29
	bgt	.L_dcd8
	ldr	r0, .L_dcd4
	b	.L_de2a
.L_dcd4:
	.4byte	sUnk_82AEA0E
.L_dcd8:
	cmp	r4, #45	@ 0x2d
	bgt	.L_dce4
	ldr	r0, .L_dce0
	b	.L_de2a
.L_dce0:
	.4byte	sUnk_82AEA16
.L_dce4:
	cmp	r4, #49	@ 0x31
	bgt	.L_dcf0
	ldr	r0, .L_dcec
	b	.L_de2a
.L_dcec:
	.4byte	sUnk_82AEA0E
.L_dcf0:
	cmp	r4, #53	@ 0x35
	bgt	.L_dcfc
	ldr	r0, .L_dcf8
	b	.L_de2a
.L_dcf8:
	.4byte	sUnk_82AEA16
.L_dcfc:
	cmp	r4, #57	@ 0x39
	bgt	.L_dd08
	ldr	r0, .L_dd04
	b	.L_de2a
.L_dd04:
	.4byte	sUnk_82AEA24
.L_dd08:
	cmp	r4, #61	@ 0x3d
	bgt	.L_dd14
	ldr	r0, .L_dd10
	b	.L_de2a
.L_dd10:
	.4byte	sUnk_82AEA16
.L_dd14:
	cmp	r4, #65	@ 0x41
	bgt	.L_dd20
	ldr	r0, .L_dd1c
	b	.L_de2a
.L_dd1c:
	.4byte	sUnk_82AEA24
.L_dd20:
	cmp	r4, #69	@ 0x45
	bgt	.L_dd2c
	ldr	r0, .L_dd28
	b	.L_de2a
.L_dd28:
	.4byte	sUnk_82AEA32
.L_dd2c:
	cmp	r4, #73	@ 0x49
	bgt	.L_dd38
	ldr	r0, .L_dd34
	b	.L_de2a
.L_dd34:
	.4byte	sUnk_82AEA24
.L_dd38:
	cmp	r4, #77	@ 0x4d
	bgt	.L_dd44
	ldr	r0, .L_dd40
	b	.L_de2a
.L_dd40:
	.4byte	sUnk_82AEA32
.L_dd44:
	cmp	r4, #81	@ 0x51
	bgt	.L_dd50
	ldr	r0, .L_dd4c
	b	.L_de2a
.L_dd4c:
	.4byte	sUnk_82AEA40
.L_dd50:
	cmp	r4, #85	@ 0x55
	bgt	.L_dd5c
	ldr	r0, .L_dd58
	b	.L_de2a
.L_dd58:
	.4byte	sUnk_82AEA32
.L_dd5c:
	cmp	r4, #105	@ 0x69
	bgt	.L_dd68
	ldr	r0, .L_dd64
	b	.L_de2a
.L_dd64:
	.4byte	sUnk_82AEA40
.L_dd68:
	cmp	r4, #109	@ 0x6d
	bgt	.L_dd74
	ldr	r0, .L_dd70
	b	.L_de2a
.L_dd70:
	.4byte	sUnk_82AEC3C
.L_dd74:
	cmp	r4, #113	@ 0x71
	bgt	.L_dd80
	ldr	r0, .L_dd7c
	b	.L_de2a
.L_dd7c:
	.4byte	sUnk_82AEC22
.L_dd80:
	cmp	r4, #117	@ 0x75
	bgt	.L_dd8c
	ldr	r0, .L_dd88
	b	.L_de2a
.L_dd88:
	.4byte	sUnk_82AEC4A
.L_dd8c:
	cmp	r4, #121	@ 0x79
	bgt	.L_dd98
	ldr	r0, .L_dd94
	b	.L_de2a
.L_dd94:
	.4byte	sUnk_82AEC22
.L_dd98:
	cmp	r4, #125	@ 0x7d
	bgt	.L_dda4
	ldr	r0, .L_dda0
	b	.L_de2a
.L_dda0:
	.4byte	sUnk_82AEC3C
.L_dda4:
	cmp	r4, #127	@ 0x7f
	bgt	.L_ddb0
	ldr	r0, .L_ddac
	b	.L_de2a
.L_ddac:
	.4byte	sUnk_82AEB62
.L_ddb0:
	cmp	r4, #129	@ 0x81
	bgt	.L_ddbc
	ldr	r0, .L_ddb8
	b	.L_de2a
.L_ddb8:
	.4byte	sUnk_82AEB28
.L_ddbc:
	cmp	r4, #131	@ 0x83
	bgt	.L_ddc8
	ldr	r0, .L_ddc4
	b	.L_de2a
.L_ddc4:
	.4byte	sUnk_82AEB62
.L_ddc8:
	cmp	r4, #133	@ 0x85
	bgt	.L_ddd4
	ldr	r0, .L_ddd0
	b	.L_de2a
.L_ddd0:
	.4byte	sUnk_82AEB28
.L_ddd4:
	cmp	r4, #183	@ 0xb7
	bgt	.L_dde0
	ldr	r0, .L_dddc
	b	.L_de2a
.L_dddc:
	.4byte	sUnk_82AEB62
.L_dde0:
	cmp	r4, #233	@ 0xe9
	ble	.L_de28
	cmp	r4, #241	@ 0xf1
	bgt	.L_ddf0
	ldr	r0, .L_ddec
	b	.L_de2a
.L_ddec:
	.4byte	sUnk_82AEB62
.L_ddf0:
	ldr	r0, .L_de00
	cmp	r4, r0
	ble	.L_de28
	ldr	r0, .L_de04
	cmp	r4, r0
	bgt	.L_de0c
	ldr	r0, .L_de08
	b	.L_de2a
.L_de00:
	.4byte	0x105
.L_de04:
	.4byte	0x10B
.L_de08:
	.4byte	sUnk_82AEB62
.L_de0c:
	ldr	r0, .L_de1c
	cmp	r4, r0
	ble	.L_de28
	ldr	r0, .L_de20
	cmp	r4, r0
	bgt	.L_de28
	ldr	r0, .L_de24
	b	.L_de2a
.L_de1c:
	.4byte	0x13D
.L_de20:
	.4byte	0x16F
.L_de24:
	.4byte	sUnk_82AEB88
.L_de28:
	ldr	r0, .L_de40
.L_de2a:
	str	r0, [r1, #0]
	cmp	r4, #78	@ 0x4e
	bne	.L_de36
	ldr	r0, .L_de44
	bl	m4aSongNumStartOrChange
.L_de36:
	cmp	r4, #134	@ 0x86
	bne	.L_de48
	mov	r0, #2
	b	.L_de54
	.align	2, 0
.L_de40:
	.4byte	sUnk_82AEB42
.L_de44:
	.4byte	0x1A9
.L_de48:
	mov	r1, #0
	ldr	r0, .L_de5c
	cmp	r4, r0
	ble	.L_de52
	mov	r1, #1
.L_de52:
	add	r0, r1, #0
.L_de54:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_de5c:
	.4byte	0x16F


thumb_func_start func_800DE60
func_800DE60:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #1
	bgt	.L_de70
	ldr	r0, .L_de6c
	b	.L_e096
.L_de6c:
	.4byte	sUnk_82AE9EA
.L_de70:
	cmp	r4, #3
	bgt	.L_de7c
	ldr	r0, .L_de78
	b	.L_e096
.L_de78:
	.4byte	sUnk_82AE9F8
.L_de7c:
	cmp	r4, #5
	bgt	.L_de88
	ldr	r0, .L_de84
	b	.L_e096
.L_de84:
	.4byte	sUnk_82AE9EA
.L_de88:
	cmp	r4, #7
	bgt	.L_de94
	ldr	r0, .L_de90
	b	.L_e096
.L_de90:
	.4byte	sUnk_82AE9F8
.L_de94:
	cmp	r4, #9
	bgt	.L_dea0
	ldr	r0, .L_de9c
	b	.L_e096
.L_de9c:
	.4byte	sUnk_82AE9EA
.L_dea0:
	cmp	r4, #11
	bgt	.L_deac
	ldr	r0, .L_dea8
	b	.L_e096
.L_dea8:
	.4byte	sUnk_82AE9F8
.L_deac:
	cmp	r4, #13
	bgt	.L_deb8
	ldr	r0, .L_deb4
	b	.L_e096
.L_deb4:
	.4byte	sUnk_82AE9EA
.L_deb8:
	cmp	r4, #17
	bgt	.L_dec4
	ldr	r0, .L_dec0
	b	.L_e096
.L_dec0:
	.4byte	sUnk_82AE9F8
.L_dec4:
	cmp	r4, #21
	bgt	.L_ded0
	ldr	r0, .L_decc
	b	.L_e096
.L_decc:
	.4byte	sUnk_82AEA06
.L_ded0:
	cmp	r4, #25
	bgt	.L_dedc
	ldr	r0, .L_ded8
	b	.L_e096
.L_ded8:
	.4byte	sUnk_82AE9F8
.L_dedc:
	cmp	r4, #29
	bgt	.L_dee8
	ldr	r0, .L_dee4
	b	.L_e096
.L_dee4:
	.4byte	sUnk_82AEA06
.L_dee8:
	cmp	r4, #33	@ 0x21
	bgt	.L_def4
	ldr	r0, .L_def0
	b	.L_e096
.L_def0:
	.4byte	sUnk_82AEA0E
.L_def4:
	cmp	r4, #37	@ 0x25
	bgt	.L_df00
	ldr	r0, .L_defc
	b	.L_e096
.L_defc:
	.4byte	sUnk_82AEA06
.L_df00:
	cmp	r4, #41	@ 0x29
	bgt	.L_df0c
	ldr	r0, .L_df08
	b	.L_e096
.L_df08:
	.4byte	sUnk_82AEA0E
.L_df0c:
	cmp	r4, #45	@ 0x2d
	bgt	.L_df18
	ldr	r0, .L_df14
	b	.L_e096
.L_df14:
	.4byte	sUnk_82AEA16
.L_df18:
	cmp	r4, #49	@ 0x31
	bgt	.L_df24
	ldr	r0, .L_df20
	b	.L_e096
.L_df20:
	.4byte	sUnk_82AEA0E
.L_df24:
	cmp	r4, #53	@ 0x35
	bgt	.L_df30
	ldr	r0, .L_df2c
	b	.L_e096
.L_df2c:
	.4byte	sUnk_82AEA16
.L_df30:
	cmp	r4, #57	@ 0x39
	bgt	.L_df3c
	ldr	r0, .L_df38
	b	.L_e096
.L_df38:
	.4byte	sUnk_82AEA24
.L_df3c:
	cmp	r4, #61	@ 0x3d
	bgt	.L_df48
	ldr	r0, .L_df44
	b	.L_e096
.L_df44:
	.4byte	sUnk_82AEA16
.L_df48:
	cmp	r4, #65	@ 0x41
	bgt	.L_df54
	ldr	r0, .L_df50
	b	.L_e096
.L_df50:
	.4byte	sUnk_82AEA24
.L_df54:
	cmp	r4, #69	@ 0x45
	bgt	.L_df60
	ldr	r0, .L_df5c
	b	.L_e096
.L_df5c:
	.4byte	sUnk_82AEA32
.L_df60:
	cmp	r4, #73	@ 0x49
	bgt	.L_df6c
	ldr	r0, .L_df68
	b	.L_e096
.L_df68:
	.4byte	sUnk_82AEA24
.L_df6c:
	cmp	r4, #77	@ 0x4d
	bgt	.L_df78
	ldr	r0, .L_df74
	b	.L_e096
.L_df74:
	.4byte	sUnk_82AEA32
.L_df78:
	cmp	r4, #81	@ 0x51
	bgt	.L_df84
	ldr	r0, .L_df80
	b	.L_e096
.L_df80:
	.4byte	sUnk_82AEA40
.L_df84:
	cmp	r4, #85	@ 0x55
	bgt	.L_df90
	ldr	r0, .L_df8c
	b	.L_e096
.L_df8c:
	.4byte	sUnk_82AEA32
.L_df90:
	cmp	r4, #105	@ 0x69
	bgt	.L_df9c
	ldr	r0, .L_df98
	b	.L_e096
.L_df98:
	.4byte	sUnk_82AEA40
.L_df9c:
	cmp	r4, #109	@ 0x6d
	bgt	.L_dfa8
	ldr	r0, .L_dfa4
	b	.L_e096
.L_dfa4:
	.4byte	sUnk_82AEC3C
.L_dfa8:
	cmp	r4, #113	@ 0x71
	bgt	.L_dfb4
	ldr	r0, .L_dfb0
	b	.L_e096
.L_dfb0:
	.4byte	sUnk_82AEC22
.L_dfb4:
	cmp	r4, #117	@ 0x75
	bgt	.L_dfc0
	ldr	r0, .L_dfbc
	b	.L_e096
.L_dfbc:
	.4byte	sUnk_82AEC4A
.L_dfc0:
	cmp	r4, #121	@ 0x79
	bgt	.L_dfcc
	ldr	r0, .L_dfc8
	b	.L_e096
.L_dfc8:
	.4byte	sUnk_82AEC22
.L_dfcc:
	cmp	r4, #125	@ 0x7d
	bgt	.L_dfd8
	ldr	r0, .L_dfd4
	b	.L_e096
.L_dfd4:
	.4byte	sUnk_82AEC3C
.L_dfd8:
	cmp	r4, #127	@ 0x7f
	bgt	.L_dfe4
	ldr	r0, .L_dfe0
	b	.L_e096
.L_dfe0:
	.4byte	sUnk_82AEBE2
.L_dfe4:
	cmp	r4, #129	@ 0x81
	bgt	.L_dff0
	ldr	r0, .L_dfec
	b	.L_e096
.L_dfec:
	.4byte	sUnk_82AEBAE
.L_dff0:
	cmp	r4, #131	@ 0x83
	bgt	.L_dffc
	ldr	r0, .L_dff8
	b	.L_e096
.L_dff8:
	.4byte	sUnk_82AEBE2
.L_dffc:
	cmp	r4, #133	@ 0x85
	bgt	.L_e008
	ldr	r0, .L_e004
	b	.L_e096
.L_e004:
	.4byte	sUnk_82AEBAE
.L_e008:
	cmp	r4, #135	@ 0x87
	bgt	.L_e014
	ldr	r0, .L_e010
	b	.L_e096
.L_e010:
	.4byte	sUnk_82AEBE2
.L_e014:
	cmp	r4, #185	@ 0xb9
	ble	.L_e094
	cmp	r4, #193	@ 0xc1
	bgt	.L_e024
	ldr	r0, .L_e020
	b	.L_e096
.L_e020:
	.4byte	sUnk_82AEC58
.L_e024:
	cmp	r4, #201	@ 0xc9
	bgt	.L_e030
	ldr	r0, .L_e02c
	b	.L_e096
.L_e02c:
	.4byte	sUnk_82AEC72
.L_e030:
	cmp	r4, #209	@ 0xd1
	bgt	.L_e03c
	ldr	r0, .L_e038
	b	.L_e096
.L_e038:
	.4byte	sUnk_82AEC8C
.L_e03c:
	cmp	r4, #217	@ 0xd9
	bgt	.L_e048
	ldr	r0, .L_e044
	b	.L_e096
.L_e044:
	.4byte	sUnk_82AECA6
.L_e048:
	cmp	r4, #225	@ 0xe1
	bgt	.L_e054
	ldr	r0, .L_e050
	b	.L_e096
.L_e050:
	.4byte	sUnk_82AEC58
.L_e054:
	cmp	r4, #233	@ 0xe9
	bgt	.L_e060
	ldr	r0, .L_e05c
	b	.L_e096
.L_e05c:
	.4byte	sUnk_82AEC72
.L_e060:
	cmp	r4, #241	@ 0xf1
	bgt	.L_e06c
	ldr	r0, .L_e068
	b	.L_e096
.L_e068:
	.4byte	sUnk_82AEC8C
.L_e06c:
	cmp	r4, #249	@ 0xf9
	bgt	.L_e078
	ldr	r0, .L_e074
	b	.L_e096
.L_e074:
	.4byte	sUnk_82AECA6
.L_e078:
	ldr	r0, .L_e088
	cmp	r4, r0
	ble	.L_e094
	ldr	r0, .L_e08c
	cmp	r4, r0
	bgt	.L_e094
	ldr	r0, .L_e090
	b	.L_e096
.L_e088:
	.4byte	0x10D
.L_e08c:
	.4byte	0x121
.L_e090:
	.4byte	sUnk_82AEC08
.L_e094:
	ldr	r0, .L_e0ac
.L_e096:
	str	r0, [r1, #0]
	cmp	r4, #78	@ 0x4e
	bne	.L_e0a2
	ldr	r0, .L_e0b0
	bl	m4aSongNumStartOrChange
.L_e0a2:
	cmp	r4, #134	@ 0x86
	bne	.L_e0b4
	mov	r0, #2
	b	.L_e0c0
	.align	2, 0
.L_e0ac:
	.4byte	sUnk_82AEBC8
.L_e0b0:
	.4byte	0x1A9
.L_e0b4:
	mov	r1, #0
	ldr	r0, .L_e0c8
	cmp	r4, r0
	ble	.L_e0be
	mov	r1, #1
.L_e0be:
	add	r0, r1, #0
.L_e0c0:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e0c8:
	.4byte	0x121


thumb_func_start func_800E0CC
func_800E0CC:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e0e4
	ldr	r0, .L_e0e0
	b	.L_e0f2
.L_e0e0:
	.4byte	sUnk_82AECC0
.L_e0e4:
	cmp	r1, #15
	bgt	.L_e0f0
	ldr	r0, .L_e0ec
	b	.L_e0f2
.L_e0ec:
	.4byte	sUnk_82AEEA0
.L_e0f0:
	ldr	r0, .L_e104
.L_e0f2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_e0fc
	mov	r0, #1
.L_e0fc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e104:
	.4byte	sUnk_82AEED2


thumb_func_start func_800E108
func_800E108:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e120
	ldr	r0, .L_e11c
	b	.L_e12e
.L_e11c:
	.4byte	sUnk_82AECEC
.L_e120:
	cmp	r1, #15
	bgt	.L_e12c
	ldr	r0, .L_e128
	b	.L_e12e
.L_e128:
	.4byte	sUnk_82AEF04
.L_e12c:
	ldr	r0, .L_e140
.L_e12e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_e138
	mov	r0, #1
.L_e138:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e140:
	.4byte	sUnk_82AEF3C


thumb_func_start func_800E144
func_800E144:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e14c
	add	r0, #15
.L_e14c:
	asr	r3, r0, #4
	lsl	r0, r3, #4
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e160
	ldr	r0, .L_e15c
	b	.L_e162
	.align	2, 0
.L_e15c:
	.4byte	sUnk_82AED1E
.L_e160:
	ldr	r0, .L_e170
.L_e162:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #15
	bne	.L_e16c
	mov	r0, #1
.L_e16c:
	bx	lr
	.align	2, 0
.L_e170:
	.4byte	sUnk_82AED3E


thumb_func_start func_800E174
func_800E174:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #47	@ 0x2f
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #14
	bgt	.L_e18c
	ldr	r0, .L_e188
	b	.L_e1b2
.L_e188:
	.4byte	sUnk_82AED5E
.L_e18c:
	cmp	r1, #22
	bgt	.L_e198
	ldr	r0, .L_e194
	b	.L_e1b2
.L_e194:
	.4byte	sUnk_82AED96
.L_e198:
	cmp	r1, #30
	bgt	.L_e1a4
	ldr	r0, .L_e1a0
	b	.L_e1b2
.L_e1a0:
	.4byte	sUnk_82AEDDA
.L_e1a4:
	cmp	r1, #38	@ 0x26
	bgt	.L_e1b0
	ldr	r0, .L_e1ac
	b	.L_e1b2
.L_e1ac:
	.4byte	sUnk_82AEE1E
.L_e1b0:
	ldr	r0, .L_e1c4
.L_e1b2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #46	@ 0x2e
	bne	.L_e1bc
	mov	r0, #1
.L_e1bc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e1c4:
	.4byte	sUnk_82AEE62


thumb_func_start func_800E1C8
func_800E1C8:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e1d0
	add	r0, #31
.L_e1d0:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e1e4
	ldr	r0, .L_e1e0
	b	.L_e1f6
	.align	2, 0
.L_e1e0:
	.4byte	sUnk_82AEF74
.L_e1e4:
	cmp	r3, #15
	ble	.L_e1f4
	cmp	r3, #23
	bgt	.L_e1f4
	ldr	r0, .L_e1f0
	b	.L_e1f6
.L_e1f0:
	.4byte	sUnk_82AEF90
.L_e1f4:
	ldr	r0, .L_e204
.L_e1f6:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e200
	mov	r0, #1
.L_e200:
	bx	lr
	.align	2, 0
.L_e204:
	.4byte	sUnk_82AEF82


thumb_func_start func_800E208
func_800E208:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e210
	add	r0, #31
.L_e210:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e224
	ldr	r0, .L_e220
	b	.L_e236
	.align	2, 0
.L_e220:
	.4byte	sUnk_82AEF9E
.L_e224:
	cmp	r3, #15
	ble	.L_e234
	cmp	r3, #23
	bgt	.L_e234
	ldr	r0, .L_e230
	b	.L_e236
.L_e230:
	.4byte	sUnk_82AEFBA
.L_e234:
	ldr	r0, .L_e244
.L_e236:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e240
	mov	r0, #1
.L_e240:
	bx	lr
	.align	2, 0
.L_e244:
	.4byte	sUnk_82AEFAC


thumb_func_start func_800E248
func_800E248:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e250
	add	r0, #31
.L_e250:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e264
	ldr	r0, .L_e260
	b	.L_e276
	.align	2, 0
.L_e260:
	.4byte	sUnk_82AEFC8
.L_e264:
	cmp	r3, #15
	ble	.L_e274
	cmp	r3, #23
	bgt	.L_e274
	ldr	r0, .L_e270
	b	.L_e276
.L_e270:
	.4byte	sUnk_82AEFF0
.L_e274:
	ldr	r0, .L_e284
.L_e276:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e280
	mov	r0, #1
.L_e280:
	bx	lr
	.align	2, 0
.L_e284:
	.4byte	sUnk_82AEFDC


thumb_func_start func_800E288
func_800E288:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e290
	add	r0, #31
.L_e290:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e2a4
	ldr	r0, .L_e2a0
	b	.L_e2b6
	.align	2, 0
.L_e2a0:
	.4byte	sUnk_82AF004
.L_e2a4:
	cmp	r3, #15
	ble	.L_e2b4
	cmp	r3, #23
	bgt	.L_e2b4
	ldr	r0, .L_e2b0
	b	.L_e2b6
.L_e2b0:
	.4byte	sUnk_82AF02C
.L_e2b4:
	ldr	r0, .L_e2c4
.L_e2b6:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e2c0
	mov	r0, #1
.L_e2c0:
	bx	lr
	.align	2, 0
.L_e2c4:
	.4byte	sUnk_82AF018


thumb_func_start func_800E2C8
func_800E2C8:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e2d0
	add	r0, #31
.L_e2d0:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_e2e4
	ldr	r0, .L_e2e0
	b	.L_e2f6
	.align	2, 0
.L_e2e0:
	.4byte	sUnk_82AF040
.L_e2e4:
	cmp	r3, #15
	ble	.L_e2f4
	cmp	r3, #23
	bgt	.L_e2f4
	ldr	r0, .L_e2f0
	b	.L_e2f6
.L_e2f0:
	.4byte	sUnk_82AF062
.L_e2f4:
	ldr	r0, .L_e304
.L_e2f6:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e300
	mov	r0, #1
.L_e300:
	bx	lr
	.align	2, 0
.L_e304:
	.4byte	sUnk_82AF04E
	.4byte	0x2A001C02
	.4byte	0x301FDA00
	.4byte	0x1581143
	.4byte	0x2B071A13
	.4byte	0x4801DC04
	.4byte	0xE00B
	.4byte	sUnk_82AF07C
	.4byte	0xDD052B0F
	.4byte	0xDC032B17
	.4byte	0xE0024800
	.4byte	sUnk_82AF09E
	.4byte	0x60084803
	.4byte	0x2B1F2000
	.4byte	0x2001D100
	.4byte	0x4770
	.4byte	sUnk_82AF08A
	.4byte	0x2A001C02
	.4byte	0x301FDA00
	.4byte	0x1581143
	.4byte	0x2B071A13
	.4byte	0x4801DC04
	.4byte	0xE00B
	.4byte	sUnk_82AF0B2
	.4byte	0xDD052B0F
	.4byte	0xDC032B17
	.4byte	0xE0024800
	.4byte	sUnk_82AF0CE
	.4byte	0x60084803
	.4byte	0x2B1F2000
	.4byte	0x2001D100
	.4byte	0x4770
	.4byte	sUnk_82AF0C0
	.4byte	0x2A001C02
	.4byte	0x301FDA00
	.4byte	0x1581143
	.4byte	0x2B071A13
	.4byte	0x4801DC04
	.4byte	0xE00B
	.4byte	sUnk_82AF0DC
	.4byte	0xDD052B0F
	.4byte	0xDC032B17
	.4byte	0xE0024800
	.4byte	sUnk_82AF0FE
	.4byte	0x60084803
	.4byte	0x2B1F2000
	.4byte	0x2001D100
	.4byte	0x4770
	.4byte	sUnk_82AF0EA
	.4byte	0x2A001C02
	.4byte	0x303FDA00
	.4byte	0x1981183
	.4byte	0x2B071A13
	.4byte	0x4801DC04
	.4byte	0xE027
	.4byte	sUnk_82AEF74
	.4byte	0xDC032B0F
	.4byte	0xE0204800
	.4byte	sUnk_82AF0B2
	.4byte	0xDC032B17
	.4byte	0xE01A4800
	.4byte	sUnk_82AEF9E
	.4byte	0xDC032B1F
	.4byte	0xE0144800
	.4byte	sUnk_82AF0DC
	.4byte	0xDC032B27
	.4byte	0xE00E4800
	.4byte	sUnk_82AF004
	.4byte	0xDC032B2F
	.4byte	0xE0084800
	.4byte	sUnk_82AF07C
	.4byte	0xDC032B37
	.4byte	0xE0024800
	.4byte	sUnk_82AEFC8
	.4byte	0x60084803
	.4byte	0x2B3F2000
	.4byte	0x2001D100
	.4byte	0x4770
	.4byte	sUnk_82AF040


thumb_func_start func_800E440
func_800E440:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_e44c
	add	r0, #31
.L_e44c:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_e45a
	cmp	r4, #15
	bne	.L_e460
.L_e45a:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_e460:
	cmp	r4, #3
	bgt	.L_e46c
	ldr	r0, .L_e468
	b	.L_e4b6
.L_e468:
	.4byte	sUnk_82AF118
.L_e46c:
	cmp	r4, #7
	bgt	.L_e478
	ldr	r0, .L_e474
	b	.L_e4b6
.L_e474:
	.4byte	sUnk_82AF14A
.L_e478:
	cmp	r4, #11
	bgt	.L_e484
	ldr	r0, .L_e480
	b	.L_e4b6
.L_e480:
	.4byte	sUnk_82AF176
.L_e484:
	cmp	r4, #15
	bgt	.L_e490
	ldr	r0, .L_e48c
	b	.L_e4b6
.L_e48c:
	.4byte	sUnk_82AF1A8
.L_e490:
	cmp	r4, #19
	bgt	.L_e49c
	ldr	r0, .L_e498
	b	.L_e4b6
.L_e498:
	.4byte	sUnk_82AF1DA
.L_e49c:
	cmp	r4, #23
	bgt	.L_e4a8
	ldr	r0, .L_e4a4
	b	.L_e4b6
.L_e4a4:
	.4byte	sUnk_82AF20C
.L_e4a8:
	cmp	r4, #27
	bgt	.L_e4b4
	ldr	r0, .L_e4b0
	b	.L_e4b6
.L_e4b0:
	.4byte	sUnk_82AF238
.L_e4b4:
	ldr	r0, .L_e4c8
.L_e4b6:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_e4c0
	mov	r0, #1
.L_e4c0:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e4c8:
	.4byte	sUnk_82AF26A


thumb_func_start func_800E4CC
func_800E4CC:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e4e4
	ldr	r0, .L_e4e0
	b	.L_e4f2
.L_e4e0:
	.4byte	sUnk_82AF29C
.L_e4e4:
	cmp	r1, #15
	bgt	.L_e4f0
	ldr	r0, .L_e4ec
	b	.L_e4f2
.L_e4ec:
	.4byte	sUnk_82AF2D4
.L_e4f0:
	ldr	r0, .L_e504
.L_e4f2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_e4fc
	mov	r0, #1
.L_e4fc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e504:
	.4byte	sUnk_82AF30C


thumb_func_start func_800E508
func_800E508:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_e514
	add	r0, #31
.L_e514:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_e522
	cmp	r4, #15
	bne	.L_e528
.L_e522:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_e528:
	cmp	r4, #3
	bgt	.L_e534
	ldr	r0, .L_e530
	b	.L_e57e
.L_e530:
	.4byte	sUnk_82AF344
.L_e534:
	cmp	r4, #7
	bgt	.L_e540
	ldr	r0, .L_e53c
	b	.L_e57e
.L_e53c:
	.4byte	sUnk_82AF370
.L_e540:
	cmp	r4, #11
	bgt	.L_e54c
	ldr	r0, .L_e548
	b	.L_e57e
.L_e548:
	.4byte	sUnk_82AF3A2
.L_e54c:
	cmp	r4, #15
	bgt	.L_e558
	ldr	r0, .L_e554
	b	.L_e57e
.L_e554:
	.4byte	sUnk_82AF3D4
.L_e558:
	cmp	r4, #19
	bgt	.L_e564
	ldr	r0, .L_e560
	b	.L_e57e
.L_e560:
	.4byte	sUnk_82AF406
.L_e564:
	cmp	r4, #23
	bgt	.L_e570
	ldr	r0, .L_e56c
	b	.L_e57e
.L_e56c:
	.4byte	sUnk_82AF432
.L_e570:
	cmp	r4, #27
	bgt	.L_e57c
	ldr	r0, .L_e578
	b	.L_e57e
.L_e578:
	.4byte	sUnk_82AF464
.L_e57c:
	ldr	r0, .L_e590
.L_e57e:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_e588
	mov	r0, #1
.L_e588:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e590:
	.4byte	sUnk_82AF496


thumb_func_start func_800E594
func_800E594:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #48	@ 0x30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e5ac
	ldr	r0, .L_e5a8
	b	.L_e5de
.L_e5a8:
	.4byte	sUnk_82AF29C
.L_e5ac:
	cmp	r1, #15
	bgt	.L_e5b8
	ldr	r0, .L_e5b4
	b	.L_e5de
.L_e5b4:
	.4byte	sUnk_82AF2D4
.L_e5b8:
	cmp	r1, #23
	bgt	.L_e5c4
	ldr	r0, .L_e5c0
	b	.L_e5de
.L_e5c0:
	.4byte	sUnk_82AF500
.L_e5c4:
	cmp	r1, #31
	bgt	.L_e5d0
	ldr	r0, .L_e5cc
	b	.L_e5de
.L_e5cc:
	.4byte	sUnk_82AF4C8
.L_e5d0:
	cmp	r1, #39	@ 0x27
	bgt	.L_e5dc
	ldr	r0, .L_e5d8
	b	.L_e5de
.L_e5d8:
	.4byte	sUnk_82AF30C
.L_e5dc:
	ldr	r0, .L_e5f0
.L_e5de:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #47	@ 0x2f
	bne	.L_e5e8
	mov	r0, #1
.L_e5e8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e5f0:
	.4byte	sUnk_82AF538


thumb_func_start func_800E5F4
func_800E5F4:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_e600
	add	r0, #31
.L_e600:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_e60e
	cmp	r4, #15
	bne	.L_e614
.L_e60e:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_e614:
	cmp	r4, #3
	bgt	.L_e620
	ldr	r0, .L_e61c
	b	.L_e66a
.L_e61c:
	.4byte	sUnk_82AF570
.L_e620:
	cmp	r4, #7
	bgt	.L_e62c
	ldr	r0, .L_e628
	b	.L_e66a
.L_e628:
	.4byte	sUnk_82AF5A8
.L_e62c:
	cmp	r4, #11
	bgt	.L_e638
	ldr	r0, .L_e634
	b	.L_e66a
.L_e634:
	.4byte	sUnk_82AF5DA
.L_e638:
	cmp	r4, #15
	bgt	.L_e644
	ldr	r0, .L_e640
	b	.L_e66a
.L_e640:
	.4byte	sUnk_82AF612
.L_e644:
	cmp	r4, #19
	bgt	.L_e650
	ldr	r0, .L_e64c
	b	.L_e66a
.L_e64c:
	.4byte	sUnk_82AF64A
.L_e650:
	cmp	r4, #23
	bgt	.L_e65c
	ldr	r0, .L_e658
	b	.L_e66a
.L_e658:
	.4byte	sUnk_82AF682
.L_e65c:
	cmp	r4, #27
	bgt	.L_e668
	ldr	r0, .L_e664
	b	.L_e66a
.L_e664:
	.4byte	sUnk_82AF6B4
.L_e668:
	ldr	r0, .L_e67c
.L_e66a:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_e674
	mov	r0, #1
.L_e674:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e67c:
	.4byte	sUnk_82AF6EC


thumb_func_start func_800E680
func_800E680:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_e688
	add	r0, #31
.L_e688:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #3
	bgt	.L_e69c
	ldr	r0, .L_e698
	b	.L_e6e6
	.align	2, 0
.L_e698:
	.4byte	sUnk_82AF724
.L_e69c:
	cmp	r3, #7
	bgt	.L_e6a8
	ldr	r0, .L_e6a4
	b	.L_e6e6
.L_e6a4:
	.4byte	sUnk_82AF72C
.L_e6a8:
	cmp	r3, #11
	bgt	.L_e6b4
	ldr	r0, .L_e6b0
	b	.L_e6e6
.L_e6b0:
	.4byte	sUnk_82AF734
.L_e6b4:
	cmp	r3, #15
	bgt	.L_e6c0
	ldr	r0, .L_e6bc
	b	.L_e6e6
.L_e6bc:
	.4byte	sUnk_82AF73C
.L_e6c0:
	cmp	r3, #19
	bgt	.L_e6cc
	ldr	r0, .L_e6c8
	b	.L_e6e6
.L_e6c8:
	.4byte	sUnk_82AF744
.L_e6cc:
	cmp	r3, #23
	bgt	.L_e6d8
	ldr	r0, .L_e6d4
	b	.L_e6e6
.L_e6d4:
	.4byte	sUnk_82AF74C
.L_e6d8:
	cmp	r3, #27
	bgt	.L_e6e4
	ldr	r0, .L_e6e0
	b	.L_e6e6
.L_e6e0:
	.4byte	sUnk_82AF754
.L_e6e4:
	ldr	r0, .L_e6f4
.L_e6e6:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_e6f0
	mov	r0, #1
.L_e6f0:
	bx	lr
	.align	2, 0
.L_e6f4:
	.4byte	sUnk_82AF75C


thumb_func_start func_800E6F8
func_800E6F8:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #48	@ 0x30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e710
	ldr	r0, .L_e70c
	b	.L_e73a
.L_e70c:
	.4byte	sUnk_82AF77C
.L_e710:
	cmp	r1, #15
	bgt	.L_e71c
	ldr	r0, .L_e718
	b	.L_e73a
.L_e718:
	.4byte	sUnk_82AF7B4
.L_e71c:
	cmp	r1, #23
	ble	.L_e738
	cmp	r1, #31
	bgt	.L_e72c
	ldr	r0, .L_e728
	b	.L_e73a
.L_e728:
	.4byte	sUnk_82AF77C
.L_e72c:
	cmp	r1, #39	@ 0x27
	bgt	.L_e738
	ldr	r0, .L_e734
	b	.L_e73a
.L_e734:
	.4byte	sUnk_82AF7B4
.L_e738:
	ldr	r0, .L_e74c
.L_e73a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #47	@ 0x2f
	bne	.L_e744
	mov	r0, #1
.L_e744:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e74c:
	.4byte	sUnk_82AF7EC


thumb_func_start func_800E750
func_800E750:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #48	@ 0x30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_e768
	ldr	r0, .L_e764
	b	.L_e792
.L_e764:
	.4byte	sUnk_82AF824
.L_e768:
	cmp	r1, #15
	bgt	.L_e774
	ldr	r0, .L_e770
	b	.L_e792
.L_e770:
	.4byte	sUnk_82AF82C
.L_e774:
	cmp	r1, #23
	ble	.L_e790
	cmp	r1, #31
	bgt	.L_e784
	ldr	r0, .L_e780
	b	.L_e792
.L_e780:
	.4byte	sUnk_82AF824
.L_e784:
	cmp	r1, #39	@ 0x27
	bgt	.L_e790
	ldr	r0, .L_e78c
	b	.L_e792
.L_e78c:
	.4byte	sUnk_82AF82C
.L_e790:
	ldr	r0, .L_e7a4
.L_e792:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #47	@ 0x2f
	bne	.L_e79c
	mov	r0, #1
.L_e79c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e7a4:
	.4byte	sUnk_82AF834


thumb_func_start func_800E7A8
func_800E7A8:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r1, #0
	cmp	r4, #0
	blt	.L_e7bc
	ldr	r1, .L_e7f4
	cmp	r4, r1
	bhi	.L_e7bc
	add	r1, r4, #0
.L_e7bc:
	ldr	r0, .L_e7f8
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e7fc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e800
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e804
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_e7f4
	cmp	r4, r0
	bne	.L_e7ea
	mov	r1, #1
.L_e7ea:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e7f4:
	.4byte	0x10D
.L_e7f8:
	.4byte	sUnk_82AF83C
.L_e7fc:
	.4byte	sUnk_82AFA58
.L_e800:
	.4byte	sUnk_82AFC74
.L_e804:
	.4byte	sUnk_82AFE90


thumb_func_start func_800E808
func_800E808:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r1, #0
	cmp	r4, #0
	blt	.L_e81c
	ldr	r1, .L_e854
	cmp	r4, r1
	bhi	.L_e81c
	add	r1, r4, #0
.L_e81c:
	ldr	r0, .L_e858
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e85c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e860
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e864
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_e854
	cmp	r4, r0
	bne	.L_e84a
	mov	r1, #1
.L_e84a:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e854:
	.4byte	0x10D
.L_e858:
	.4byte	sUnk_82B00AC
.L_e85c:
	.4byte	sUnk_82B02C8
.L_e860:
	.4byte	sUnk_82B04E4
.L_e864:
	.4byte	sUnk_82B0700


thumb_func_start func_800E868
func_800E868:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r1, #0
	cmp	r4, #0
	blt	.L_e87c
	ldr	r1, .L_e8b4
	cmp	r4, r1
	bhi	.L_e87c
	add	r1, r4, #0
.L_e87c:
	ldr	r0, .L_e8b8
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e8bc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e8c0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e8c4
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_e8b4
	cmp	r4, r0
	bne	.L_e8aa
	mov	r1, #1
.L_e8aa:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e8b4:
	.4byte	0x10D
.L_e8b8:
	.4byte	sUnk_82B091C
.L_e8bc:
	.4byte	sUnk_82B0B38
.L_e8c0:
	.4byte	sUnk_82B0D54
.L_e8c4:
	.4byte	sUnk_82B0F70


thumb_func_start func_800E8C8
func_800E8C8:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r1, #0
	cmp	r4, #0
	blt	.L_e8dc
	ldr	r1, .L_e914
	cmp	r4, r1
	bhi	.L_e8dc
	add	r1, r4, #0
.L_e8dc:
	ldr	r0, .L_e918
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e91c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e920
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e924
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_e914
	cmp	r4, r0
	bne	.L_e90a
	mov	r1, #1
.L_e90a:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_e914:
	.4byte	0x10D
.L_e918:
	.4byte	sUnk_82B118C
.L_e91c:
	.4byte	sUnk_82B13A8
.L_e920:
	.4byte	sUnk_82B15C4
.L_e924:
	.4byte	sUnk_82B17E0


thumb_func_start func_800E928
func_800E928:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_e970
	cmp	r4, r0
	bls	.L_e938
	add	r1, r0, #0
.L_e938:
	ldr	r0, .L_e974
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e978
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e97c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e980
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_e968
	mov	r1, #1
.L_e968:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_e970:
	.4byte	0x117
.L_e974:
	.4byte	sUnk_82B19FC
.L_e978:
	.4byte	sUnk_82B1C2C
.L_e97c:
	.4byte	sUnk_82B1E5C
.L_e980:
	.4byte	sUnk_82B208C


thumb_func_start func_800E984
func_800E984:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_e9cc
	cmp	r4, r0
	bls	.L_e994
	add	r1, r0, #0
.L_e994:
	ldr	r0, .L_e9d0
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_e9d4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_e9d8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_e9dc
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_e9c4
	mov	r1, #1
.L_e9c4:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_e9cc:
	.4byte	0x117
.L_e9d0:
	.4byte	sUnk_82B22BC
.L_e9d4:
	.4byte	sUnk_82B24EC
.L_e9d8:
	.4byte	sUnk_82B271C
.L_e9dc:
	.4byte	sUnk_82B294C


thumb_func_start func_800E9E0
func_800E9E0:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_ea28
	cmp	r4, r0
	bls	.L_e9f0
	add	r1, r0, #0
.L_e9f0:
	ldr	r0, .L_ea2c
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ea30
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ea34
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ea38
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ea20
	mov	r1, #1
.L_ea20:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ea28:
	.4byte	0x117
.L_ea2c:
	.4byte	sUnk_82B2B7C
.L_ea30:
	.4byte	sUnk_82B2DAC
.L_ea34:
	.4byte	sUnk_82B2FDC
.L_ea38:
	.4byte	sUnk_82B320C


thumb_func_start func_800EA3C
func_800EA3C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_ea84
	cmp	r4, r0
	bls	.L_ea4c
	add	r1, r0, #0
.L_ea4c:
	ldr	r0, .L_ea88
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ea8c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ea90
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ea94
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ea7c
	mov	r1, #1
.L_ea7c:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ea84:
	.4byte	0x117
.L_ea88:
	.4byte	sUnk_82B343C
.L_ea8c:
	.4byte	sUnk_82B366C
.L_ea90:
	.4byte	sUnk_82B389C
.L_ea94:
	.4byte	sUnk_82B3ACC


thumb_func_start func_800EA98
func_800EA98:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_eae0
	cmp	r4, r0
	bls	.L_eaa8
	add	r1, r0, #0
.L_eaa8:
	ldr	r0, .L_eae4
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_eae8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_eaec
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_eaf0
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ead8
	mov	r1, #1
.L_ead8:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_eae0:
	.4byte	0x117
.L_eae4:
	.4byte	sUnk_82B3CFC
.L_eae8:
	.4byte	sUnk_82B3F2C
.L_eaec:
	.4byte	sUnk_82B415C
.L_eaf0:
	.4byte	sUnk_82B438C


thumb_func_start func_800EAF4
func_800EAF4:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_eb3c
	cmp	r4, r0
	bls	.L_eb04
	add	r1, r0, #0
.L_eb04:
	ldr	r0, .L_eb40
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_eb44
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_eb48
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_eb4c
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_eb34
	mov	r1, #1
.L_eb34:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_eb3c:
	.4byte	0x117
.L_eb40:
	.4byte	sUnk_82B45BC
.L_eb44:
	.4byte	sUnk_82B47EC
.L_eb48:
	.4byte	sUnk_82B4A1C
.L_eb4c:
	.4byte	sUnk_82B4C4C


thumb_func_start func_800EB50
func_800EB50:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_eb98
	cmp	r4, r0
	bls	.L_eb60
	add	r1, r0, #0
.L_eb60:
	ldr	r0, .L_eb9c
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_eba0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_eba4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_eba8
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_eb90
	mov	r1, #1
.L_eb90:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_eb98:
	.4byte	0x117
.L_eb9c:
	.4byte	sUnk_82B4E7C
.L_eba0:
	.4byte	sUnk_82B50AC
.L_eba4:
	.4byte	sUnk_82B52DC
.L_eba8:
	.4byte	sUnk_82B550C


thumb_func_start func_800EBAC
func_800EBAC:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	ldr	r0, .L_ebf4
	cmp	r4, r0
	bls	.L_ebbc
	add	r1, r0, #0
.L_ebbc:
	ldr	r0, .L_ebf8
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ebfc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ec00
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ec04
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ebec
	mov	r1, #1
.L_ebec:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ebf4:
	.4byte	0x117
.L_ebf8:
	.4byte	sUnk_82B573C
.L_ebfc:
	.4byte	sUnk_82B596C
.L_ec00:
	.4byte	sUnk_82B5B9C
.L_ec04:
	.4byte	sUnk_82B5DCC


thumb_func_start func_800EC08
func_800EC08:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ec1a
	add	r1, r0, #0
.L_ec1a:
	ldr	r0, .L_ec50
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ec54
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ec58
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ec5c
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ec60
	cmp	r4, r0
	bls	.L_ec48
	mov	r1, #1
.L_ec48:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ec50:
	.4byte	sUnk_82B5FFC
.L_ec54:
	.4byte	sUnk_82B622E
.L_ec58:
	.4byte	sUnk_82B6460
.L_ec5c:
	.4byte	sUnk_82B6692
.L_ec60:
	.4byte	0x117


thumb_func_start func_800EC64
func_800EC64:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ec76
	add	r1, r0, #0
.L_ec76:
	ldr	r0, .L_ecac
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ecb0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ecb4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ecb8
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ecbc
	cmp	r4, r0
	bls	.L_eca4
	mov	r1, #1
.L_eca4:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ecac:
	.4byte	sUnk_82B68C4
.L_ecb0:
	.4byte	sUnk_82B6AF6
.L_ecb4:
	.4byte	sUnk_82B6D28
.L_ecb8:
	.4byte	sUnk_82B6F5A
.L_ecbc:
	.4byte	0x117


thumb_func_start func_800ECC0
func_800ECC0:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ecd2
	add	r1, r0, #0
.L_ecd2:
	ldr	r0, .L_ed08
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ed0c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ed10
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ed14
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ed18
	cmp	r4, r0
	bls	.L_ed00
	mov	r1, #1
.L_ed00:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ed08:
	.4byte	sUnk_82B718C
.L_ed0c:
	.4byte	sUnk_82B73BE
.L_ed10:
	.4byte	sUnk_82B75F0
.L_ed14:
	.4byte	sUnk_82B7822
.L_ed18:
	.4byte	0x117


thumb_func_start func_800ED1C
func_800ED1C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ed2e
	add	r1, r0, #0
.L_ed2e:
	ldr	r0, .L_ed64
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ed68
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ed6c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ed70
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ed74
	cmp	r4, r0
	bls	.L_ed5c
	mov	r1, #1
.L_ed5c:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ed64:
	.4byte	sUnk_82B7A54
.L_ed68:
	.4byte	sUnk_82B7C86
.L_ed6c:
	.4byte	sUnk_82B7EB8
.L_ed70:
	.4byte	sUnk_82B80EA
.L_ed74:
	.4byte	0x117


thumb_func_start func_800ED78
func_800ED78:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ed8a
	add	r1, r0, #0
.L_ed8a:
	ldr	r0, .L_edc0
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_edc4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_edc8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_edcc
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_edd0
	cmp	r4, r0
	bls	.L_edb8
	mov	r1, #1
.L_edb8:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_edc0:
	.4byte	sUnk_82B831C
.L_edc4:
	.4byte	sUnk_82B854E
.L_edc8:
	.4byte	sUnk_82B8780
.L_edcc:
	.4byte	sUnk_82B89B2
.L_edd0:
	.4byte	0x117


thumb_func_start func_800EDD4
func_800EDD4:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ede6
	add	r1, r0, #0
.L_ede6:
	ldr	r0, .L_ee1c
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ee20
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ee24
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ee28
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ee2c
	cmp	r4, r0
	bls	.L_ee14
	mov	r1, #1
.L_ee14:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ee1c:
	.4byte	sUnk_82B8BE4
.L_ee20:
	.4byte	sUnk_82B8E16
.L_ee24:
	.4byte	sUnk_82B9048
.L_ee28:
	.4byte	sUnk_82B927A
.L_ee2c:
	.4byte	0x117


thumb_func_start func_800EE30
func_800EE30:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ee42
	add	r1, r0, #0
.L_ee42:
	ldr	r0, .L_ee78
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ee7c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ee80
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ee84
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ee88
	cmp	r4, r0
	bls	.L_ee70
	mov	r1, #1
.L_ee70:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ee78:
	.4byte	sUnk_82B94AC
.L_ee7c:
	.4byte	sUnk_82B96DE
.L_ee80:
	.4byte	sUnk_82B9910
.L_ee84:
	.4byte	sUnk_82B9B42
.L_ee88:
	.4byte	0x117


thumb_func_start func_800EE8C
func_800EE8C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ee9e
	add	r1, r0, #0
.L_ee9e:
	ldr	r0, .L_eed4
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_eed8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_eedc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_eee0
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_eee4
	cmp	r4, r0
	bls	.L_eecc
	mov	r1, #1
.L_eecc:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_eed4:
	.4byte	sUnk_82B9D74
.L_eed8:
	.4byte	sUnk_82B9FA6
.L_eedc:
	.4byte	sUnk_82BA1D8
.L_eee0:
	.4byte	sUnk_82BA40A
.L_eee4:
	.4byte	0x117


thumb_func_start func_800EEE8
func_800EEE8:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_eefa
	add	r1, r0, #0
.L_eefa:
	ldr	r0, .L_ef30
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ef34
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ef38
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ef3c
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ef40
	cmp	r4, r0
	bls	.L_ef28
	mov	r1, #1
.L_ef28:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ef30:
	.4byte	sUnk_82BA63C
.L_ef34:
	.4byte	sUnk_82BA86E
.L_ef38:
	.4byte	sUnk_82BAAA0
.L_ef3c:
	.4byte	sUnk_82BACD2
.L_ef40:
	.4byte	0x117


thumb_func_start func_800EF44
func_800EF44:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_ef56
	add	r1, r0, #0
.L_ef56:
	ldr	r0, .L_ef8c
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_ef90
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_ef94
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_ef98
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_ef9c
	cmp	r4, r0
	bls	.L_ef84
	mov	r1, #1
.L_ef84:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_ef8c:
	.4byte	sUnk_82BAF04
.L_ef90:
	.4byte	sUnk_82BB136
.L_ef94:
	.4byte	sUnk_82BB368
.L_ef98:
	.4byte	sUnk_82BB59A
.L_ef9c:
	.4byte	0x117


thumb_func_start func_800EFA0
func_800EFA0:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_efb2
	add	r1, r0, #0
.L_efb2:
	ldr	r0, .L_efe8
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_efec
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_eff0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_eff4
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_eff8
	cmp	r4, r0
	bls	.L_efe0
	mov	r1, #1
.L_efe0:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_efe8:
	.4byte	sUnk_82BB7CC
.L_efec:
	.4byte	sUnk_82BB9FE
.L_eff0:
	.4byte	sUnk_82BBC30
.L_eff4:
	.4byte	sUnk_82BBE62
.L_eff8:
	.4byte	0x117


thumb_func_start func_800EFFC
func_800EFFC:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f00e
	add	r1, r0, #0
.L_f00e:
	ldr	r0, .L_f044
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f048
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f04c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f050
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f054
	cmp	r4, r0
	bls	.L_f03c
	mov	r1, #1
.L_f03c:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f044:
	.4byte	sUnk_82BC094
.L_f048:
	.4byte	sUnk_82BC2C6
.L_f04c:
	.4byte	sUnk_82BC4F8
.L_f050:
	.4byte	sUnk_82BC72A
.L_f054:
	.4byte	0x117


thumb_func_start func_800F058
func_800F058:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f06a
	add	r1, r0, #0
.L_f06a:
	ldr	r0, .L_f0a0
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f0a4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f0a8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f0ac
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f0b0
	cmp	r4, r0
	bls	.L_f098
	mov	r1, #1
.L_f098:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f0a0:
	.4byte	sUnk_82BC95C
.L_f0a4:
	.4byte	sUnk_82BCB8E
.L_f0a8:
	.4byte	sUnk_82BCDC0
.L_f0ac:
	.4byte	sUnk_82BCFF2
.L_f0b0:
	.4byte	0x117


thumb_func_start func_800F0B4
func_800F0B4:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f0c6
	add	r1, r0, #0
.L_f0c6:
	ldr	r0, .L_f0fc
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f100
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f104
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f108
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f10c
	cmp	r4, r0
	bls	.L_f0f4
	mov	r1, #1
.L_f0f4:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f0fc:
	.4byte	sUnk_82BD224
.L_f100:
	.4byte	sUnk_82BD456
.L_f104:
	.4byte	sUnk_82BD688
.L_f108:
	.4byte	sUnk_82BD8BA
.L_f10c:
	.4byte	0x117


thumb_func_start func_800F110
func_800F110:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f122
	add	r1, r0, #0
.L_f122:
	ldr	r0, .L_f158
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f15c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f160
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f164
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f168
	cmp	r4, r0
	bls	.L_f150
	mov	r1, #1
.L_f150:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f158:
	.4byte	sUnk_82BDAEC
.L_f15c:
	.4byte	sUnk_82BDD1E
.L_f160:
	.4byte	sUnk_82BDF50
.L_f164:
	.4byte	sUnk_82BE182
.L_f168:
	.4byte	0x117


thumb_func_start func_800F16C
func_800F16C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f17e
	add	r1, r0, #0
.L_f17e:
	ldr	r0, .L_f1b4
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f1b8
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f1bc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f1c0
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f1c4
	cmp	r4, r0
	bls	.L_f1ac
	mov	r1, #1
.L_f1ac:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f1b4:
	.4byte	sUnk_82BE3B4
.L_f1b8:
	.4byte	sUnk_82BE5E6
.L_f1bc:
	.4byte	sUnk_82BE818
.L_f1c0:
	.4byte	sUnk_82BEA4A
.L_f1c4:
	.4byte	0x117


thumb_func_start func_800F1C8
func_800F1C8:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f1da
	add	r1, r0, #0
.L_f1da:
	ldr	r0, .L_f210
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f214
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f218
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f21c
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f220
	cmp	r4, r0
	bls	.L_f208
	mov	r1, #1
.L_f208:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f210:
	.4byte	sUnk_82BEC7C
.L_f214:
	.4byte	sUnk_82BEEAE
.L_f218:
	.4byte	sUnk_82BF0E0
.L_f21c:
	.4byte	sUnk_82BF312
.L_f220:
	.4byte	0x117


thumb_func_start func_800F224
func_800F224:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f236
	add	r1, r0, #0
.L_f236:
	ldr	r0, .L_f26c
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f270
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f274
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f278
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f27c
	cmp	r4, r0
	bls	.L_f264
	mov	r1, #1
.L_f264:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f26c:
	.4byte	sUnk_82BF544
.L_f270:
	.4byte	sUnk_82BF776
.L_f274:
	.4byte	sUnk_82BF9A8
.L_f278:
	.4byte	sUnk_82BFBDA
.L_f27c:
	.4byte	0x117


thumb_func_start func_800F280
func_800F280:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f292
	add	r1, r0, #0
.L_f292:
	ldr	r0, .L_f2c8
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f2cc
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f2d0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f2d4
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f2d8
	cmp	r4, r0
	bls	.L_f2c0
	mov	r1, #1
.L_f2c0:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f2c8:
	.4byte	sUnk_82BFE0C
.L_f2cc:
	.4byte	sUnk_82C003E
.L_f2d0:
	.4byte	sUnk_82C0270
.L_f2d4:
	.4byte	sUnk_82C04A2
.L_f2d8:
	.4byte	0x117


thumb_func_start func_800F2DC
func_800F2DC:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f2ee
	add	r1, r0, #0
.L_f2ee:
	ldr	r0, .L_f324
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f328
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f32c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f330
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f334
	cmp	r4, r0
	bls	.L_f31c
	mov	r1, #1
.L_f31c:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f324:
	.4byte	sUnk_82C06D4
.L_f328:
	.4byte	sUnk_82C0906
.L_f32c:
	.4byte	sUnk_82C0B38
.L_f330:
	.4byte	sUnk_82C0D6A
.L_f334:
	.4byte	0x117


thumb_func_start func_800F338
func_800F338:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f34a
	add	r1, r0, #0
.L_f34a:
	ldr	r0, .L_f380
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f384
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f388
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f38c
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f390
	cmp	r4, r0
	bls	.L_f378
	mov	r1, #1
.L_f378:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f380:
	.4byte	sUnk_82C0F9C
.L_f384:
	.4byte	sUnk_82C11CE
.L_f388:
	.4byte	sUnk_82C1400
.L_f38c:
	.4byte	sUnk_82C1632
.L_f390:
	.4byte	0x117


thumb_func_start func_800F394
func_800F394:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f3a6
	add	r1, r0, #0
.L_f3a6:
	ldr	r0, .L_f3dc
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f3e0
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f3e4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f3e8
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f3ec
	cmp	r4, r0
	bls	.L_f3d4
	mov	r1, #1
.L_f3d4:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f3dc:
	.4byte	sUnk_82C1864
.L_f3e0:
	.4byte	sUnk_82C1A96
.L_f3e4:
	.4byte	sUnk_82C1CC8
.L_f3e8:
	.4byte	sUnk_82C1EFA
.L_f3ec:
	.4byte	0x117


thumb_func_start func_800F3F0
func_800F3F0:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f402
	add	r1, r0, #0
.L_f402:
	ldr	r0, .L_f438
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f43c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f440
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f444
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f448
	cmp	r4, r0
	bls	.L_f430
	mov	r1, #1
.L_f430:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f438:
	.4byte	sUnk_82C212C
.L_f43c:
	.4byte	sUnk_82C235E
.L_f440:
	.4byte	sUnk_82C2590
.L_f444:
	.4byte	sUnk_82C27C2
.L_f448:
	.4byte	0x117


thumb_func_start func_800F44C
func_800F44C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r1, r4, #0
	mov	r0, #140	@ 0x8c
	lsl	r0, r0, #1
	cmp	r4, r0
	bls	.L_f45e
	add	r1, r0, #0
.L_f45e:
	ldr	r0, .L_f494
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #0]
	ldr	r0, .L_f498
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r0, .L_f49c
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_f4a0
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldr	r0, [sp, #12]
	strh	r1, [r0, #0]
	mov	r1, #0
	ldr	r0, .L_f4a4
	cmp	r4, r0
	bls	.L_f48c
	mov	r1, #1
.L_f48c:
	add	r0, r1, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f494:
	.4byte	sUnk_82C29F4
.L_f498:
	.4byte	sUnk_82C2C26
.L_f49c:
	.4byte	sUnk_82C2E58
.L_f4a0:
	.4byte	sUnk_82C308A
.L_f4a4:
	.4byte	0x117


thumb_func_start func_800F4A8
func_800F4A8:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	add	r7, r2, #0
	mov	ip, r3
	ldr	r6, .L_f4e8
	cmp	r4, r6
	bls	.L_f4ba
	add	r4, r6, #0
.L_f4ba:
	ldr	r0, .L_f4ec
	lsl	r1, r5, #2
	add	r0, r1, r0
	ldr	r2, [r0, #0]
	ldr	r0, .L_f4f0
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	lsl	r0, r4, #1
	add	r2, r0, r2
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #0]
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #0
	cmp	r4, r6
	bne	.L_f4e0
	mov	r0, #1
.L_f4e0:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f4e8:
	.4byte	0x2BA
.L_f4ec:
	.4byte	sUnk_878E7A0
.L_f4f0:
	.4byte	sUnk_878E7B0


thumb_func_start func_800F4F4
func_800F4F4:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r2, .L_f524
	cmp	r3, r2
	bls	.L_f504
	add	r3, r2, #0
.L_f504:
	ldr	r0, .L_f528
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f52c
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f51e
	mov	r0, #1
.L_f51e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f524:
	.4byte	0x1D3
.L_f528:
	.4byte	sUnk_82C6128
.L_f52c:
	.4byte	sUnk_82C64D0


thumb_func_start func_800F530
func_800F530:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r2, .L_f560
	cmp	r3, r2
	bls	.L_f540
	add	r3, r2, #0
.L_f540:
	ldr	r0, .L_f564
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f568
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f55a
	mov	r0, #1
.L_f55a:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f560:
	.4byte	0x1D3
.L_f564:
	.4byte	sUnk_82C6878
.L_f568:
	.4byte	sUnk_82C6C20


thumb_func_start func_800F56C
func_800F56C:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r2, .L_f59c
	cmp	r3, r2
	bls	.L_f57c
	add	r3, r2, #0
.L_f57c:
	ldr	r0, .L_f5a0
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f5a4
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f596
	mov	r0, #1
.L_f596:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f59c:
	.4byte	0x1D3
.L_f5a0:
	.4byte	sUnk_82C6FC8
.L_f5a4:
	.4byte	sUnk_82C7370


thumb_func_start func_800F5A8
func_800F5A8:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r2, .L_f5d8
	cmp	r3, r2
	bls	.L_f5b8
	add	r3, r2, #0
.L_f5b8:
	ldr	r0, .L_f5dc
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f5e0
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f5d2
	mov	r0, #1
.L_f5d2:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f5d8:
	.4byte	0x1D3
.L_f5dc:
	.4byte	sUnk_82C7718
.L_f5e0:
	.4byte	sUnk_82C7AC0


thumb_func_start func_800F5E4
func_800F5E4:
	push	{r4, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	cmp	r3, #252	@ 0xfc
	bls	.L_f5f0
	mov	r3, #252	@ 0xfc
.L_f5f0:
	ldr	r0, .L_f610
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f614
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	mov	r0, #0
	cmp	r3, #252	@ 0xfc
	bne	.L_f60a
	mov	r0, #1
.L_f60a:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_f610:
	.4byte	sUnk_82C7E68
.L_f614:
	.4byte	sUnk_82C8062


thumb_func_start func_800F618
func_800F618:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #134	@ 0x86
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f62a
	add	r3, r2, #0
.L_f62a:
	ldr	r0, .L_f64c
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f650
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f644
	mov	r0, #1
.L_f644:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f64c:
	.4byte	sUnk_82C825C
.L_f650:
	.4byte	sUnk_82C8476


thumb_func_start func_800F654
func_800F654:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #130	@ 0x82
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f666
	add	r3, r2, #0
.L_f666:
	ldr	r0, .L_f688
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f68c
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f680
	mov	r0, #1
.L_f680:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f688:
	.4byte	sUnk_82C8690
.L_f68c:
	.4byte	sUnk_82C889A


thumb_func_start func_800F690
func_800F690:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r2, .L_f6c0
	cmp	r3, r2
	bls	.L_f6a0
	add	r3, r2, #0
.L_f6a0:
	ldr	r0, .L_f6c4
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f6c8
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f6ba
	mov	r0, #1
.L_f6ba:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_f6c0:
	.4byte	0x115
.L_f6c4:
	.4byte	sUnk_82C8AA4
.L_f6c8:
	.4byte	sUnk_82C8CD0


thumb_func_start func_800F6CC
func_800F6CC:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f6de
	add	r3, r2, #0
.L_f6de:
	ldr	r0, .L_f700
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f704
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f6f8
	mov	r0, #1
.L_f6f8:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f700:
	.4byte	sUnk_82C8EFC
.L_f704:
	.4byte	sUnk_82C90FE


thumb_func_start func_800F708
func_800F708:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #136	@ 0x88
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f71a
	add	r3, r2, #0
.L_f71a:
	ldr	r0, .L_f73c
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f740
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f734
	mov	r0, #1
.L_f734:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f73c:
	.4byte	sUnk_82C9300
.L_f740:
	.4byte	sUnk_82C9522


thumb_func_start func_800F744
func_800F744:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f756
	add	r3, r2, #0
.L_f756:
	ldr	r0, .L_f778
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f77c
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f770
	mov	r0, #1
.L_f770:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f778:
	.4byte	sUnk_82C9744
.L_f77c:
	.4byte	sUnk_82C9956


thumb_func_start func_800F780
func_800F780:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r2, #140	@ 0x8c
	lsl	r2, r2, #1
	cmp	r3, r2
	bls	.L_f792
	add	r3, r2, #0
.L_f792:
	ldr	r0, .L_f7b4
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldr	r0, .L_f7b8
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	mov	r0, #0
	cmp	r3, r2
	bne	.L_f7ac
	mov	r0, #1
.L_f7ac:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_f7b4:
	.4byte	sUnk_82C9B68
.L_f7b8:
	.4byte	sUnk_82C9D9A
