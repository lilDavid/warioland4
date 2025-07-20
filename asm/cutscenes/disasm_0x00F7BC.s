.include "macros.s.inc"


thumb_func_start func_800F7BC
func_800F7BC:
	add	r2, r0, #0	
	cmp	r2, #7	
	bgt	.L_f7cc	
	ldr	r0, .L_f7c8	
	b	.L_f88e	
	.align	2, 0	
.L_f7c8:
	.4byte	sUnk_82D270C	
.L_f7cc:
	cmp	r2, #15	
	bgt	.L_f7d8	
	ldr	r0, .L_f7d4	
	b	.L_f88e	
.L_f7d4:
	.4byte	sUnk_82D2714	
.L_f7d8:
	cmp	r2, #23	
	bgt	.L_f7e4	
	ldr	r0, .L_f7e0	
	b	.L_f88e	
.L_f7e0:
	.4byte	sUnk_82D2722	
.L_f7e4:
	cmp	r2, #31	
	bgt	.L_f7f0	
	ldr	r0, .L_f7ec	
	b	.L_f88e	
.L_f7ec:
	.4byte	sUnk_82D272A	
.L_f7f0:
	cmp	r2, #47	@ 0x2f
	bgt	.L_f7fc	
	ldr	r0, .L_f7f8	
	b	.L_f88e	
.L_f7f8:
	.4byte	sUnk_82D2738	
.L_f7fc:
	cmp	r2, #55	@ 0x37
	bgt	.L_f808	
	ldr	r0, .L_f804	
	b	.L_f88e	
.L_f804:
	.4byte	sUnk_82D2746	
.L_f808:
	cmp	r2, #63	@ 0x3f
	bgt	.L_f814	
	ldr	r0, .L_f810	
	b	.L_f88e	
.L_f810:
	.4byte	sUnk_82D275A	
.L_f814:
	cmp	r2, #71	@ 0x47
	bgt	.L_f820	
	ldr	r0, .L_f81c	
	b	.L_f88e	
.L_f81c:
	.4byte	sUnk_82D276E	
.L_f820:
	cmp	r2, #87	@ 0x57
	bgt	.L_f82c	
	ldr	r0, .L_f828	
	b	.L_f88e	
.L_f828:
	.4byte	sUnk_82D2956	
.L_f82c:
	cmp	r2, #95	@ 0x5f
	bgt	.L_f838	
	ldr	r0, .L_f834	
	b	.L_f88e	
.L_f834:
	.4byte	sUnk_82D2788	
.L_f838:
	cmp	r2, #103	@ 0x67
	bgt	.L_f844	
	ldr	r0, .L_f840	
	b	.L_f88e	
.L_f840:
	.4byte	sUnk_82D27B4	
.L_f844:
	cmp	r2, #111	@ 0x6f
	bgt	.L_f850	
	ldr	r0, .L_f84c	
	b	.L_f88e	
.L_f84c:
	.4byte	sUnk_82D27E0	
.L_f850:
	cmp	r2, #119	@ 0x77
	bgt	.L_f85c	
	ldr	r0, .L_f858	
	b	.L_f88e	
.L_f858:
	.4byte	sUnk_82D2812	
.L_f85c:
	cmp	r2, #139	@ 0x8b
	bgt	.L_f868	
	ldr	r0, .L_f864	
	b	.L_f88e	
.L_f864:
	.4byte	sUnk_82D283E	
.L_f868:
	cmp	r2, #159	@ 0x9f
	bgt	.L_f874	
	ldr	r0, .L_f870	
	b	.L_f88e	
.L_f870:
	.4byte	sUnk_82D286A	
.L_f874:
	cmp	r2, #179	@ 0xb3
	bgt	.L_f880	
	ldr	r0, .L_f87c	
	b	.L_f88e	
.L_f87c:
	.4byte	sUnk_82D289C	
.L_f880:
	cmp	r2, #199	@ 0xc7
	bgt	.L_f88c	
	ldr	r0, .L_f888	
	b	.L_f88e	
.L_f888:
	.4byte	sUnk_82D28D4	
.L_f88c:
	ldr	r0, .L_f8a0	
.L_f88e:
	str	r0, [r1, #0]	
	mov	r1, #0	
	mov	r0, #149	@ 0x95
	lsl	r0, r0, #1	
	cmp	r2, r0	
	ble	.L_f89c	
	mov	r1, #1	
.L_f89c:
	add	r0, r1, #0	
	bx	lr	
.L_f8a0:
	.4byte	sUnk_82D2912	


thumb_func_start func_800F8A4
func_800F8A4:
	add	r2, r0, #0	
	cmp	r2, #7	
	bgt	.L_f8b4	
	ldr	r0, .L_f8b0	
	b	.L_f92e	
	.align	2, 0	
.L_f8b0:
	.4byte	sUnk_82D2976	
.L_f8b4:
	cmp	r2, #15	
	bgt	.L_f8c0	
	ldr	r0, .L_f8bc	
	b	.L_f92e	
.L_f8bc:
	.4byte	sUnk_82D297E	
.L_f8c0:
	cmp	r2, #23	
	bgt	.L_f8cc	
	ldr	r0, .L_f8c8	
	b	.L_f92e	
.L_f8c8:
	.4byte	sUnk_82D298C	
.L_f8cc:
	cmp	r2, #31	
	bgt	.L_f8d8	
	ldr	r0, .L_f8d4	
	b	.L_f92e	
.L_f8d4:
	.4byte	sUnk_82D2994	
.L_f8d8:
	cmp	r2, #47	@ 0x2f
	bgt	.L_f8e4	
	ldr	r0, .L_f8e0	
	b	.L_f92e	
.L_f8e0:
	.4byte	sUnk_82D29A2	
.L_f8e4:
	cmp	r2, #55	@ 0x37
	bgt	.L_f8f0	
	ldr	r0, .L_f8ec	
	b	.L_f92e	
.L_f8ec:
	.4byte	sUnk_82D29B0	
.L_f8f0:
	cmp	r2, #63	@ 0x3f
	bgt	.L_f8fc	
	ldr	r0, .L_f8f8	
	b	.L_f92e	
.L_f8f8:
	.4byte	sUnk_82D29BE	
.L_f8fc:
	cmp	r2, #93	@ 0x5d
	bgt	.L_f908	
	ldr	r0, .L_f904	
	b	.L_f92e	
.L_f904:
	.4byte	sUnk_82D29D2	
.L_f908:
	cmp	r2, #113	@ 0x71
	bgt	.L_f914	
	ldr	r0, .L_f910	
	b	.L_f92e	
.L_f910:
	.4byte	sUnk_82D29E6	
.L_f914:
	cmp	r2, #133	@ 0x85
	bgt	.L_f920	
	ldr	r0, .L_f91c	
	b	.L_f92e	
.L_f91c:
	.4byte	sUnk_82D2A00	
.L_f920:
	cmp	r2, #153	@ 0x99
	bgt	.L_f92c	
	ldr	r0, .L_f928	
	b	.L_f92e	
.L_f928:
	.4byte	sUnk_82D2A20	
.L_f92c:
	ldr	r0, .L_f93c	
.L_f92e:
	str	r0, [r1, #0]	
	mov	r0, #0	
	cmp	r2, #252	@ 0xfc
	ble	.L_f938	
	mov	r0, #1	
.L_f938:
	bx	lr	
	.align	2, 0	
.L_f93c:
	.4byte	sUnk_82D2A46	


thumb_func_start func_800F940
func_800F940:
	push	{r4, r5, r6, lr}	
	add	r4, r1, #0	
	add	r5, r2, #0	
	add	r6, r3, #0	
	ldr	r1, .L_f988	
	lsl	r0, r0, #16	
	asr	r0, r0, #14	
	add	r1, r0, r1	
	ldr	r2, [r1, #0]	
	ldr	r1, .L_f98c	
	add	r0, r0, r1	
	ldr	r3, [r0, #0]	
	mov	r1, #0	
	cmp	r4, #0	
	blt	.L_f966	
	add	r1, r4, #0	
	cmp	r4, #179	@ 0xb3
	ble	.L_f966	
	mov	r1, #179	@ 0xb3
.L_f966:
	lsl	r1, r1, #1	
	add	r0, r1, r2	
	ldrh	r0, [r0, #0]	
	neg	r0, r0	
	strh	r0, [r5, #0]	
	add	r1, r1, r3	
	ldrh	r0, [r1, #0]	
	neg	r0, r0	
	strh	r0, [r6, #0]	
	mov	r0, #0	
	cmp	r4, #178	@ 0xb2
	ble	.L_f980	
	mov	r0, #1	
.L_f980:
	pop	{r4, r5, r6}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_f988:
	.4byte	sUnk_878E7C0	
.L_f98c:
	.4byte	sUnk_878E7D0	


thumb_func_start func_800F990
func_800F990:
	push	{r4, r5, r6, lr}	
	add	r4, r1, #0	
	add	r5, r2, #0	
	add	r6, r3, #0	
	ldr	r1, .L_f9d8	
	lsl	r0, r0, #16	
	asr	r0, r0, #14	
	add	r1, r0, r1	
	ldr	r2, [r1, #0]	
	ldr	r1, .L_f9dc	
	add	r0, r0, r1	
	ldr	r3, [r0, #0]	
	mov	r1, #0	
	cmp	r4, #0	
	blt	.L_f9b6	
	add	r1, r4, #0	
	cmp	r4, #179	@ 0xb3
	ble	.L_f9b6	
	mov	r1, #179	@ 0xb3
.L_f9b6:
	lsl	r1, r1, #1	
	add	r0, r1, r2	
	ldrh	r0, [r0, #0]	
	neg	r0, r0	
	strh	r0, [r5, #0]	
	add	r1, r1, r3	
	ldrh	r0, [r1, #0]	
	neg	r0, r0	
	strh	r0, [r6, #0]	
	mov	r0, #0	
	cmp	r4, #178	@ 0xb2
	ble	.L_f9d0	
	mov	r0, #1	
.L_f9d0:
	pop	{r4, r5, r6}	
	pop	{r1}	
	bx	r1	
	.align	2, 0	
.L_f9d8:
	.4byte	sUnk_878E7E0	
.L_f9dc:
	.4byte	sUnk_878E7F0	
