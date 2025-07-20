.include "macros.s.inc"


thumb_func_start func_800C264
func_800C264:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #72	@ 0x48
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #19
	bgt	.L_c27c
	ldr	r0, .L_c278
	b	.L_c302
.L_c278:
	.4byte	sUnk_829F590
.L_c27c:
	cmp	r1, #23
	bgt	.L_c288
	ldr	r0, .L_c284
	b	.L_c302
.L_c284:
	.4byte	sUnk_829F5D4
.L_c288:
	cmp	r1, #27
	bgt	.L_c294
	ldr	r0, .L_c290
	b	.L_c302
.L_c290:
	.4byte	sUnk_829F63C
.L_c294:
	cmp	r1, #31
	bgt	.L_c2a0
	ldr	r0, .L_c29c
	b	.L_c302
.L_c29c:
	.4byte	sUnk_829F686
.L_c2a0:
	cmp	r1, #37	@ 0x25
	bgt	.L_c2ac
	ldr	r0, .L_c2a8
	b	.L_c302
.L_c2a8:
	.4byte	sUnk_829F6B8
.L_c2ac:
	cmp	r1, #43	@ 0x2b
	bgt	.L_c2b8
	ldr	r0, .L_c2b4
	b	.L_c302
.L_c2b4:
	.4byte	sUnk_829F6E4
.L_c2b8:
	cmp	r1, #47	@ 0x2f
	bgt	.L_c2c4
	ldr	r0, .L_c2c0
	b	.L_c302
.L_c2c0:
	.4byte	sUnk_829F738
.L_c2c4:
	cmp	r1, #51	@ 0x33
	bgt	.L_c2d0
	ldr	r0, .L_c2cc
	b	.L_c302
.L_c2cc:
	.4byte	sUnk_829F764
.L_c2d0:
	cmp	r1, #55	@ 0x37
	bgt	.L_c2dc
	ldr	r0, .L_c2d8
	b	.L_c302
.L_c2d8:
	.4byte	sUnk_829F790
.L_c2dc:
	cmp	r1, #59	@ 0x3b
	bgt	.L_c2e8
	ldr	r0, .L_c2e4
	b	.L_c302
.L_c2e4:
	.4byte	sUnk_829F7E6
.L_c2e8:
	cmp	r1, #63	@ 0x3f
	bgt	.L_c2f4
	ldr	r0, .L_c2f0
	b	.L_c302
.L_c2f0:
	.4byte	sUnk_829F85A
.L_c2f4:
	cmp	r1, #67	@ 0x43
	bgt	.L_c300
	ldr	r0, .L_c2fc
	b	.L_c302
.L_c2fc:
	.4byte	sUnk_829F8AA
.L_c300:
	ldr	r0, .L_c314
.L_c302:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #71	@ 0x47
	bne	.L_c30c
	mov	r0, #1
.L_c30c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c314:
	.4byte	sUnk_829F8FA


thumb_func_start func_800C318
func_800C318:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #28
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_c330
	ldr	r0, .L_c32c
	b	.L_c342
.L_c32c:
	.4byte	sUnk_829F4DC
.L_c330:
	cmp	r1, #13
	ble	.L_c340
	cmp	r1, #21
	bgt	.L_c340
	ldr	r0, .L_c33c
	b	.L_c342
.L_c33c:
	.4byte	sUnk_829F558
.L_c340:
	ldr	r0, .L_c354
.L_c342:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #27
	bne	.L_c34c
	mov	r0, #1
.L_c34c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c354:
	.4byte	sUnk_829F520


thumb_func_start func_800C358
func_800C358:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #36	@ 0x24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_c370
	ldr	r0, .L_c36c
	b	.L_c3a2
.L_c36c:
	.4byte	sUnk_829F4D4
.L_c370:
	cmp	r1, #11
	bgt	.L_c37c
	ldr	r0, .L_c378
	b	.L_c3a2
.L_c378:
	.4byte	sUnk_829F710
.L_c37c:
	cmp	r1, #17
	bgt	.L_c388
	ldr	r0, .L_c384
	b	.L_c3a2
.L_c384:
	.4byte	sUnk_829F718
.L_c388:
	cmp	r1, #23
	bgt	.L_c394
	ldr	r0, .L_c390
	b	.L_c3a2
.L_c390:
	.4byte	sUnk_829F720
.L_c394:
	cmp	r1, #29
	bgt	.L_c3a0
	ldr	r0, .L_c39c
	b	.L_c3a2
.L_c39c:
	.4byte	sUnk_829F728
.L_c3a0:
	ldr	r0, .L_c3b4
.L_c3a2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #35	@ 0x23
	bne	.L_c3ac
	mov	r0, #1
.L_c3ac:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c3b4:
	.4byte	sUnk_829F730


thumb_func_start func_800C3B8
func_800C3B8:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_c3d0
	ldr	r0, .L_c3cc
	b	.L_c3ea
.L_c3cc:
	.4byte	sUnk_829F93E
.L_c3d0:
	cmp	r1, #11
	bgt	.L_c3dc
	ldr	r0, .L_c3d8
	b	.L_c3ea
.L_c3d8:
	.4byte	sUnk_829F946
.L_c3dc:
	cmp	r1, #17
	bgt	.L_c3e8
	ldr	r0, .L_c3e4
	b	.L_c3ea
.L_c3e4:
	.4byte	sUnk_829F94E
.L_c3e8:
	ldr	r0, .L_c3fc
.L_c3ea:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #0
	bne	.L_c3f4
	mov	r0, #1
.L_c3f4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c3fc:
	.4byte	sUnk_829F956


thumb_func_start func_800C400
func_800C400:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #7
	bhi	.L_c444
	ldr	r2, .L_c44c
	lsl	r1, r4, #4
	sub	r1, r1, r4
	lsl	r1, r1, #1
	ldr	r0, .L_c450
	add	r0, r1, r0
	str	r0, [r2, #0]
	ldr	r0, .L_c454
	str	r0, [r2, #4]
	ldr	r3, .L_c458
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_c45c
	add	r1, r1, r0
	str	r1, [r2, #0]
	ldr	r0, .L_c460
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	lsl	r0, r4, #3
	sub	r0, r0, r4
	lsl	r0, r0, #2
	ldr	r1, .L_c464
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_c468
	str	r0, [r2, #4]
	ldr	r0, .L_c46c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_c444:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_c44c:
	.4byte	0x40000D4
.L_c450:
	.4byte	sUnk_829FA86
.L_c454:
	.4byte	0x5000002
.L_c458:
	.4byte	0x8000000F
.L_c45c:
	.4byte	sUnk_829FB76
.L_c460:
	.4byte	0x5000202
.L_c464:
	.4byte	sUnk_829FC66
.L_c468:
	.4byte	0x5000222
.L_c46c:
	.4byte	0x8000000E
