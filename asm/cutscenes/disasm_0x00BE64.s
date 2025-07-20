.include "macros.s.inc"


thumb_func_start func_800BE64
func_800BE64:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #9
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_be7c
	ldr	r0, .L_be78
	b	.L_be7e
.L_be78:
	.4byte	sUnk_829A7C0
.L_be7c:
	ldr	r0, .L_be90
.L_be7e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #8
	bne	.L_be88
	mov	r0, #1
.L_be88:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_be90:
	.4byte	sUnk_829A7E6


thumb_func_start func_800BE94
func_800BE94:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #9
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_beac
	ldr	r0, .L_bea8
	b	.L_beae
.L_bea8:
	.4byte	sUnk_829A80C
.L_beac:
	ldr	r0, .L_bec0
.L_beae:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #8
	bne	.L_beb8
	mov	r0, #1
.L_beb8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bec0:
	.4byte	sUnk_829A850


thumb_func_start func_800BEC4
func_800BEC4:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_becc
	add	r0, #15
.L_becc:
	asr	r3, r0, #4
	lsl	r0, r3, #4
	sub	r3, r2, r0
	cmp	r3, #3
	bgt	.L_bee0
	ldr	r0, .L_bedc
	b	.L_befa
	.align	2, 0
.L_bedc:
	.4byte	sUnk_829A894
.L_bee0:
	cmp	r3, #7
	bgt	.L_beec
	ldr	r0, .L_bee8
	b	.L_befa
.L_bee8:
	.4byte	sUnk_829A8A8
.L_beec:
	cmp	r3, #11
	bgt	.L_bef8
	ldr	r0, .L_bef4
	b	.L_befa
.L_bef4:
	.4byte	sUnk_829A8BC
.L_bef8:
	ldr	r0, .L_bf08
.L_befa:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #15
	bne	.L_bf04
	mov	r0, #1
.L_bf04:
	bx	lr
	.align	2, 0
.L_bf08:
	.4byte	sUnk_829A8D0


thumb_func_start func_800BF0C
func_800BF0C:
	ldr	r1, .L_bf14
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_bf14:
	.4byte	sUnk_829A8E4


thumb_func_start func_800BF18
func_800BF18:
	ldr	r1, .L_bf20
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_bf20:
	.4byte	sUnk_829A8F8


thumb_func_start func_800BF24
func_800BF24:
	ldr	r1, .L_bf2c
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_bf2c:
	.4byte	sUnk_829A90C


thumb_func_start func_800BF30
func_800BF30:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_bf48
	ldr	r0, .L_bf44
	b	.L_bf56
.L_bf44:
	.4byte	sUnk_829A926
.L_bf48:
	cmp	r1, #15
	bgt	.L_bf54
	ldr	r0, .L_bf50
	b	.L_bf56
.L_bf50:
	.4byte	sUnk_829A92E
.L_bf54:
	ldr	r0, .L_bf68
.L_bf56:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_bf60
	mov	r0, #1
.L_bf60:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bf68:
	.4byte	sUnk_829A936


thumb_func_start func_800BF6C
func_800BF6C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #116	@ 0x74
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_bf84
	ldr	r0, .L_bf80
	b	.L_bf92
.L_bf80:
	.4byte	sUnk_829A9A6
.L_bf84:
	cmp	r1, #15
	bgt	.L_bf90
	ldr	r0, .L_bf8c
	b	.L_bf92
.L_bf8c:
	.4byte	sUnk_829A9AE
.L_bf90:
	ldr	r0, .L_bfa4
.L_bf92:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #115	@ 0x73
	bne	.L_bf9c
	mov	r0, #1
.L_bf9c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bfa4:
	.4byte	sUnk_829A9B6


thumb_func_start func_800BFA8
func_800BFA8:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_bfc0
	ldr	r0, .L_bfbc
	b	.L_bfda
.L_bfbc:
	.4byte	sUnk_829A9BE
.L_bfc0:
	cmp	r1, #11
	bgt	.L_bfcc
	ldr	r0, .L_bfc8
	b	.L_bfda
.L_bfc8:
	.4byte	sUnk_829A9D8
.L_bfcc:
	cmp	r1, #17
	bgt	.L_bfd8
	ldr	r0, .L_bfd4
	b	.L_bfda
.L_bfd4:
	.4byte	sUnk_829A9F2
.L_bfd8:
	ldr	r0, .L_bfec
.L_bfda:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_bfe4
	mov	r0, #1
.L_bfe4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bfec:
	.4byte	sUnk_829AA0C


thumb_func_start func_800BFF0
func_800BFF0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #9
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_c008
	ldr	r0, .L_c004
	b	.L_c00a
.L_c004:
	.4byte	sUnk_829AA5E
.L_c008:
	ldr	r0, .L_c01c
.L_c00a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #8
	bne	.L_c014
	mov	r0, #1
.L_c014:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c01c:
	.4byte	sUnk_829AA6C


thumb_func_start func_800C020
func_800C020:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_c028
	add	r0, r2, #7
.L_c028:
	asr	r3, r0, #3
	lsl	r0, r3, #3
	sub	r3, r2, r0
	cmp	r3, #1
	bgt	.L_c03c
	ldr	r0, .L_c038
	b	.L_c04e
	.align	2, 0
.L_c038:
	.4byte	sUnk_829AA7A
.L_c03c:
	cmp	r3, #3
	ble	.L_c04c
	cmp	r3, #5
	bgt	.L_c04c
	ldr	r0, .L_c048
	b	.L_c04e
.L_c048:
	.4byte	sUnk_829AA94
.L_c04c:
	mov	r0, #0
.L_c04e:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #7
	bne	.L_c058
	mov	r0, #1
.L_c058:
	bx	lr
	.align	2, 0


thumb_func_start func_800C05C
func_800C05C:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_c064
	add	r0, r2, #3
.L_c064:
	asr	r3, r0, #2
	lsl	r0, r3, #2
	sub	r3, r2, r0
	cmp	r3, #0
	bgt	.L_c078
	ldr	r0, .L_c074
	b	.L_c08a
	.align	2, 0
.L_c074:
	.4byte	sUnk_829AAAE
.L_c078:
	cmp	r3, #1
	ble	.L_c088
	cmp	r3, #2
	bgt	.L_c088
	ldr	r0, .L_c084
	b	.L_c08a
.L_c084:
	.4byte	sUnk_829AAE0
.L_c088:
	mov	r0, #0
.L_c08a:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #3
	bne	.L_c094
	mov	r0, #1
.L_c094:
	bx	lr
	.align	2, 0


thumb_func_start func_800C098
func_800C098:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #42	@ 0x2a
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #2
	bgt	.L_c0b0
	ldr	r0, .L_c0ac
	b	.L_c106
.L_c0ac:
	.4byte	sUnk_829AB84
.L_c0b0:
	cmp	r1, #5
	bgt	.L_c0bc
	ldr	r0, .L_c0b8
	b	.L_c106
.L_c0b8:
	.4byte	sUnk_829ABB6
.L_c0bc:
	cmp	r1, #9
	bgt	.L_c0c8
	ldr	r0, .L_c0c4
	b	.L_c106
.L_c0c4:
	.4byte	sUnk_829AC00
.L_c0c8:
	cmp	r1, #13
	bgt	.L_c0d4
	ldr	r0, .L_c0d0
	b	.L_c106
.L_c0d0:
	.4byte	sUnk_829AC62
.L_c0d4:
	cmp	r1, #18
	bgt	.L_c0e0
	ldr	r0, .L_c0dc
	b	.L_c106
.L_c0dc:
	.4byte	sUnk_829ACC4
.L_c0e0:
	cmp	r1, #23
	bgt	.L_c0ec
	ldr	r0, .L_c0e8
	b	.L_c106
.L_c0e8:
	.4byte	sUnk_829AD0E
.L_c0ec:
	cmp	r1, #29
	bgt	.L_c0f8
	ldr	r0, .L_c0f4
	b	.L_c106
.L_c0f4:
	.4byte	sUnk_829AD58
.L_c0f8:
	cmp	r1, #35	@ 0x23
	bgt	.L_c104
	ldr	r0, .L_c100
	b	.L_c106
.L_c100:
	.4byte	sUnk_829AD8A
.L_c104:
	ldr	r0, .L_c118
.L_c106:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #41	@ 0x29
	bne	.L_c110
	mov	r0, #1
.L_c110:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c118:
	.4byte	sUnk_829ADA4


thumb_func_start func_800C11C
func_800C11C:
	ldr	r1, .L_c124
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c124:
	.4byte	sUnk_829AB1E


thumb_func_start func_800C128
func_800C128:
	ldr	r1, .L_c130
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c130:
	.4byte	sUnk_829AB2C


thumb_func_start func_800C134
func_800C134:
	ldr	r1, .L_c13c
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c13c:
	.4byte	sUnk_829AB46


thumb_func_start func_800C140
func_800C140:
	ldr	r1, .L_c148
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c148:
	.4byte	sUnk_829ADBE


thumb_func_start func_800C14C
func_800C14C:
	ldr	r1, .L_c154
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c154:
	.4byte	sUnk_829AA56


thumb_func_start func_800C158
func_800C158:
	ldr	r1, .L_c160
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c160:
	.4byte	sUnk_829A93E


thumb_func_start func_800C164
func_800C164:
	ldr	r1, .L_c16c
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c16c:
	.4byte	sUnk_829A952


thumb_func_start func_800C170
func_800C170:
	ldr	r1, .L_c178
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c178:
	.4byte	sUnk_829A966


thumb_func_start func_800C17C
func_800C17C:
	ldr	r1, .L_c184
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c184:
	.4byte	sUnk_829A986


thumb_func_start func_800C188
func_800C188:
	ldr	r1, .L_c190
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c190:
	.4byte	sUnk_829AA26


thumb_func_start func_800C194
func_800C194:
	ldr	r1, .L_c19c
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c19c:
	.4byte	sUnk_829AA3A


thumb_func_start func_800C1A0
func_800C1A0:
	ldr	r1, .L_c1a8
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c1a8:
	.4byte	sUnk_829AA48


thumb_func_start func_800C1AC
func_800C1AC:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_c1c4
	ldr	r0, .L_c1c0
	b	.L_c1d2
.L_c1c0:
	.4byte	sUnk_829ADEA
.L_c1c4:
	cmp	r1, #15
	bgt	.L_c1d0
	ldr	r0, .L_c1cc
	b	.L_c1d2
.L_c1cc:
	.4byte	sUnk_829ADF8
.L_c1d0:
	ldr	r0, .L_c1e4
.L_c1d2:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_c1dc
	mov	r0, #1
.L_c1dc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c1e4:
	.4byte	sUnk_829AE06


thumb_func_start func_800C1E8
func_800C1E8:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #116	@ 0x74
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_c200
	ldr	r0, .L_c1fc
	b	.L_c20e
.L_c1fc:
	.4byte	sUnk_829AE14
.L_c200:
	cmp	r1, #15
	bgt	.L_c20c
	ldr	r0, .L_c208
	b	.L_c20e
.L_c208:
	.4byte	sUnk_829AE22
.L_c20c:
	ldr	r0, .L_c220
.L_c20e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #115	@ 0x73
	bne	.L_c218
	mov	r0, #1
.L_c218:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c220:
	.4byte	sUnk_829AE30


thumb_func_start func_800C224
func_800C224:
	cmp	r0, #15
	bhi	.L_c24a
	ldr	r1, .L_c24c
	lsl	r2, r0, #5
	ldr	r0, .L_c250
	add	r0, r2, r0
	str	r0, [r1, #0]
	ldr	r0, .L_c254
	str	r0, [r1, #4]
	ldr	r3, .L_c258
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_c25c
	add	r2, r2, r0
	str	r2, [r1, #0]
	ldr	r0, .L_c260
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
.L_c24a:
	bx	lr
.L_c24c:
	.4byte	0x40000D4
.L_c250:
	.4byte	sUnk_829AE3E
.L_c254:
	.4byte	0x5000200
.L_c258:
	.4byte	0x80000010
.L_c25c:
	.4byte	sUnk_829B03E
.L_c260:
	.4byte	0x5000220
