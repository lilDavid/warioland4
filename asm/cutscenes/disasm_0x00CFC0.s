.include "macros.s.inc"


thumb_func_start func_800CFC0
func_800CFC0:
	push	{r4, lr}	
	add	r4, r1, #0	
	mov	r1, #24	
	bl	__modsi3	
	add	r1, r0, #0	
	cmp	r1, #5	
	bgt	.L_cfd8	
	ldr	r0, .L_cfd4	
	b	.L_cff2	
.L_cfd4:
	.4byte	sUnk_82A814E	
.L_cfd8:
	cmp	r1, #11	
	bgt	.L_cfe4	
	ldr	r0, .L_cfe0	
	b	.L_cff2	
.L_cfe0:
	.4byte	sUnk_82A8168	
.L_cfe4:
	cmp	r1, #17	
	bgt	.L_cff0	
	ldr	r0, .L_cfec	
	b	.L_cff2	
.L_cfec:
	.4byte	sUnk_82A8182	
.L_cff0:
	ldr	r0, .L_d004	
.L_cff2:
	str	r0, [r4, #0]	
	mov	r0, #0	
	cmp	r1, #23	
	bne	.L_cffc	
	mov	r0, #1	
.L_cffc:
	pop	{r4}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_d004:
	.4byte	sUnk_82A819C	


thumb_func_start func_800D008
func_800D008:
	push	{r4, lr}	
	add	r4, r1, #0	
	mov	r1, #42	@ 0x2a
	bl	__modsi3	
	add	r1, r0, #0	
	cmp	r1, #5	
	bgt	.L_d020	
	ldr	r0, .L_d01c	
	b	.L_d05e	
.L_d01c:
	.4byte	sUnk_82A81B6	
.L_d020:
	cmp	r1, #11	
	bgt	.L_d02c	
	ldr	r0, .L_d028	
	b	.L_d05e	
.L_d028:
	.4byte	sUnk_82A81D6	
.L_d02c:
	cmp	r1, #17	
	bgt	.L_d038	
	ldr	r0, .L_d034	
	b	.L_d05e	
.L_d034:
	.4byte	sUnk_82A821A	
.L_d038:
	cmp	r1, #23	
	bgt	.L_d044	
	ldr	r0, .L_d040	
	b	.L_d05e	
.L_d040:
	.4byte	sUnk_82A828E	
.L_d044:
	cmp	r1, #29	
	bgt	.L_d050	
	ldr	r0, .L_d04c	
	b	.L_d05e	
.L_d04c:
	.4byte	sUnk_82A831A	
.L_d050:
	cmp	r1, #35	@ 0x23
	bgt	.L_d05c	
	ldr	r0, .L_d058	
	b	.L_d05e	
.L_d058:
	.4byte	sUnk_82A8394	
.L_d05c:
	ldr	r0, .L_d070	
.L_d05e:
	str	r0, [r4, #0]	
	mov	r0, #0	
	cmp	r1, #41	@ 0x29
	bne	.L_d068	
	mov	r0, #1	
.L_d068:
	pop	{r4}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_d070:
	.4byte	sUnk_82A83F6	


thumb_func_start func_800D074
func_800D074:
	push	{r4, lr}	
	add	r4, r1, #0	
	mov	r1, #24	
	bl	__modsi3	
	add	r1, r0, #0	
	cmp	r1, #5	
	bgt	.L_d08c	
	ldr	r0, .L_d088	
	b	.L_d0a6	
.L_d088:
	.4byte	sUnk_82A8410	
.L_d08c:
	cmp	r1, #11	
	bgt	.L_d098	
	ldr	r0, .L_d094	
	b	.L_d0a6	
.L_d094:
	.4byte	sUnk_82A8418	
.L_d098:
	cmp	r1, #17	
	bgt	.L_d0a4	
	ldr	r0, .L_d0a0	
	b	.L_d0a6	
.L_d0a0:
	.4byte	sUnk_82A8420	
.L_d0a4:
	ldr	r0, .L_d0b8	
.L_d0a6:
	str	r0, [r4, #0]	
	mov	r0, #0	
	cmp	r1, #23	
	bne	.L_d0b0	
	mov	r0, #1	
.L_d0b0:
	pop	{r4}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_d0b8:
	.4byte	sUnk_82A8428	


thumb_func_start func_800D0BC
func_800D0BC:
	push	{r4, lr}	
	add	r4, r1, #0	
	mov	r1, #48	@ 0x30
	bl	__modsi3	
	add	r1, r0, #0	
	cmp	r1, #5	
	bgt	.L_d0d4	
	ldr	r0, .L_d0d0	
	b	.L_d11e	
.L_d0d0:
	.4byte	sUnk_82A8436	
.L_d0d4:
	cmp	r1, #11	
	bgt	.L_d0e0	
	ldr	r0, .L_d0dc	
	b	.L_d11e	
.L_d0dc:
	.4byte	sUnk_82A8450	
.L_d0e0:
	cmp	r1, #17	
	bgt	.L_d0ec	
	ldr	r0, .L_d0e8	
	b	.L_d11e	
.L_d0e8:
	.4byte	sUnk_82A849A	
.L_d0ec:
	cmp	r1, #23	
	bgt	.L_d0f8	
	ldr	r0, .L_d0f4	
	b	.L_d11e	
.L_d0f4:
	.4byte	sUnk_82A84FC	
.L_d0f8:
	cmp	r1, #29	
	bgt	.L_d104	
	ldr	r0, .L_d100	
	b	.L_d11e	
.L_d100:
	.4byte	sUnk_82A855E	
.L_d104:
	cmp	r1, #35	@ 0x23
	bgt	.L_d110	
	ldr	r0, .L_d10c	
	b	.L_d11e	
.L_d10c:
	.4byte	sUnk_82A85AE	
.L_d110:
	cmp	r1, #41	@ 0x29
	bgt	.L_d11c	
	ldr	r0, .L_d118	
	b	.L_d11e	
.L_d118:
	.4byte	sUnk_82A85CE	
.L_d11c:
	ldr	r0, .L_d130	
.L_d11e:
	str	r0, [r4, #0]	
	mov	r0, #0	
	cmp	r1, #47	@ 0x2f
	bne	.L_d128	
	mov	r0, #1	
.L_d128:
	pop	{r4}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_d130:
	.4byte	sUnk_82A85D6	


thumb_func_start func_800D134
func_800D134:
	push	{r4, lr}	
	add	r4, r1, #0	
	mov	r1, #48	@ 0x30
	bl	__modsi3	
	add	r1, r0, #0	
	cmp	r1, #5	
	bgt	.L_d14c	
	ldr	r0, .L_d148	
	b	.L_d196	
.L_d148:
	.4byte	sUnk_82A85E4	
.L_d14c:
	cmp	r1, #11	
	bgt	.L_d158	
	ldr	r0, .L_d154	
	b	.L_d196	
.L_d154:
	.4byte	sUnk_82A8660	
.L_d158:
	cmp	r1, #17	
	bgt	.L_d164	
	ldr	r0, .L_d160	
	b	.L_d196	
.L_d160:
	.4byte	sUnk_82A86C2	
.L_d164:
	cmp	r1, #23	
	bgt	.L_d170	
	ldr	r0, .L_d16c	
	b	.L_d196	
.L_d16c:
	.4byte	sUnk_82A8724	
.L_d170:
	cmp	r1, #29	
	bgt	.L_d17c	
	ldr	r0, .L_d178	
	b	.L_d196	
.L_d178:
	.4byte	sUnk_82A876E	
.L_d17c:
	cmp	r1, #35	@ 0x23
	bgt	.L_d188	
	ldr	r0, .L_d184	
	b	.L_d196	
.L_d184:
	.4byte	sUnk_82A87B8	
.L_d188:
	cmp	r1, #41	@ 0x29
	bgt	.L_d194	
	ldr	r0, .L_d190	
	b	.L_d196	
.L_d190:
	.4byte	sUnk_82A87EA	
.L_d194:
	ldr	r0, .L_d1a8	
.L_d196:
	str	r0, [r4, #0]	
	mov	r0, #0	
	cmp	r1, #47	@ 0x2f
	bne	.L_d1a0	
	mov	r0, #1	
.L_d1a0:
	pop	{r4}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_d1a8:
	.4byte	sUnk_82A8804	
