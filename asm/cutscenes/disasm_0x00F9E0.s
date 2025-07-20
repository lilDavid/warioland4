.include "macros.s.inc"


thumb_func_start func_800F9E0
func_800F9E0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #28
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_f9f8
	ldr	r0, .L_f9f4
	b	.L_fa12
.L_f9f4:
	.4byte	sUnk_82D905C
.L_f9f8:
	cmp	r1, #11
	bgt	.L_fa04
	ldr	r0, .L_fa00
	b	.L_fa12
.L_fa00:
	.4byte	sUnk_82D9076
.L_fa04:
	cmp	r1, #17
	bgt	.L_fa10
	ldr	r0, .L_fa0c
	b	.L_fa12
.L_fa0c:
	.4byte	sUnk_82D905C
.L_fa10:
	ldr	r0, .L_fa24
.L_fa12:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #27
	bne	.L_fa1c
	mov	r0, #1
.L_fa1c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_fa24:
	.4byte	sUnk_82D9090


thumb_func_start func_800FA28
func_800FA28:
	ldr	r2, .L_fa38
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #30
	bne	.L_fa34
	mov	r1, #1
.L_fa34:
	add	r0, r1, #0
	bx	lr
.L_fa38:
	.4byte	sUnk_82D90AA


thumb_func_start func_800FA3C
func_800FA3C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #80	@ 0x50
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #29
	bgt	.L_fa54
	ldr	r0, .L_fa50
	b	.L_fa76
.L_fa50:
	.4byte	sUnk_82D9028
.L_fa54:
	cmp	r1, #39	@ 0x27
	ble	.L_fa74
	cmp	r1, #49	@ 0x31
	bgt	.L_fa64
	ldr	r0, .L_fa60
	b	.L_fa76
.L_fa60:
	.4byte	sUnk_82D9028
.L_fa64:
	cmp	r1, #59	@ 0x3b
	ble	.L_fa74
	cmp	r1, #69	@ 0x45
	bgt	.L_fa74
	ldr	r0, .L_fa70
	b	.L_fa76
.L_fa70:
	.4byte	sUnk_82D9028
.L_fa74:
	ldr	r0, .L_fa88
.L_fa76:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #79	@ 0x4f
	bne	.L_fa80
	mov	r0, #1
.L_fa80:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_fa88:
	.4byte	sUnk_82D9042


thumb_func_start func_800FA8C
func_800FA8C:
	ldr	r2, .L_fa9c
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #30
	bne	.L_fa98
	mov	r1, #1
.L_fa98:
	add	r0, r1, #0
	bx	lr
.L_fa9c:
	.4byte	sUnk_82D9028


thumb_func_start func_800FAA0
func_800FAA0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #208	@ 0xd0
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_fab8
	ldr	r0, .L_fab4
	b	.L_fd12
.L_fab4:
	.4byte	sUnk_82D90C4
.L_fab8:
	cmp	r1, #7
	bgt	.L_fac4
	ldr	r0, .L_fac0
	b	.L_fd12
.L_fac0:
	.4byte	sUnk_82D90EA
.L_fac4:
	cmp	r1, #11
	bgt	.L_fad0
	ldr	r0, .L_facc
	b	.L_fd12
.L_facc:
	.4byte	sUnk_82D9116
.L_fad0:
	cmp	r1, #15
	bgt	.L_fadc
	ldr	r0, .L_fad8
	b	.L_fd12
.L_fad8:
	.4byte	sUnk_82D9142
.L_fadc:
	cmp	r1, #19
	bgt	.L_fae8
	ldr	r0, .L_fae4
	b	.L_fd12
.L_fae4:
	.4byte	sUnk_82D917A
.L_fae8:
	cmp	r1, #23
	bgt	.L_faf4
	ldr	r0, .L_faf0
	b	.L_fd12
.L_faf0:
	.4byte	sUnk_82D91B8
.L_faf4:
	cmp	r1, #27
	bgt	.L_fb00
	ldr	r0, .L_fafc
	b	.L_fd12
.L_fafc:
	.4byte	sUnk_82D9202
.L_fb00:
	cmp	r1, #31
	bgt	.L_fb0c
	ldr	r0, .L_fb08
	b	.L_fd12
.L_fb08:
	.4byte	sUnk_82D9258
.L_fb0c:
	cmp	r1, #35	@ 0x23
	bgt	.L_fb18
	ldr	r0, .L_fb14
	b	.L_fd12
.L_fb14:
	.4byte	sUnk_82D92AE
.L_fb18:
	cmp	r1, #39	@ 0x27
	bgt	.L_fb24
	ldr	r0, .L_fb20
	b	.L_fd12
.L_fb20:
	.4byte	sUnk_82D9304
.L_fb24:
	cmp	r1, #43	@ 0x2b
	bgt	.L_fb30
	ldr	r0, .L_fb2c
	b	.L_fd12
.L_fb2c:
	.4byte	sUnk_82D9354
.L_fb30:
	cmp	r1, #47	@ 0x2f
	bgt	.L_fb3c
	ldr	r0, .L_fb38
	b	.L_fd12
.L_fb38:
	.4byte	sUnk_82D93BC
.L_fb3c:
	cmp	r1, #51	@ 0x33
	bgt	.L_fb48
	ldr	r0, .L_fb44
	b	.L_fd12
.L_fb44:
	.4byte	sUnk_82D9430
.L_fb48:
	cmp	r1, #55	@ 0x37
	bgt	.L_fb54
	ldr	r0, .L_fb50
	b	.L_fd12
.L_fb50:
	.4byte	sUnk_82D94A4
.L_fb54:
	cmp	r1, #59	@ 0x3b
	bgt	.L_fb60
	ldr	r0, .L_fb5c
	b	.L_fd12
.L_fb5c:
	.4byte	sUnk_82D9512
.L_fb60:
	cmp	r1, #63	@ 0x3f
	bgt	.L_fb6c
	ldr	r0, .L_fb68
	b	.L_fd12
.L_fb68:
	.4byte	sUnk_82D9580
.L_fb6c:
	cmp	r1, #67	@ 0x43
	bgt	.L_fb78
	ldr	r0, .L_fb74
	b	.L_fd12
.L_fb74:
	.4byte	sUnk_82D95D6
.L_fb78:
	cmp	r1, #71	@ 0x47
	bgt	.L_fb84
	ldr	r0, .L_fb80
	b	.L_fd12
.L_fb80:
	.4byte	sUnk_82D9620
.L_fb84:
	cmp	r1, #75	@ 0x4b
	bgt	.L_fb90
	ldr	r0, .L_fb8c
	b	.L_fd12
.L_fb8c:
	.4byte	sUnk_82D965E
.L_fb90:
	cmp	r1, #79	@ 0x4f
	bgt	.L_fb9c
	ldr	r0, .L_fb98
	b	.L_fd12
.L_fb98:
	.4byte	sUnk_82D96A8
.L_fb9c:
	cmp	r1, #83	@ 0x53
	bgt	.L_fba8
	ldr	r0, .L_fba4
	b	.L_fd12
.L_fba4:
	.4byte	sUnk_82D96EC
.L_fba8:
	cmp	r1, #87	@ 0x57
	bgt	.L_fbb4
	ldr	r0, .L_fbb0
	b	.L_fd12
.L_fbb0:
	.4byte	sUnk_82D9730
.L_fbb4:
	cmp	r1, #91	@ 0x5b
	bgt	.L_fbc0
	ldr	r0, .L_fbbc
	b	.L_fd12
.L_fbbc:
	.4byte	sUnk_82D9774
.L_fbc0:
	cmp	r1, #95	@ 0x5f
	bgt	.L_fbcc
	ldr	r0, .L_fbc8
	b	.L_fd12
.L_fbc8:
	.4byte	sUnk_82D97B8
.L_fbcc:
	cmp	r1, #99	@ 0x63
	bgt	.L_fbd8
	ldr	r0, .L_fbd4
	b	.L_fd12
.L_fbd4:
	.4byte	sUnk_82D97F6
.L_fbd8:
	cmp	r1, #103	@ 0x67
	bgt	.L_fbe4
	ldr	r0, .L_fbe0
	b	.L_fd12
.L_fbe0:
	.4byte	sUnk_82D983A
.L_fbe4:
	cmp	r1, #107	@ 0x6b
	bgt	.L_fbf0
	ldr	r0, .L_fbec
	b	.L_fd12
.L_fbec:
	.4byte	sUnk_82D9878
.L_fbf0:
	cmp	r1, #111	@ 0x6f
	bgt	.L_fbfc
	ldr	r0, .L_fbf8
	b	.L_fd12
.L_fbf8:
	.4byte	sUnk_82D98BC
.L_fbfc:
	cmp	r1, #115	@ 0x73
	bgt	.L_fc08
	ldr	r0, .L_fc04
	b	.L_fd12
.L_fc04:
	.4byte	sUnk_82D98FA
.L_fc08:
	cmp	r1, #119	@ 0x77
	bgt	.L_fc14
	ldr	r0, .L_fc10
	b	.L_fd12
.L_fc10:
	.4byte	sUnk_82D9932
.L_fc14:
	cmp	r1, #123	@ 0x7b
	bgt	.L_fc20
	ldr	r0, .L_fc1c
	b	.L_fd12
.L_fc1c:
	.4byte	sUnk_82D9964
.L_fc20:
	cmp	r1, #127	@ 0x7f
	bgt	.L_fc2c
	ldr	r0, .L_fc28
	b	.L_fd12
.L_fc28:
	.4byte	sUnk_82D9990
.L_fc2c:
	cmp	r1, #131	@ 0x83
	bgt	.L_fc38
	ldr	r0, .L_fc34
	b	.L_fd12
.L_fc34:
	.4byte	sUnk_82D99BC
.L_fc38:
	cmp	r1, #135	@ 0x87
	bgt	.L_fc44
	ldr	r0, .L_fc40
	b	.L_fd12
.L_fc40:
	.4byte	sUnk_82D99E2
.L_fc44:
	cmp	r1, #139	@ 0x8b
	bgt	.L_fc50
	ldr	r0, .L_fc4c
	b	.L_fd12
.L_fc4c:
	.4byte	sUnk_82D9A08
.L_fc50:
	cmp	r1, #143	@ 0x8f
	bgt	.L_fc5c
	ldr	r0, .L_fc58
	b	.L_fd12
.L_fc58:
	.4byte	sUnk_82D9A28
.L_fc5c:
	cmp	r1, #147	@ 0x93
	bgt	.L_fc68
	ldr	r0, .L_fc64
	b	.L_fd12
.L_fc64:
	.4byte	sUnk_82D9A48
.L_fc68:
	cmp	r1, #151	@ 0x97
	bgt	.L_fc74
	ldr	r0, .L_fc70
	b	.L_fd12
.L_fc70:
	.4byte	sUnk_82D9A68
.L_fc74:
	cmp	r1, #155	@ 0x9b
	bgt	.L_fc80
	ldr	r0, .L_fc7c
	b	.L_fd12
.L_fc7c:
	.4byte	sUnk_82D9A8E
.L_fc80:
	cmp	r1, #159	@ 0x9f
	bgt	.L_fc8c
	ldr	r0, .L_fc88
	b	.L_fd12
.L_fc88:
	.4byte	sUnk_82D9AB4
.L_fc8c:
	cmp	r1, #163	@ 0xa3
	bgt	.L_fc98
	ldr	r0, .L_fc94
	b	.L_fd12
.L_fc94:
	.4byte	sUnk_82D9ADA
.L_fc98:
	cmp	r1, #167	@ 0xa7
	bgt	.L_fca4
	ldr	r0, .L_fca0
	b	.L_fd12
.L_fca0:
	.4byte	sUnk_82D9B00
.L_fca4:
	cmp	r1, #171	@ 0xab
	bgt	.L_fcb0
	ldr	r0, .L_fcac
	b	.L_fd12
.L_fcac:
	.4byte	sUnk_82D9B26
.L_fcb0:
	cmp	r1, #175	@ 0xaf
	bgt	.L_fcbc
	ldr	r0, .L_fcb8
	b	.L_fd12
.L_fcb8:
	.4byte	sUnk_82D9B4C
.L_fcbc:
	cmp	r1, #179	@ 0xb3
	bgt	.L_fcc8
	ldr	r0, .L_fcc4
	b	.L_fd12
.L_fcc4:
	.4byte	sUnk_82D9B72
.L_fcc8:
	cmp	r1, #183	@ 0xb7
	bgt	.L_fcd4
	ldr	r0, .L_fcd0
	b	.L_fd12
.L_fcd0:
	.4byte	sUnk_82D9B98
.L_fcd4:
	cmp	r1, #187	@ 0xbb
	bgt	.L_fce0
	ldr	r0, .L_fcdc
	b	.L_fd12
.L_fcdc:
	.4byte	sUnk_82D9BBE
.L_fce0:
	cmp	r1, #191	@ 0xbf
	bgt	.L_fcec
	ldr	r0, .L_fce8
	b	.L_fd12
.L_fce8:
	.4byte	sUnk_82D9BDE
.L_fcec:
	cmp	r1, #195	@ 0xc3
	bgt	.L_fcf8
	ldr	r0, .L_fcf4
	b	.L_fd12
.L_fcf4:
	.4byte	sUnk_82D9BFE
.L_fcf8:
	cmp	r1, #199	@ 0xc7
	bgt	.L_fd04
	ldr	r0, .L_fd00
	b	.L_fd12
.L_fd00:
	.4byte	sUnk_82D9C1E
.L_fd04:
	cmp	r1, #203	@ 0xcb
	bgt	.L_fd10
	ldr	r0, .L_fd0c
	b	.L_fd12
.L_fd0c:
	.4byte	sUnk_82D9C3E
.L_fd10:
	ldr	r0, .L_fd24
.L_fd12:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #207	@ 0xcf
	bne	.L_fd1c
	mov	r0, #1
.L_fd1c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_fd24:
	.4byte	sUnk_82D9C5E
