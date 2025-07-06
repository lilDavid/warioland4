.include "macros.s.inc"


thumb_func_start func_80102D8
func_80102D8:
	push	{lr}	
	ldr	r0, .L_102e8	
	ldrb	r0, [r0, #0]	
	cmp	r0, #1	
	bne	.L_102ec	
	bl	func_80102F8	
	b	.L_102f4	
.L_102e8:
	.4byte	gUnk_3001894	
.L_102ec:
	cmp	r0, #2	
	bne	.L_102f4	
	bl	func_8010380	
.L_102f4:
	pop	{r0}	
	bx	r0	


thumb_func_start func_80102F8
func_80102F8:
	push	{r4, r5, r6, r7, lr}	
	ldr	r3, .L_1030c	
	ldrh	r0, [r3, #0]	
	cmp	r0, #253	@ 0xfd
	bls	.L_10314	
	ldr	r1, .L_10310	
	mov	r0, #8	
	strh	r0, [r1, #0]	
	b	.L_10374	
	.align	2, 0	
.L_1030c:
	.4byte	gUnk_30030C8	
.L_10310:
	.4byte	gButtonsPressed	
.L_10314:
	ldr	r1, .L_1034c	
	ldr	r6, .L_10350	
	ldrh	r2, [r3, #0]	
	lsl	r5, r2, #1	
	add	r0, r5, r6	
	ldrh	r4, [r1, #0]	
	ldrh	r0, [r0, #0]	
	cmp	r4, r0	
	bne	.L_1035c	
	ldr	r7, .L_10354	
	add	r0, r5, r7	
	ldrh	r1, [r0, #0]	
	ldr	r0, .L_10358	
	cmp	r1, r0	
	bne	.L_1033e	
	add	r0, r2, #1	
	strh	r0, [r3, #0]	
	ldrh	r0, [r3, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r6	
	strh	r4, [r0, #0]	
.L_1033e:
	ldrh	r1, [r3, #0]	
	lsl	r1, r1, #1	
	add	r1, r1, r7	
	ldrh	r0, [r1, #0]	
	add	r0, #1	
	strh	r0, [r1, #0]	
	b	.L_10374	
.L_1034c:
	.4byte	gButtonsHeld	
.L_10350:
	.4byte	gUnk_3002CC8	
.L_10354:
	.4byte	gUnk_3002EC8	
.L_10358:
	.4byte	0xFFFF	
.L_1035c:
	add	r0, r2, #1	
	strh	r0, [r3, #0]	
	ldrh	r0, [r3, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r6	
	strh	r4, [r0, #0]	
	ldr	r1, .L_1037c	
	ldrh	r0, [r3, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r1	
	mov	r1, #1	
	strh	r1, [r0, #0]	
.L_10374:
	pop	{r4, r5, r6, r7}	
	pop	{r0}	
	bx	r0	
	.align	2, 0	
.L_1037c:
	.4byte	gUnk_3002EC8	


thumb_func_start func_8010380
func_8010380:
	push	{r4, r5, lr}	
	ldr	r2, .L_103a4	
	ldrh	r3, [r2, #0]	
	cmp	r3, #253	@ 0xfd
	bhi	.L_1039c	
	ldr	r4, .L_103a8	
	ldrh	r1, [r4, #0]	
	ldr	r0, .L_103ac	
	cmp	r1, r0	
	beq	.L_1039c	
	ldr	r5, .L_103b0	
	ldrh	r0, [r5, #0]	
	cmp	r0, #0	
	beq	.L_103b8	
.L_1039c:
	ldr	r1, .L_103b4	
	mov	r0, #8	
	strh	r0, [r1, #0]	
	b	.L_103ec	
.L_103a4:
	.4byte	gUnk_30030C8	
.L_103a8:
	.4byte	gUnk_30030CA	
.L_103ac:
	.4byte	0xFFFF	
.L_103b0:
	.4byte	gButtonsHeld	
.L_103b4:
	.4byte	gButtonsPressed	
.L_103b8:
	cmp	r1, #0	
	bne	.L_103cc	
	add	r0, r3, #1	
	strh	r0, [r2, #0]	
	ldr	r1, .L_103f4	
	ldrh	r0, [r2, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r1	
	ldrh	r0, [r0, #0]	
	strh	r0, [r4, #0]	
.L_103cc:
	ldr	r1, .L_103f8	
	ldrh	r0, [r2, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r1	
	ldrh	r1, [r0, #0]	
	strh	r1, [r5, #0]	
	ldr	r3, .L_103fc	
	ldr	r2, .L_10400	
	ldrh	r0, [r2, #0]	
	eor	r0, r1	
	and	r0, r1	
	strh	r0, [r3, #0]	
	strh	r1, [r2, #0]	
	ldrh	r0, [r4, #0]	
	sub	r0, #1	
	strh	r0, [r4, #0]	
.L_103ec:
	pop	{r4, r5}	
	pop	{r0}	
	bx	r0	
	.align	2, 0	
.L_103f4:
	.4byte	gUnk_3002EC8	
.L_103f8:
	.4byte	gUnk_3002CC8	
.L_103fc:
	.4byte	gButtonsPressed	
.L_10400:
	.4byte	gUnk_30030CC	


thumb_func_start func_8010404
func_8010404:
	ldr	r2, .L_10424	
	ldr	r1, .L_10428	
	ldr	r0, .L_1042c	
	ldrh	r0, [r0, #0]	
	lsl	r0, r0, #1	
	add	r0, r0, r1	
	ldrh	r1, [r0, #0]	
	strh	r1, [r2, #0]	
	ldr	r3, .L_10430	
	ldr	r2, .L_10434	
	ldrh	r0, [r2, #0]	
	eor	r0, r1	
	and	r0, r1	
	strh	r0, [r3, #0]	
	strh	r1, [r2, #0]	
	bx	lr	
.L_10424:
	.4byte	gButtonsHeld	
.L_10428:
	.4byte	gUnk_3002CC8	
.L_1042c:
	.4byte	gUnk_30030C8	
.L_10430:
	.4byte	gButtonsPressed	
.L_10434:
	.4byte	gUnk_30030CC	


thumb_func_start func_8010438
func_8010438:
	push	{r4, r5, r6, lr}	
	ldr	r0, .L_10464	
	ldrb	r0, [r0, #0]	
	cmp	r0, #1	
	bne	.L_1047c	
	ldr	r4, .L_10468	
	ldr	r6, .L_1046c	
	ldr	r5, .L_10470	
	mov	r3, #0	
	ldr	r2, .L_10474	
	ldr	r1, .L_10478	
	mov	r0, #255	@ 0xff
.L_10450:
	strh	r3, [r1, #0]	
	strh	r3, [r2, #0]	
	add	r2, #2	
	add	r1, #2	
	sub	r0, #1	
	cmp	r0, #0	
	bge	.L_10450	
	mov	r0, #0	
	strh	r0, [r4, #0]	
	b	.L_10488	
.L_10464:
	.4byte	gUnk_3001894	
.L_10468:
	.4byte	gUnk_30030CA	
.L_1046c:
	.4byte	gUnk_30030C8	
.L_10470:
	.4byte	gUnk_30030CC	
.L_10474:
	.4byte	gUnk_3002EC8	
.L_10478:
	.4byte	gUnk_3002CC8	
.L_1047c:
	ldr	r0, .L_10494	
	ldr	r1, .L_10498	
	ldrh	r1, [r1, #0]	
	strh	r1, [r0, #0]	
	ldr	r6, .L_1049c	
	ldr	r5, .L_104a0	
.L_10488:
	mov	r0, #0	
	strh	r0, [r6, #0]	
	strh	r0, [r5, #0]	
	pop	{r4, r5, r6}	
	pop	{r0}	
	bx	r0	
.L_10494:
	.4byte	gUnk_30030CA	
.L_10498:
	.4byte	gUnk_3002EC8	
.L_1049c:
	.4byte	gUnk_30030C8	
.L_104a0:
	.4byte	gUnk_30030CC	
