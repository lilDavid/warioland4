#include "sound.h"
#include "voice_set.h"


const s32 sVoiceSet_0[8];
const s32 sVoiceSet_Wario_Treasure[18];
const s32 sVoiceSet_2[7];
const s32 sVoiceSet_3[15];
const s32 sVoiceSet_Wario_Sorry[9];
const s32 sVoiceSet_5[5];
const s32 sVoiceSet_6[5];
const s32 sVoiceSet_7[5];
const s32 sVoiceSet_8[13];
const s32 sVoiceSet_Wario_Hurt[7];
const s32 sVoiceSet_10[6];
const s32 sVoiceSet_11[8];
const s32 sVoiceSet_12[3];
const s32 sVoiceSet_13[2];
const s32 sVoiceSet_14[2];
const s32 sVoiceSet_15[2];
const s32 sVoiceSet_16[2];
const s32 sVoiceSet_17[2];
const s32 sVoiceSet_18[19];
const s32 sVoiceSet_19[3];
const s32 sVoiceSet_20[3];
const s32 sVoiceSet_21[3];
const s32 sVoiceSet_22[3];


const s32 sVoiceSetSizes[VS_MAX] = {
    [VS_0] = ARRAY_SIZE(sVoiceSet_0),
    [VS_WARIO_TREASURE] = ARRAY_SIZE(sVoiceSet_Wario_Treasure),
    [VS_2] = ARRAY_SIZE(sVoiceSet_2),
    [VS_3] = ARRAY_SIZE(sVoiceSet_3),
    [VS_WARIO_SORRY] = ARRAY_SIZE(sVoiceSet_Wario_Sorry),
    [VS_5] = ARRAY_SIZE(sVoiceSet_5),
    [VS_6] = ARRAY_SIZE(sVoiceSet_6),
    [VS_7] = ARRAY_SIZE(sVoiceSet_7),
    [VS_8] = ARRAY_SIZE(sVoiceSet_8),
    [VS_WARIO_HURT] = ARRAY_SIZE(sVoiceSet_Wario_Hurt),
    [VS_10] = ARRAY_SIZE(sVoiceSet_10),
    [VS_11] = ARRAY_SIZE(sVoiceSet_11),
    [VS_12] = ARRAY_SIZE(sVoiceSet_12),
    [VS_13] = ARRAY_SIZE(sVoiceSet_13),
    [VS_14] = ARRAY_SIZE(sVoiceSet_14),
    [VS_15] = ARRAY_SIZE(sVoiceSet_15),
    [VS_16] = ARRAY_SIZE(sVoiceSet_16),
    [VS_17] = ARRAY_SIZE(sVoiceSet_17),
    [VS_18] = ARRAY_SIZE(sVoiceSet_18),
    [VS_19] = ARRAY_SIZE(sVoiceSet_19),
    [VS_20] = ARRAY_SIZE(sVoiceSet_20),
    [VS_21] = ARRAY_SIZE(sVoiceSet_21),
    [VS_22] = ARRAY_SIZE(sVoiceSet_22),
};

const s32 sVoiceSet_0[] = {
    SOUND_2F8, SOUND_2F9, SOUND_30D, SOUND_2FD, SOUND_2FF, SOUND_303, SOUND_310, SOUND_311,
};

const s32 sVoiceSet_Wario_Treasure[] = {
    SOUND_2E1, SOUND_2E2, SOUND_2E5, SOUND_2EE, SOUND_2EF, SOUND_2FA, SOUND_2FB, SOUND_2FC,
    SOUND_2FE, SOUND_300, SOUND_301, SOUND_302, SOUND_303, SOUND_304, SOUND_30E, SOUND_30F,
    SOUND_310, SOUND_311,
};

const s32 sVoiceSet_2[] = {
    SOUND_2DF, SOUND_2E0, SOUND_2E3, SOUND_2E4, SOUND_2E6, SOUND_2EA, SOUND_2EB,
};

const s32 sVoiceSet_3[] = {
    SOUND_2E7, SOUND_2E8, SOUND_2E9, SOUND_2EE, SOUND_2EF, SOUND_2F3, SOUND_2F4, SOUND_2FE,
    SOUND_2FF, SOUND_300, SOUND_301, SOUND_302, SOUND_303, SOUND_304, SOUND_30F,
};

const s32 sVoiceSet_Wario_Sorry[] = {
    SOUND_2EC, SOUND_2ED, SOUND_2F8, SOUND_2F9, SOUND_2FD, SOUND_301, SOUND_305, SOUND_306,
    SOUND_307,
};

const s32 sVoiceSet_5[] = {
    SOUND_2DA, SOUND_2DB, SOUND_2DC, SOUND_2DD, SOUND_2DE,
};

const s32 sVoiceSet_6[] = {
    SOUND_308, SOUND_309, SOUND_30A, SOUND_30B, SOUND_30C,
};

const s32 sVoiceSet_7[] = {
    SOUND_2E0, SOUND_2E2, SOUND_2F5, SOUND_2F6, SOUND_2F7,
};

const s32 sVoiceSet_8[] = {
    SOUND_2EA, SOUND_2EB, SOUND_2E7, SOUND_2E8, SOUND_2E9, SOUND_2EE, SOUND_2EF, SOUND_2F8,
    SOUND_2F9, SOUND_2FE, SOUND_2FF, SOUND_300, SOUND_301,
};

const s32 sVoiceSet_Wario_Hurt[] = {
    SOUND_2EE, SOUND_2EF, SOUND_2F0, SOUND_2F1, SOUND_2F2, SOUND_310, SOUND_311,
};

const s32 sVoiceSet_10[] = {
    SOUND_2EC, SOUND_2ED, SOUND_2F8, SOUND_2F9, SOUND_2FD, SOUND_301,
};

const s32 sVoiceSet_11[] = {
    SOUND_2EC, SOUND_2ED, SOUND_2F8, SOUND_2FD, SOUND_301, SOUND_305, SOUND_306, SOUND_307,
};

const s32 sVoiceSet_12[] = {
    SOUND_93, SOUND_85, SOUND_86,
};

const s32 sVoiceSet_13[] = {
    SOUND_AC, SOUND_87,
};

const s32 sVoiceSet_14[] = {
    SOUND_B3, SOUND_88,
};

const s32 sVoiceSet_15[] = {
    SOUND_99, SOUND_89,
};

const s32 sVoiceSet_16[] = {
    SOUND_9F, SOUND_8A,
};

const s32 sVoiceSet_17[] = {
    SOUND_C8, SOUND_8B,
};

const s32 sVoiceSet_18[] = {
    SOUND_208, SOUND_209, SOUND_20A, SOUND_20B, SOUND_20C, SOUND_20D, SOUND_20E, SOUND_20F,
    SOUND_210, SOUND_211, SOUND_212, SOUND_213, SOUND_214, SOUND_215, SOUND_216, SOUND_217,
    SOUND_218, SOUND_219, SOUND_21A,
};

const s32 sVoiceSet_19[] = {
    SOUND_1DD, SOUND_1DE, SOUND_1DF,
};

const s32 sVoiceSet_20[] = {
    SOUND_1E0, SOUND_1E1, SOUND_1E2,
};

const s32 sVoiceSet_21[] = {
    SOUND_1D6, SOUND_1E4, SOUND_1E5,
};

const s32 sVoiceSet_22[] = {
    SOUND_1E6, SOUND_1E7, SOUND_1E8,
};

const s32* const sVoiceSetPointers[VS_MAX] = {
    [VS_0] = sVoiceSet_0,
    [VS_WARIO_TREASURE] = sVoiceSet_Wario_Treasure,
    [VS_2] = sVoiceSet_2,
    [VS_3] = sVoiceSet_3,
    [VS_WARIO_SORRY] = sVoiceSet_Wario_Sorry,
    [VS_5] = sVoiceSet_5,
    [VS_6] = sVoiceSet_6,
    [VS_7] = sVoiceSet_7,
    [VS_8] = sVoiceSet_8,
    [VS_WARIO_HURT] = sVoiceSet_Wario_Hurt,
    [VS_10] = sVoiceSet_10,
    [VS_11] = sVoiceSet_11,
    [VS_12] = sVoiceSet_12,
    [VS_13] = sVoiceSet_13,
    [VS_14] = sVoiceSet_14,
    [VS_15] = sVoiceSet_15,
    [VS_16] = sVoiceSet_16,
    [VS_17] = sVoiceSet_17,
    [VS_18] = sVoiceSet_18,
    [VS_19] = sVoiceSet_19,
    [VS_20] = sVoiceSet_20,
    [VS_21] = sVoiceSet_21,
    [VS_22] = sVoiceSet_22,
};


// TODO: Figure out what this is for and move it into an appropriate header
extern struct {
    u32 unk_0;
    u32 unk_4;
} gUnk_3006130;

#ifdef NON_MATCHING
void VoiceSet_Play(s32 voiceSet) {
    s32 chosenSound;

    if (voiceSet >= (s32) ARRAY_SIZE(sVoiceSetSizes)) {
        return;
    }
    if (voiceSet >= 0 && (voiceSet <= 4 || (voiceSet < 12 && voiceSet >= 6)) && (gUnk_3006130.unk_4 & 0xF)) {
        return;
    }
    chosenSound = func_8089B80() % sVoiceSetSizes[voiceSet];
    Sound_Play(sVoiceSetPointers[voiceSet][chosenSound]);
}
#else
__attribute__((naked))
void VoiceSet_Play(s32 voiceSet) {
    asm("\n\
	push	{r4, lr}\n\
	add	r4, r0, #0\n\
	cmp	r4, #22\n\
	bgt	.L_88664\n\
	cmp	r4, #0\n\
	blt	.L_88644\n\
	cmp	r4, #4\n\
	ble	.L_88638\n\
	cmp	r4, #11\n\
	bgt	.L_88644\n\
	cmp	r4, #6\n\
	blt	.L_88644\n\
.L_88638:\n\
	ldr	r0, .L_8866c\n\
	ldr	r0, [r0, #4]\n\
	mov	r1, #15\n\
	and	r0, r1\n\
	cmp	r0, #0\n\
	bne	.L_88664\n\
.L_88644:\n\
	bl	func_8089B80\n\
	ldr	r1, .L_88670\n\
	lsl	r4, r4, #2\n\
	add	r1, r4, r1\n\
	ldr	r1, [r1, #0]\n\
	bl	__modsi3\n\
	ldr	r1, .L_88674\n\
	add	r4, r4, r1\n\
	ldr	r1, [r4, #0]\n\
	lsl	r0, r0, #2\n\
	add	r0, r0, r1\n\
	ldrh	r0, [r0, #0]\n\
	bl	Sound_Play\n\
.L_88664:\n\
	pop	{r4}\n\
	pop	{r0}\n\
	bx	r0\n\
	.align	2, 0\n\
.L_8866c:\n\
	.4byte	gUnk_3006130\n\
.L_88670:\n\
	.4byte	sVoiceSetSizes\n\
.L_88674:\n\
	.4byte	sVoiceSetPointers\n\
    ");
}
#endif
