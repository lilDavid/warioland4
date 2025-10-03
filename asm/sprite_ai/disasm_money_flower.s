.include "macros.s.inc"


thumb_func_start func_8040F48
func_8040F48:
	ldr	r0, .L_40f94
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r2, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #7
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #192	@ 0xc0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_40f94:
	.4byte	gCurrentSprite


thumb_func_start func_8040F98
func_8040F98:
	push	{lr}
	ldr	r2, .L_40fbc
	ldr	r0, .L_40fc0
	str	r0, [r2, #4]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #20
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #23
	strb	r0, [r2, #28]
	bl	func_8040F48
	pop	{r0}
	bx	r0
.L_40fbc:
	.4byte	gCurrentSprite
.L_40fc0:
	.4byte	sUnk_83C6F9C


thumb_func_start func_8040FC4
func_8040FC4:
	push	{lr}
	ldr	r1, .L_40fe0
	ldr	r0, .L_40fe4
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	bl	func_8040F48
	pop	{r0}
	bx	r0
.L_40fe0:
	.4byte	gCurrentSprite
.L_40fe4:
	.4byte	sUnk_83C7034


thumb_func_start func_8040FE8
func_8040FE8:
	push	{lr}
	ldr	r1, .L_4100c
	ldr	r0, .L_41010
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #2
	strb	r0, [r2, #0]
	mov	r0, #19
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	bl	func_8040F48
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4100c:
	.4byte	gCurrentSprite
.L_41010:
	.4byte	sUnk_83C715C


thumb_func_start func_8041014
func_8041014:
	push	{lr}
	ldr	r1, .L_41038
	ldr	r0, .L_4103c
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #3
	strb	r0, [r2, #0]
	mov	r0, #21
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	bl	func_8040F48
	pop	{r0}
	bx	r0
	.align	2, 0
.L_41038:
	.4byte	gCurrentSprite
.L_4103c:
	.4byte	sUnk_83C7194


thumb_func_start func_8041040
func_8041040:
	push	{lr}
	ldr	r1, .L_41064
	ldr	r0, .L_41068
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #4
	strb	r0, [r2, #0]
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	bl	func_8040F48
	pop	{r0}
	bx	r0
	.align	2, 0
.L_41064:
	.4byte	gCurrentSprite
.L_41068:
	.4byte	sUnk_83C71CC


thumb_func_start func_804106C
func_804106C:
	push	{lr}
	ldr	r1, .L_41088
	ldr	r0, .L_4108c
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #5
	strb	r0, [r2, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	bl	func_8040F48
	pop	{r0}
	bx	r0
.L_41088:
	.4byte	gCurrentSprite
.L_4108c:
	.4byte	sUnk_83C7214


thumb_func_start func_8041090
func_8041090:
	push	{lr}
	ldr	r1, .L_410ac
	ldr	r0, .L_410b0
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #6
	strb	r0, [r2, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	bl	func_8040F48
	pop	{r0}
	bx	r0
.L_410ac:
	.4byte	gCurrentSprite
.L_410b0:
	.4byte	sUnk_83C72CC


thumb_func_start func_80410B4
func_80410B4:
	push	{lr}
	ldr	r2, .L_410e4
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_410e0
	ldr	r0, .L_410e8
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #24
	strb	r0, [r2, #28]
	mov	r0, #33	@ 0x21
	strb	r0, [r3, #0]
	mov	r0, #239	@ 0xef
	bl	m4aSongNumStart
.L_410e0:
	pop	{r0}
	bx	r0
.L_410e4:
	.4byte	gCurrentSprite
.L_410e8:
	.4byte	sUnk_83C6FAC


thumb_func_start func_80410EC
func_80410EC:
	ldr	r2, .L_41128
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_41126
	ldr	r0, .L_4112c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_41130
	ldr	r0, .L_41134
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #0]
.L_41126:
	bx	lr
.L_41128:
	.4byte	gCurrentSprite
.L_4112c:
	.4byte	sUnk_83C7034
.L_41130:
	.4byte	gPersistentSpriteData
.L_41134:
	.4byte	gCurrentRoom


thumb_func_start func_8041138
func_8041138:
	push	{lr}
	ldr	r2, .L_41174
	ldr	r0, .L_41178
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #18
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #98	@ 0x62
	strb	r0, [r1, #0]
	ldr	r1, .L_4117c
	ldr	r0, .L_41180
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #0]
	add	r2, #40	@ 0x28
	mov	r0, #2
	strb	r0, [r2, #0]
	mov	r0, #240	@ 0xf0
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_41174:
	.4byte	gCurrentSprite
.L_41178:
	.4byte	sUnk_83C70CC
.L_4117c:
	.4byte	gPersistentSpriteData
.L_41180:
	.4byte	gCurrentRoom


thumb_func_start func_8041184
func_8041184:
	ldr	r2, .L_411ac
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_411a8
	ldr	r0, .L_411b0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #19
	strb	r0, [r2, #28]
	mov	r0, #100	@ 0x64
	strb	r0, [r3, #0]
.L_411a8:
	bx	lr
	.align	2, 0
.L_411ac:
	.4byte	gCurrentSprite
.L_411b0:
	.4byte	sUnk_83C715C


thumb_func_start func_80411B4
func_80411B4:
	push	{lr}
	ldr	r2, .L_41200
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_411fa
	ldr	r0, .L_41204
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #4
	strb	r0, [r3, #0]
	ldr	r1, .L_41208
	ldr	r0, .L_4120c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #240	@ 0xf0
	bl	m4aSongNumStart
.L_411fa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_41200:
	.4byte	gCurrentSprite
.L_41204:
	.4byte	sUnk_83C716C
.L_41208:
	.4byte	gPersistentSpriteData
.L_4120c:
	.4byte	gCurrentRoom


thumb_func_start func_8041210
func_8041210:
	ldr	r2, .L_41238
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_41234
	ldr	r0, .L_4123c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #21
	strb	r0, [r2, #28]
	mov	r0, #100	@ 0x64
	strb	r0, [r3, #0]
.L_41234:
	bx	lr
	.align	2, 0
.L_41238:
	.4byte	gCurrentSprite
.L_4123c:
	.4byte	sUnk_83C7194


thumb_func_start func_8041240
func_8041240:
	push	{r4, lr}
	ldr	r3, .L_41290
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4128a
	ldr	r0, .L_41294
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #22
	strb	r0, [r3, #28]
	mov	r2, #4
	mov	r4, ip
	strb	r2, [r4, #0]
	ldr	r1, .L_41298
	ldr	r0, .L_4129c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r3, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #65	@ 0x41
	strb	r1, [r0, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #240	@ 0xf0
	bl	m4aSongNumStart
.L_4128a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_41290:
	.4byte	gCurrentSprite
.L_41294:
	.4byte	sUnk_83C71A4
.L_41298:
	.4byte	gPersistentSpriteData
.L_4129c:
	.4byte	gCurrentRoom


thumb_func_start func_80412A0
func_80412A0:
	ldr	r2, .L_412c8
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_412c4
	ldr	r0, .L_412cc
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #47	@ 0x2f
	strb	r0, [r2, #28]
	mov	r0, #100	@ 0x64
	strb	r0, [r3, #0]
.L_412c4:
	bx	lr
	.align	2, 0
.L_412c8:
	.4byte	gCurrentSprite
.L_412cc:
	.4byte	sUnk_83C71CC


thumb_func_start func_80412D0
func_80412D0:
	push	{lr}
	ldr	r2, .L_4131c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_41316
	ldr	r0, .L_41320
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #28]
	mov	r0, #4
	strb	r0, [r3, #0]
	ldr	r1, .L_41324
	ldr	r0, .L_41328
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r1, #81	@ 0x51
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #5
	strb	r0, [r1, #0]
	mov	r0, #243	@ 0xf3
	bl	m4aSongNumStart
.L_41316:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4131c:
	.4byte	gCurrentSprite
.L_41320:
	.4byte	sUnk_83C71DC
.L_41324:
	.4byte	gPersistentSpriteData
.L_41328:
	.4byte	gCurrentRoom


thumb_func_start func_804132C
func_804132C:
	ldr	r2, .L_41350
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4134c
	ldr	r0, .L_41354
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
.L_4134c:
	bx	lr
	.align	2, 0
.L_41350:
	.4byte	gCurrentSprite
.L_41354:
	.4byte	sUnk_83C7214


thumb_func_start func_8041358
func_8041358:
	bx	lr
	.align	2, 0


thumb_func_start func_804135C
func_804135C:
	push	{r4, lr}
	ldr	r1, .L_41378
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	add	r3, r1, #0
	cmp	r0, #3
	beq	.L_4139c
	cmp	r0, #3
	bgt	.L_4137c
	cmp	r0, #2
	beq	.L_41386
	b	.L_413d2
	.align	2, 0
.L_41378:
	.4byte	gCurrentSprite
.L_4137c:
	cmp	r0, #4
	beq	.L_413b0
	cmp	r0, #5
	beq	.L_413c4
	b	.L_413d2
.L_41386:
	ldr	r0, .L_41398
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #41	@ 0x29
	strb	r0, [r1, #0]
	mov	r2, #2
	b	.L_413d2
	.align	2, 0
.L_41398:
	.4byte	sUnk_83C72DC
.L_4139c:
	ldr	r0, .L_413ac
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #41	@ 0x29
	strb	r0, [r1, #0]
	mov	r2, #5
	b	.L_413d2
.L_413ac:
	.4byte	sUnk_83C733C
.L_413b0:
	ldr	r0, .L_413c0
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #0]
	mov	r2, #20
	b	.L_413d2
.L_413c0:
	.4byte	sUnk_83C739C
.L_413c4:
	ldr	r0, .L_41408
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r2, #1
.L_413d2:
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r0, [r3, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r3, #28]
	ldr	r1, .L_4140c
	ldr	r0, .L_41410
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r3, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #97	@ 0x61
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	sub	r0, #120	@ 0x78
	ldrh	r1, [r3, #10]
	bl	func_80767DC
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_41408:
	.4byte	sUnk_83C7424
.L_4140c:
	.4byte	gPersistentSpriteData
.L_41410:
	.4byte	gCurrentRoom


thumb_func_start func_8041414
func_8041414:
	ldr	r2, .L_41438
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_41434
	ldr	r0, .L_4143c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_41434:
	bx	lr
	.align	2, 0
.L_41438:
	.4byte	gCurrentSprite
.L_4143c:
	.4byte	sUnk_83C72CC


thumb_func_start SpriteMoneyFlower
SpriteMoneyFlower:
	push	{lr}
	ldr	r0, .L_4145c
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #111	@ 0x6f
	bls	.L_41452
	b	.L_416c2
.L_41452:
	lsl	r0, r1, #2
	ldr	r1, .L_41460
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_4145c:
	.4byte	gCurrentSprite
.L_41460:
	.4byte	.L_41464
.L_41464:
	.4byte	.L_41624
	.4byte	.L_4162a
	.4byte	.L_41630
	.4byte	.L_41636
	.4byte	.L_4163c
	.4byte	.L_41642
	.4byte	.L_41648
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_4165a
	.4byte	.L_41664
	.4byte	.L_41674
	.4byte	.L_4167e
	.4byte	.L_41688
	.4byte	.L_41692
	.4byte	.L_4164e
	.4byte	.L_41654
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_4169c
	.4byte	.L_416a6
	.4byte	.L_416ba
	.4byte	.L_416be
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416c2
	.4byte	.L_416b0
.L_41624:
	bl	func_8040F98
	b	.L_416c2
.L_4162a:
	bl	func_8040FC4
	b	.L_416c2
.L_41630:
	bl	func_8040FE8
	b	.L_416c2
.L_41636:
	bl	func_8041014
	b	.L_416c2
.L_4163c:
	bl	func_8041040
	b	.L_416c2
.L_41642:
	bl	func_804106C
	b	.L_416c2
.L_41648:
	bl	func_8041090
	b	.L_416c2
.L_4164e:
	bl	func_80410B4
	b	.L_416c2
.L_41654:
	bl	func_80410EC
	b	.L_416c2
.L_4165a:
	ldr	r1, .L_41670
	mov	r0, #0
	strb	r0, [r1, #31]
	bl	func_8041138
.L_41664:
	ldr	r1, .L_41670
	mov	r0, #0
	strb	r0, [r1, #31]
	bl	func_8041184
	b	.L_416c2
.L_41670:
	.4byte	gCurrentSprite
.L_41674:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_80411B4
	b	.L_416c2
.L_4167e:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_8041210
	b	.L_416c2
.L_41688:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_8041240
	b	.L_416c2
.L_41692:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_80412A0
	b	.L_416c2
.L_4169c:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_80412D0
	b	.L_416c2
.L_416a6:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_804132C
	b	.L_416c2
.L_416b0:
	mov	r0, #0
	strb	r0, [r2, #31]
	bl	func_8041358
	b	.L_416c2
.L_416ba:
	bl	func_804135C
.L_416be:
	bl	func_8041414
.L_416c2:
	pop	{r0}
	bx	r0
	.align	2, 0
