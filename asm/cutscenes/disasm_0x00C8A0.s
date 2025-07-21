.include "macros.s.inc"


thumb_func_start func_800C8A0
func_800C8A0:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_c8ac
	add	r0, #31
.L_c8ac:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_c8ba
	cmp	r4, #15
	bne	.L_c8c0
.L_c8ba:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_c8c0:
	cmp	r4, #2
	bgt	.L_c8cc
	ldr	r0, .L_c8c8
	b	.L_c91a
.L_c8c8:
	.4byte	sUnk_82A7590
.L_c8cc:
	cmp	r4, #6
	bgt	.L_c8d8
	ldr	r0, .L_c8d4
	b	.L_c91a
.L_c8d4:
	.4byte	sUnk_82A75C8
.L_c8d8:
	cmp	r4, #10
	bgt	.L_c8e4
	ldr	r0, .L_c8e0
	b	.L_c91a
.L_c8e0:
	.4byte	sUnk_82A75FA
.L_c8e4:
	cmp	r4, #13
	bgt	.L_c8f0
	ldr	r0, .L_c8ec
	b	.L_c91a
.L_c8ec:
	.4byte	sUnk_82A7632
.L_c8f0:
	cmp	r4, #16
	ble	.L_c918
	cmp	r4, #20
	bgt	.L_c900
	ldr	r0, .L_c8fc
	b	.L_c91a
.L_c8fc:
	.4byte	sUnk_82A766A
.L_c900:
	cmp	r4, #24
	bgt	.L_c90c
	ldr	r0, .L_c908
	b	.L_c91a
.L_c908:
	.4byte	sUnk_82A76A2
.L_c90c:
	cmp	r4, #28
	bgt	.L_c918
	ldr	r0, .L_c914
	b	.L_c91a
.L_c914:
	.4byte	sUnk_82A76D4
.L_c918:
	ldr	r0, .L_c92c
.L_c91a:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_c924
	mov	r0, #1
.L_c924:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c92c:
	.4byte	sUnk_82A770C


thumb_func_start func_800C930
func_800C930:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_c938
	add	r0, #31
.L_c938:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #2
	bgt	.L_c94c
	ldr	r0, .L_c948
	b	.L_c99a
	.align	2, 0
.L_c948:
	.4byte	sUnk_82A78E4
.L_c94c:
	cmp	r3, #6
	bgt	.L_c958
	ldr	r0, .L_c954
	b	.L_c99a
.L_c954:
	.4byte	sUnk_82A78EC
.L_c958:
	cmp	r3, #10
	bgt	.L_c964
	ldr	r0, .L_c960
	b	.L_c99a
.L_c960:
	.4byte	sUnk_82A78F4
.L_c964:
	cmp	r3, #13
	bgt	.L_c970
	ldr	r0, .L_c96c
	b	.L_c99a
.L_c96c:
	.4byte	sUnk_82A78FC
.L_c970:
	cmp	r3, #16
	ble	.L_c998
	cmp	r3, #20
	bgt	.L_c980
	ldr	r0, .L_c97c
	b	.L_c99a
.L_c97c:
	.4byte	sUnk_82A7904
.L_c980:
	cmp	r3, #24
	bgt	.L_c98c
	ldr	r0, .L_c988
	b	.L_c99a
.L_c988:
	.4byte	sUnk_82A790C
.L_c98c:
	cmp	r3, #28
	bgt	.L_c998
	ldr	r0, .L_c994
	b	.L_c99a
.L_c994:
	.4byte	sUnk_82A7914
.L_c998:
	ldr	r0, .L_c9a8
.L_c99a:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_c9a4
	mov	r0, #1
.L_c9a4:
	bx	lr
	.align	2, 0
.L_c9a8:
	.4byte	sUnk_82A791C


thumb_func_start func_800C9AC
func_800C9AC:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_c9b8
	add	r0, #31
.L_c9b8:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_c9c6
	cmp	r4, #15
	bne	.L_c9cc
.L_c9c6:
	mov	r0, #5
	bl	m4aSongNumStartOrChange
.L_c9cc:
	cmp	r4, #7
	bgt	.L_c9d8
	ldr	r0, .L_c9d4
	b	.L_ca0a
.L_c9d4:
	.4byte	sUnk_82A7744
.L_c9d8:
	cmp	r4, #11
	bgt	.L_c9e4
	ldr	r0, .L_c9e0
	b	.L_ca0a
.L_c9e0:
	.4byte	sUnk_82A7752
.L_c9e4:
	cmp	r4, #15
	bgt	.L_c9f0
	ldr	r0, .L_c9ec
	b	.L_ca0a
.L_c9ec:
	.4byte	sUnk_82A7760
.L_c9f0:
	cmp	r4, #23
	bgt	.L_c9fc
	ldr	r0, .L_c9f8
	b	.L_ca0a
.L_c9f8:
	.4byte	sUnk_82A776E
.L_c9fc:
	cmp	r4, #27
	bgt	.L_ca08
	ldr	r0, .L_ca04
	b	.L_ca0a
.L_ca04:
	.4byte	sUnk_82A777C
.L_ca08:
	ldr	r0, .L_ca1c
.L_ca0a:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_ca14
	mov	r0, #1
.L_ca14:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_ca1c:
	.4byte	sUnk_82A778A


thumb_func_start func_800CA20
func_800CA20:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_ca28
	add	r0, #31
.L_ca28:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_ca3c
	ldr	r0, .L_ca38
	b	.L_ca66
	.align	2, 0
.L_ca38:
	.4byte	sUnk_82A793C
.L_ca3c:
	cmp	r3, #11
	bgt	.L_ca48
	ldr	r0, .L_ca44
	b	.L_ca66
.L_ca44:
	.4byte	sUnk_82A7944
.L_ca48:
	cmp	r3, #15
	ble	.L_ca64
	cmp	r3, #23
	bgt	.L_ca58
	ldr	r0, .L_ca54
	b	.L_ca66
.L_ca54:
	.4byte	sUnk_82A793C
.L_ca58:
	cmp	r3, #27
	bgt	.L_ca64
	ldr	r0, .L_ca60
	b	.L_ca66
.L_ca60:
	.4byte	sUnk_82A7944
.L_ca64:
	ldr	r0, .L_ca74
.L_ca66:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_ca70
	mov	r0, #1
.L_ca70:
	bx	lr
	.align	2, 0
.L_ca74:
	.4byte	sUnk_82A794C


thumb_func_start func_800CA78
func_800CA78:
	ldr	r2, .L_ca88
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_ca84
	mov	r1, #1
.L_ca84:
	add	r0, r1, #0
	bx	lr
.L_ca88:
	.4byte	sUnk_82A7834


thumb_func_start func_800CA8C
func_800CA8C:
	ldr	r2, .L_ca9c
	str	r2, [r1, #0]
	mov	r1, #0
	cmp	r0, #3
	bne	.L_ca98
	mov	r1, #1
.L_ca98:
	add	r0, r1, #0
	bx	lr
.L_ca9c:
	.4byte	sUnk_82A7954


thumb_func_start func_800CAA0
func_800CAA0:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_caa8
	add	r0, #31
.L_caa8:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_cabc
	ldr	r0, .L_cab8
	b	.L_cace
	.align	2, 0
.L_cab8:
	.4byte	sUnk_82A783C
.L_cabc:
	cmp	r3, #15
	ble	.L_cacc
	cmp	r3, #23
	bgt	.L_cacc
	ldr	r0, .L_cac8
	b	.L_cace
.L_cac8:
	.4byte	sUnk_82A7874
.L_cacc:
	ldr	r0, .L_cadc
.L_cace:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_cad8
	mov	r0, #1
.L_cad8:
	bx	lr
	.align	2, 0
.L_cadc:
	.4byte	sUnk_82A78AC


thumb_func_start func_800CAE0
func_800CAE0:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_cae8
	add	r0, #31
.L_cae8:
	asr	r3, r0, #5
	lsl	r0, r3, #5
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_cafc
	ldr	r0, .L_caf8
	b	.L_cb0e
	.align	2, 0
.L_caf8:
	.4byte	sUnk_82A795C
.L_cafc:
	cmp	r3, #15
	ble	.L_cb0c
	cmp	r3, #23
	bgt	.L_cb0c
	ldr	r0, .L_cb08
	b	.L_cb0e
.L_cb08:
	.4byte	sUnk_82A796C
.L_cb0c:
	ldr	r0, .L_cb1c
.L_cb0e:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #31
	bne	.L_cb18
	mov	r0, #1
.L_cb18:
	bx	lr
	.align	2, 0
.L_cb1c:
	.4byte	sUnk_82A7964


thumb_func_start func_800CB20
func_800CB20:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #18
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_cb38
	ldr	r0, .L_cb34
	b	.L_cb46
.L_cb34:
	.4byte	sUnk_82A7798
.L_cb38:
	cmp	r1, #11
	bgt	.L_cb44
	ldr	r0, .L_cb40
	b	.L_cb46
.L_cb40:
	.4byte	sUnk_82A77D0
.L_cb44:
	ldr	r0, .L_cb58
.L_cb46:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #17
	bne	.L_cb50
	mov	r0, #1
.L_cb50:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cb58:
	.4byte	sUnk_82A7802


thumb_func_start func_800CB5C
func_800CB5C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #18
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_cb74
	ldr	r0, .L_cb70
	b	.L_cb82
.L_cb70:
	.4byte	sUnk_82A7924
.L_cb74:
	cmp	r1, #11
	bgt	.L_cb80
	ldr	r0, .L_cb7c
	b	.L_cb82
.L_cb7c:
	.4byte	sUnk_82A792C
.L_cb80:
	ldr	r0, .L_cb94
.L_cb82:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #17
	bne	.L_cb8c
	mov	r0, #1
.L_cb8c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cb94:
	.4byte	sUnk_82A7934


thumb_func_start func_800CB98
func_800CB98:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_cba4
	add	r0, #31
.L_cba4:
	asr	r4, r0, #5
	lsl	r0, r4, #5
	sub	r4, r2, r0
	cmp	r4, #0
	beq	.L_cbb2
	cmp	r4, #15
	bne	.L_cbb8
.L_cbb2:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_cbb8:
	cmp	r4, #2
	bgt	.L_cbc4
	ldr	r0, .L_cbc0
	b	.L_cc12
.L_cbc0:
	.4byte	sUnk_82A7974
.L_cbc4:
	cmp	r4, #6
	bgt	.L_cbd0
	ldr	r0, .L_cbcc
	b	.L_cc12
.L_cbcc:
	.4byte	sUnk_82A79A6
.L_cbd0:
	cmp	r4, #10
	bgt	.L_cbdc
	ldr	r0, .L_cbd8
	b	.L_cc12
.L_cbd8:
	.4byte	sUnk_82A79D2
.L_cbdc:
	cmp	r4, #13
	bgt	.L_cbe8
	ldr	r0, .L_cbe4
	b	.L_cc12
.L_cbe4:
	.4byte	sUnk_82A7A04
.L_cbe8:
	cmp	r4, #16
	ble	.L_cc10
	cmp	r4, #20
	bgt	.L_cbf8
	ldr	r0, .L_cbf4
	b	.L_cc12
.L_cbf4:
	.4byte	sUnk_82A7A36
.L_cbf8:
	cmp	r4, #24
	bgt	.L_cc04
	ldr	r0, .L_cc00
	b	.L_cc12
.L_cc00:
	.4byte	sUnk_82A7A68
.L_cc04:
	cmp	r4, #28
	bgt	.L_cc10
	ldr	r0, .L_cc0c
	b	.L_cc12
.L_cc0c:
	.4byte	sUnk_82A7A94
.L_cc10:
	ldr	r0, .L_cc24
.L_cc12:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #31
	bne	.L_cc1c
	mov	r0, #1
.L_cc1c:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cc24:
	.4byte	sUnk_82A7AC6


thumb_func_start func_800CC28
func_800CC28:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_cc40
	ldr	r0, .L_cc3c
	b	.L_cc4e
.L_cc3c:
	.4byte	sUnk_82A7B82
.L_cc40:
	cmp	r1, #15
	bgt	.L_cc4c
	ldr	r0, .L_cc48
	b	.L_cc4e
.L_cc48:
	.4byte	sUnk_82A7BBA
.L_cc4c:
	ldr	r0, .L_cc60
.L_cc4e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_cc58
	mov	r0, #1
.L_cc58:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cc60:
	.4byte	sUnk_82A7BF2


thumb_func_start func_800CC64
func_800CC64:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #18
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_cc7c
	ldr	r0, .L_cc78
	b	.L_cc8a
.L_cc78:
	.4byte	sUnk_82A7AF8
.L_cc7c:
	cmp	r1, #11
	bgt	.L_cc88
	ldr	r0, .L_cc84
	b	.L_cc8a
.L_cc84:
	.4byte	sUnk_82A7B2A
.L_cc88:
	ldr	r0, .L_cc9c
.L_cc8a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #17
	bne	.L_cc94
	mov	r0, #1
.L_cc94:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cc9c:
	.4byte	sUnk_82A7B56


thumb_func_start func_800CCA0
func_800CCA0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #14
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_ccb8
	ldr	r0, .L_ccb4
	b	.L_ccc6
.L_ccb4:
	.4byte	sUnk_82A7C2A
.L_ccb8:
	cmp	r1, #9
	bgt	.L_ccc4
	ldr	r0, .L_ccc0
	b	.L_ccc6
.L_ccc0:
	.4byte	sUnk_82A7C44
.L_ccc4:
	ldr	r0, .L_ccd8
.L_ccc6:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #13
	bne	.L_ccd0
	mov	r0, #1
.L_ccd0:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_ccd8:
	.4byte	sUnk_82A7C64


thumb_func_start func_800CCDC
func_800CCDC:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #148	@ 0x94
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #19
	bgt	.L_ccf4
	ldr	r0, .L_ccf0
	b	.L_cd1a
.L_ccf0:
	.4byte	sUnk_82A7C44
.L_ccf4:
	cmp	r1, #23
	bgt	.L_cd00
	ldr	r0, .L_ccfc
	b	.L_cd1a
.L_ccfc:
	.4byte	sUnk_82A7CCC
.L_cd00:
	cmp	r1, #27
	bgt	.L_cd0c
	ldr	r0, .L_cd08
	b	.L_cd1a
.L_cd08:
	.4byte	sUnk_82A7CBE
.L_cd0c:
	cmp	r1, #47	@ 0x2f
	bgt	.L_cd18
	ldr	r0, .L_cd14
	b	.L_cd1a
.L_cd14:
	.4byte	sUnk_82A7C78
.L_cd18:
	ldr	r0, .L_cd2c
.L_cd1a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #147	@ 0x93
	bne	.L_cd24
	mov	r0, #1
.L_cd24:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cd2c:
	.4byte	sUnk_82A7C98


thumb_func_start func_800CD30
func_800CD30:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #12
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_cd48
	ldr	r0, .L_cd44
	b	.L_cd56
.L_cd44:
	.4byte	sUnk_82A7C98
.L_cd48:
	cmp	r1, #7
	bgt	.L_cd54
	ldr	r0, .L_cd50
	b	.L_cd56
.L_cd50:
	.4byte	sUnk_82A7CBE
.L_cd54:
	ldr	r0, .L_cd68
.L_cd56:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #11
	bne	.L_cd60
	mov	r0, #1
.L_cd60:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cd68:
	.4byte	sUnk_82A7CCC


thumb_func_start func_800CD6C
func_800CD6C:
	push	{r4, r5, lr}
	add	r5, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L_cd80
	cmp	r4, #12
	bne	.L_cd86
.L_cd80:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_cd86:
	cmp	r4, #3
	bgt	.L_cd94
	ldr	r0, .L_cd90
	b	.L_cdc6
	.align	2, 0
.L_cd90:
	.4byte	sUnk_82A7CDA
.L_cd94:
	cmp	r4, #7
	bgt	.L_cda0
	ldr	r0, .L_cd9c
	b	.L_cdc6
.L_cd9c:
	.4byte	sUnk_82A7D18
.L_cda0:
	cmp	r4, #11
	bgt	.L_cdac
	ldr	r0, .L_cda8
	b	.L_cdc6
.L_cda8:
	.4byte	sUnk_82A7D56
.L_cdac:
	cmp	r4, #15
	bgt	.L_cdb8
	ldr	r0, .L_cdb4
	b	.L_cdc6
.L_cdb4:
	.4byte	sUnk_82A7D94
.L_cdb8:
	cmp	r4, #19
	bgt	.L_cdc4
	ldr	r0, .L_cdc0
	b	.L_cdc6
.L_cdc0:
	.4byte	sUnk_82A7DCC
.L_cdc4:
	ldr	r0, .L_cdd8
.L_cdc6:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #23
	bne	.L_cdd0
	mov	r0, #1
.L_cdd0:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cdd8:
	.4byte	sUnk_82A7E0A


thumb_func_start func_800CDDC
func_800CDDC:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_cde4
	add	r0, #15
.L_cde4:
	asr	r3, r0, #4
	lsl	r0, r3, #4
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_cdf8
	ldr	r0, .L_cdf4
	b	.L_cdfa
	.align	2, 0
.L_cdf4:
	.4byte	sUnk_82A7E48
.L_cdf8:
	ldr	r0, .L_ce08
.L_cdfa:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #15
	bne	.L_ce04
	mov	r0, #1
.L_ce04:
	bx	lr
	.align	2, 0
.L_ce08:
	.4byte	sUnk_82A7E86


thumb_func_start func_800CE0C
func_800CE0C:
	push	{r4, r5, lr}
	add	r5, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L_ce20
	cmp	r4, #12
	bne	.L_ce26
.L_ce20:
	mov	r0, #1
	bl	m4aSongNumStartOrChange
.L_ce26:
	cmp	r4, #3
	bgt	.L_ce34
	ldr	r0, .L_ce30
	b	.L_ce66
	.align	2, 0
.L_ce30:
	.4byte	sUnk_82A7EC4
.L_ce34:
	cmp	r4, #7
	bgt	.L_ce40
	ldr	r0, .L_ce3c
	b	.L_ce66
.L_ce3c:
	.4byte	sUnk_82A7F02
.L_ce40:
	cmp	r4, #11
	bgt	.L_ce4c
	ldr	r0, .L_ce48
	b	.L_ce66
.L_ce48:
	.4byte	sUnk_82A7F40
.L_ce4c:
	cmp	r4, #15
	bgt	.L_ce58
	ldr	r0, .L_ce54
	b	.L_ce66
.L_ce54:
	.4byte	sUnk_82A7F7E
.L_ce58:
	cmp	r4, #19
	bgt	.L_ce64
	ldr	r0, .L_ce60
	b	.L_ce66
.L_ce60:
	.4byte	sUnk_82A7FB6
.L_ce64:
	ldr	r0, .L_ce78
.L_ce66:
	str	r0, [r5, #0]
	mov	r0, #0
	cmp	r4, #23
	bne	.L_ce70
	mov	r0, #1
.L_ce70:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_ce78:
	.4byte	sUnk_82A7FF4


thumb_func_start func_800CE7C
func_800CE7C:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_ce84
	add	r0, #15
.L_ce84:
	asr	r3, r0, #4
	lsl	r0, r3, #4
	sub	r3, r2, r0
	cmp	r3, #7
	bgt	.L_ce98
	ldr	r0, .L_ce94
	b	.L_ce9a
	.align	2, 0
.L_ce94:
	.4byte	sUnk_82A8032
.L_ce98:
	ldr	r0, .L_cea8
.L_ce9a:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #15
	bne	.L_cea4
	mov	r0, #1
.L_cea4:
	bx	lr
	.align	2, 0
.L_cea8:
	.4byte	sUnk_82A8070


thumb_func_start func_800CEAC
func_800CEAC:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #136	@ 0x88
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #7
	bgt	.L_cec4
	ldr	r0, .L_cec0
	b	.L_cf7a
.L_cec0:
	.4byte	sUnk_82A80AE
.L_cec4:
	cmp	r1, #15
	bgt	.L_ced0
	ldr	r0, .L_cecc
	b	.L_cf7a
.L_cecc:
	.4byte	sUnk_82A80B6
.L_ced0:
	cmp	r1, #23
	bgt	.L_cedc
	ldr	r0, .L_ced8
	b	.L_cf7a
.L_ced8:
	.4byte	sUnk_82A8126
.L_cedc:
	cmp	r1, #31
	bgt	.L_cee8
	ldr	r0, .L_cee4
	b	.L_cf7a
.L_cee4:
	.4byte	sUnk_82A80BE
.L_cee8:
	cmp	r1, #39	@ 0x27
	bgt	.L_cef4
	ldr	r0, .L_cef0
	b	.L_cf7a
.L_cef0:
	.4byte	sUnk_82A80C6
.L_cef4:
	cmp	r1, #47	@ 0x2f
	bgt	.L_cf00
	ldr	r0, .L_cefc
	b	.L_cf7a
.L_cefc:
	.4byte	sUnk_82A8126
.L_cf00:
	cmp	r1, #55	@ 0x37
	bgt	.L_cf0c
	ldr	r0, .L_cf08
	b	.L_cf7a
.L_cf08:
	.4byte	sUnk_82A80CE
.L_cf0c:
	cmp	r1, #63	@ 0x3f
	bgt	.L_cf18
	ldr	r0, .L_cf14
	b	.L_cf7a
.L_cf14:
	.4byte	sUnk_82A80D6
.L_cf18:
	cmp	r1, #71	@ 0x47
	bgt	.L_cf24
	ldr	r0, .L_cf20
	b	.L_cf7a
.L_cf20:
	.4byte	sUnk_82A80DE
.L_cf24:
	cmp	r1, #79	@ 0x4f
	bgt	.L_cf30
	ldr	r0, .L_cf2c
	b	.L_cf7a
.L_cf2c:
	.4byte	sUnk_82A80E6
.L_cf30:
	cmp	r1, #87	@ 0x57
	bgt	.L_cf3c
	ldr	r0, .L_cf38
	b	.L_cf7a
.L_cf38:
	.4byte	sUnk_82A80EE
.L_cf3c:
	cmp	r1, #95	@ 0x5f
	bgt	.L_cf48
	ldr	r0, .L_cf44
	b	.L_cf7a
.L_cf44:
	.4byte	sUnk_82A80F6
.L_cf48:
	cmp	r1, #103	@ 0x67
	bgt	.L_cf54
	ldr	r0, .L_cf50
	b	.L_cf7a
.L_cf50:
	.4byte	sUnk_82A80FE
.L_cf54:
	cmp	r1, #111	@ 0x6f
	bgt	.L_cf60
	ldr	r0, .L_cf5c
	b	.L_cf7a
.L_cf5c:
	.4byte	sUnk_82A8106
.L_cf60:
	cmp	r1, #119	@ 0x77
	bgt	.L_cf6c
	ldr	r0, .L_cf68
	b	.L_cf7a
.L_cf68:
	.4byte	sUnk_82A810E
.L_cf6c:
	cmp	r1, #127	@ 0x7f
	bgt	.L_cf78
	ldr	r0, .L_cf74
	b	.L_cf7a
.L_cf74:
	.4byte	sUnk_82A8126
.L_cf78:
	ldr	r0, .L_cf8c
.L_cf7a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #135	@ 0x87
	bne	.L_cf84
	mov	r0, #1
.L_cf84:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_cf8c:
	.4byte	sUnk_82A8116


thumb_func_start func_800CF90
func_800CF90:
	ldr	r2, .L_cf98
	str	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_cf98:
	.4byte	sUnk_82A812E


thumb_func_start func_800CF9C
func_800CF9C:
	ldr	r2, .L_cfa4
	str	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_cfa4:
	.4byte	sUnk_82A8136


thumb_func_start func_800CFA8
func_800CFA8:
	ldr	r2, .L_cfb0
	str	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_cfb0:
	.4byte	sUnk_82A813E


thumb_func_start func_800CFB4
func_800CFB4:
	ldr	r2, .L_cfbc
	str	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_cfbc:
	.4byte	sUnk_82A8146
