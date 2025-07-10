#include "bg_clip.h"
#include "game_state.h"
#include "in_game.h"
#include "oam.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "types.h"
#include "score.h"
#include "sound.h"
#include "wario.h"


enum SpearMaskExtraPoses {
    SPEAR_MASK_POSE_6E = 0x6E,
    SPEAR_MASK_POSE_6F,
    SPEAR_MASK_POSE_70,
    SPEAR_MASK_POSE_71,
    SPEAR_MASK_POSE_72,
    SPEAR_MASK_POSE_73,
    SPEAR_MASK_POSE_74,
    SPEAR_MASK_POSE_75,
};

#define SPEAR_MASK_PALETTE_YELLOW 0
#define SPEAR_MASK_PALETTE_BLUE 1
#define SPEAR_MASK_PALETTE_RED 2


const u16 sSpearMaskTuringOam_Frame1[] = {
    3,
    OAM_ENTRY(-17, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -8, ATTR0_WIDE, ATTR1_16x8, 512, 8, 0),
    OAM_ENTRY(-10, -20, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sSpearMaskTuringOam_Frame2[] = {
    3,
    OAM_ENTRY(-16, -15, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8, 544, 8, 0),
    OAM_ENTRY(-10, -22, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sSpearMaskTuringOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 514, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sSpearMaskTuringOam_Frame4[] = {
    3,
    OAM_ENTRY(-14, -12, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 546, 8, 0),
    OAM_ENTRY(-10, -20, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sSpearMaskTuringOam_Frame5[] = {
    3,
    OAM_ENTRY(-15, -14, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 516, 8, 0),
    OAM_ENTRY(-10, -22, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sSpearMaskTuringOam_Frame6[] = {
    3,
    OAM_ENTRY(-16, -14, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 548, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
};
const u16 sOamFrame_83B3A78[] = {
    5,
    OAM_ENTRY(-4, -18, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-8, -21, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
    OAM_ENTRY(6, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-14, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3A98[] = {
    5,
    OAM_ENTRY(-4, -17, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-8, -20, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
    OAM_ENTRY(6, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-14, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3AB8[] = {
    2,
    OAM_ENTRY(-17, -8, ATTR0_WIDE, ATTR1_32x8, 552, 8, 0),
    OAM_ENTRY(-9, -16, ATTR0_WIDE, ATTR1_16x8, 532, 8, 0),
};
const u16 sOamFrame_83B3AC6[] = {
    1,
    OAM_ENTRY(-16, -8, ATTR0_WIDE, ATTR1_32x8, 520, 8, 0),
};
const u16 sOamFrame_83B3ACE[] = {
    3,
    OAM_ENTRY(-6, -32, ATTR0_TALL, ATTR1_16x32, 535, 8, 0),
    OAM_ENTRY(-19, -33, ATTR0_SQUARE, ATTR1_16x16, 590, 8, 0),
    OAM_ENTRY(-8, -41, ATTR0_SQUARE, ATTR1_8x8, 565, 8, 0),
};
const u16 sOamFrame_83B3AE2[] = {
    1,
    OAM_ENTRY(-6, -32, ATTR0_TALL, ATTR1_16x32, 535, 8, 0),
};
const u16 sOamFrame_83B3AEA[] = {
    4,
    OAM_ENTRY(-5, -16, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-16, -12, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3B04[] = {
    4,
    OAM_ENTRY(-14, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-5, -14, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-10, -19, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
};
const u16 sOamFrame_83B3B1E[] = {
    4,
    OAM_ENTRY(-13, -12, ATTR0_WIDE, ATTR1_16x8, 593, 8, 0),
    OAM_ENTRY(-5, -16, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 548, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
};
const u16 sOamFrame_83B3B38[] = {
    4,
    OAM_ENTRY(-3, -17, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-8, -11, ATTR0_WIDE, ATTR1_16x8, 593, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 526, 8, 0),
    OAM_ENTRY(-8, -22, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
};
const u16 sOamFrame_83B3B52[] = {
    4,
    OAM_ENTRY(0, -17, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-5, -11, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 593, 8, 0),
    OAM_ENTRY(-6, -22, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 588, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 516, 8, 0),
};
const u16 sOamFrame_83B3B6C[] = {
    4,
    OAM_ENTRY(-8, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-14, -11, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -19, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
};
const u16 sOamFrame_83B3B86[] = {
    3,
    OAM_ENTRY(-14, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3B9A[] = {
    4,
    OAM_ENTRY(-8, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 514, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
};
const u16 sOamFrame_83B3BB4[] = {
    3,
    OAM_ENTRY(-22, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-9, -16, ATTR0_SQUARE, ATTR1_16x16, 580, 8, 0),
    OAM_ENTRY(-12, -22, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 582, 8, 0),
};
const u16 sOamFrame_83B3BC8[] = {
    5,
    OAM_ENTRY(5, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-8, -9, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-7, -20, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 548, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-12, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3BE8[] = {
    5,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-8, -10, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-6, -22, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 516, 8, 0),
    OAM_ENTRY(-10, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3C08[] = {
    5,
    OAM_ENTRY(5, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -19, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 546, 8, 0),
    OAM_ENTRY(-8, -9, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-12, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3C28[] = {
    5,
    OAM_ENTRY(-8, -20, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 514, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-5, -9, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3C48[] = {
    5,
    OAM_ENTRY(-10, -22, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 544, 8, 0),
    OAM_ENTRY(4, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -10, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-11, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3C68[] = {
    5,
    OAM_ENTRY(-10, -19, ATTR0_WIDE, ATTR1_16x8 | ATTR1_VFLIP, 512, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-5, -9, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3C88[] = {
    4,
    OAM_ENTRY(-10, -21, ATTR0_WIDE, ATTR1_16x8, 528, 8, 0),
    OAM_ENTRY(4, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-11, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 576, 8, 0),
    OAM_ENTRY(-14, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3CA2[] = {
    4,
    OAM_ENTRY(-10, -23, ATTR0_WIDE, ATTR1_16x8, 562, 8, 0),
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 576, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3CBC[] = {
    4,
    OAM_ENTRY(-6, -22, ATTR0_WIDE, ATTR1_16x8, 530, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 576, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3CD6[] = {
    2,
    OAM_ENTRY(-9, -21, ATTR0_WIDE, ATTR1_16x8, 528, 8, 0),
    OAM_ENTRY(-10, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 576, 8, 0),
};
const u16 sOamFrame_83B3CE4[] = {
    1,
    OAM_ENTRY(-8, -16, ATTR0_SQUARE, ATTR1_16x16, 528, 8, 0),
};
const u16 sOamFrame_83B3CEC[] = {
    4,
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -8, ATTR0_WIDE, ATTR1_16x8, 558, 8, 0),
    OAM_ENTRY(-6, -22, ATTR0_SQUARE, ATTR1_16x16, 582, 8, 0),
    OAM_ENTRY(-12, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3D06[] = {
    4,
    OAM_ENTRY(4, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -8, ATTR0_WIDE, ATTR1_16x8, 556, 8, 0),
    OAM_ENTRY(-6, -24, ATTR0_SQUARE, ATTR1_16x16, 582, 8, 0),
    OAM_ENTRY(-12, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3D20[] = {
    3,
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-6, -8, ATTR0_WIDE, ATTR1_16x8, 524, 8, 0),
    OAM_ENTRY(-6, -24, ATTR0_SQUARE, ATTR1_16x16, 582, 8, 0),
};
const u16 sOamFrame_83B3D34[] = {
    5,
    OAM_ENTRY(-3, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 548, 8, 0),
    OAM_ENTRY(-6, -21, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 588, 8, 0),
    OAM_ENTRY(4, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
};
const u16 sOamFrame_83B3D54[] = {
    5,
    OAM_ENTRY(-4, -16, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -21, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
};
const u16 sOamFrame_83B3D74[] = {
    5,
    OAM_ENTRY(-5, -17, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8, 544, 8, 0),
    OAM_ENTRY(-10, -22, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3D94[] = {
    4,
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -20, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3DAE[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3DC8[] = {
    3,
    OAM_ENTRY(-13, -13, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -32, ATTR0_SQUARE, ATTR1_32x32 | ATTR1_HFLIP | ATTR1_VFLIP, 540, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame2[] = {
    3,
    OAM_ENTRY(-20, -32, ATTR0_SQUARE, ATTR1_32x32 | ATTR1_HFLIP | ATTR1_VFLIP, 537, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame3[] = {
    3,
    OAM_ENTRY(-19, -24, ATTR0_SQUARE, ATTR1_32x32, 540, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame4[] = {
    3,
    OAM_ENTRY(-12, -24, ATTR0_SQUARE, ATTR1_32x32, 537, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3E2C[] = {
    5,
    OAM_ENTRY(-13, -11, ATTR0_SQUARE, ATTR1_8x8, 595, 8, 0),
    OAM_ENTRY(-5, -12, ATTR0_SQUARE, ATTR1_8x8, 596, 8, 0),
    OAM_ENTRY(3, -13, ATTR0_SQUARE, ATTR1_8x8, 597, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3E4C[] = {
    5,
    OAM_ENTRY(-13, -15, ATTR0_SQUARE, ATTR1_8x8, 595, 8, 0),
    OAM_ENTRY(-5, -14, ATTR0_SQUARE, ATTR1_8x8, 596, 8, 0),
    OAM_ENTRY(3, -13, ATTR0_SQUARE, ATTR1_8x8, 597, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3E6C[] = {
    4,
    OAM_ENTRY(-8, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-16, -11, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3E86[] = {
    5,
    OAM_ENTRY(-15, -10, ATTR0_WIDE, ATTR1_16x8, 595, 8, 0),
    OAM_ENTRY(1, -11, ATTR0_SQUARE, ATTR1_8x8, 597, 8, 0),
    OAM_ENTRY(-7, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3EA6[] = {
    5,
    OAM_ENTRY(-3, -11, ATTR0_SQUARE, ATTR1_8x8, 594, 8, 0),
    OAM_ENTRY(-11, -10, ATTR0_SQUARE, ATTR1_8x8, 593, 8, 0),
    OAM_ENTRY(-6, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3EC6[] = {
    5,
    OAM_ENTRY(-9, -10, ATTR0_SQUARE, ATTR1_8x8, 593, 8, 0),
    OAM_ENTRY(-2, -11, ATTR0_SQUARE, ATTR1_8x8, 594, 8, 0),
    OAM_ENTRY(-4, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -21, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3EE6[] = {
    5,
    OAM_ENTRY(1, -10, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 593, 8, 0),
    OAM_ENTRY(-6, -11, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 594, 8, 0),
    OAM_ENTRY(-4, -16, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-8, -21, ATTR0_SQUARE, ATTR1_16x16, 578, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3F06[] = {
    5,
    OAM_ENTRY(-5, -11, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 594, 8, 0),
    OAM_ENTRY(3, -10, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 593, 8, 0),
    OAM_ENTRY(-2, -16, ATTR0_SQUARE, ATTR1_8x8, 566, 8, 0),
    OAM_ENTRY(-6, -21, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 550, 8, 0),
};
const u16 sOamFrame_83B3F26[] = {
    5,
    OAM_ENTRY(0, -11, ATTR0_SQUARE, ATTR1_8x8, 594, 8, 0),
    OAM_ENTRY(-15, -10, ATTR0_WIDE, ATTR1_16x8, 595, 8, 0),
    OAM_ENTRY(-7, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3F46[] = {
    4,
    OAM_ENTRY(-16, -11, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-8, -16, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 588, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3F60[] = {
    3,
    OAM_ENTRY(-15, -19, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -19, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
};
const u16 sOamFrame_83B3F74[] = {
    3,
    OAM_ENTRY(-15, -21, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3F88[] = {
    3,
    OAM_ENTRY(-15, -25, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B3F9C[] = {
    3,
    OAM_ENTRY(-14, -22, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -8, ATTR0_WIDE, ATTR1_16x8, 512, 8, 0),
    OAM_ENTRY(-10, -20, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
};
const u16 sOamFrame_83B3FB0[] = {
    3,
    OAM_ENTRY(-17, -26, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8, 544, 8, 0),
    OAM_ENTRY(-10, -22, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
};
const u16 sOamFrame_83B3FC4[] = {
    3,
    OAM_ENTRY(-16, -23, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 514, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
};
const u16 sOamFrame_83B3FD8[] = {
    3,
    OAM_ENTRY(-16, -22, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 546, 8, 0),
    OAM_ENTRY(-10, -20, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
};
const u16 sOamFrame_83B3FEC[] = {
    3,
    OAM_ENTRY(-15, -26, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-6, -8, ATTR0_WIDE, ATTR1_16x8, 516, 8, 0),
    OAM_ENTRY(-10, -22, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
};
const u16 sOamFrame_83B4000[] = {
    3,
    OAM_ENTRY(-15, -24, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 584, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 548, 8, 0),
};
const u16 sOamFrame_83B4014[] = {
    4,
    OAM_ENTRY(5, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 586, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
    OAM_ENTRY(-13, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B402E[] = {
    4,
    OAM_ENTRY(5, -12, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 586, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
    OAM_ENTRY(-13, -12, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4048[] = {
    4,
    OAM_ENTRY(5, -11, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -19, ATTR0_SQUARE, ATTR1_16x16, 586, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 518, 8, 0),
    OAM_ENTRY(-13, -11, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4062[] = {
    4,
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B407C[] = {
    3,
    OAM_ENTRY(-16, -10, ATTR0_WIDE, ATTR1_32x8, 595, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B4090[] = {
    5,
    OAM_ENTRY(-19, -15, ATTR0_SQUARE, ATTR1_8x8, 595, 8, 0),
    OAM_ENTRY(-11, -15, ATTR0_SQUARE, ATTR1_8x8, 594, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B40B0[] = {
    5,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 595, 8, 0),
    OAM_ENTRY(-6, -10, ATTR0_SQUARE, ATTR1_8x8, 594, 8, 0),
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 550, 8, 0),
};
const u16 sOamFrame_83B40D0[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-10, -9, ATTR0_WIDE, ATTR1_16x8, 512, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -15, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B40EA[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-9, -7, ATTR0_WIDE, ATTR1_16x8, 544, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -15, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4104[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 514, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B411E[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -9, ATTR0_WIDE, ATTR1_16x8, 546, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4138[] = {
    4,
    OAM_ENTRY(5, -13, ATTR0_SQUARE, ATTR1_8x8, 564, 8, 0),
    OAM_ENTRY(-7, -7, ATTR0_WIDE, ATTR1_16x8, 516, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -13, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4152[] = {
    4,
    OAM_ENTRY(5, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 548, 8, 0),
    OAM_ENTRY(-10, -21, ATTR0_SQUARE, ATTR1_16x16, 576, 8, 0),
    OAM_ENTRY(-13, -14, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP | ATTR1_VFLIP, 564, 8, 0),
};

const AnimationFrame sSpearMaskTurningOam[] = {
    { sSpearMaskTuringOam_Frame1, 7 },
    { sSpearMaskTuringOam_Frame2, 7 },
    { sSpearMaskTuringOam_Frame3, 7 },
    { sSpearMaskTuringOam_Frame4, 7 },
    { sSpearMaskTuringOam_Frame5, 7 },
    { sSpearMaskTuringOam_Frame6, 7 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B41A4[] = {
    { sOamFrame_83B3AB8, 2 },
    { sOamFrame_83B3AC6, 5 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B41BC[] = {
    { sOamFrame_83B3ACE, 18 },
    { sOamFrame_83B3AE2, 40 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B41D4[] = {
    { sOamFrame_83B3AEA, 5 },
    { sOamFrame_83B3B04, 7 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B41EC[] = {
    { sOamFrame_83B3B1E, 6 },
    { sOamFrame_83B3B38, 6 },
    { sOamFrame_83B3B52, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B420C[] = {
    { sOamFrame_83B3B6C, 8 },
    { sOamFrame_83B3B86, 8 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4224[] = {
    { sOamFrame_83B3B9A, 7 },
    { sOamFrame_83B3BB4, 10 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B423C[] = {
    { sOamFrame_83B3BC8, 6 },
    { sOamFrame_83B3BE8, 6 },
    { sOamFrame_83B3C08, 6 },
    { sOamFrame_83B3C28, 6 },
    { sOamFrame_83B3C48, 6 },
    { sOamFrame_83B3C68, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4274[] = {
    { sOamFrame_83B3C88, 5 },
    { sOamFrame_83B3CA2, 5 },
    { sOamFrame_83B3CBC, 5 },
    { sOamFrame_83B3CA2, 5 },
    { sOamFrame_83B3C88, 5 },
    { sOamFrame_83B3CA2, 5 },
    { sOamFrame_83B3CBC, 5 },
    { sOamFrame_83B3CA2, 5 },
    { sOamFrame_83B3CD6, 5 },
    { sOamFrame_83B3CE4, 5 },
    { sOamFrame_83B3CEC, 10 },
    { sOamFrame_83B3D06, 5 },
    { sOamFrame_83B3D20, 5 },
    { sOamFrame_83B3D34, 5 },
    { sOamFrame_83B3D54, 5 },
    { sOamFrame_83B3D74, 5 },
    { sOamFrame_83B3D94, 5 },
    { sOamFrame_83B3DAE, 5 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B430C[] = {
    { sOamFrame_83B4014, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B431C[] = {
    { sOamFrame_83B402E, 5 },
    { sOamFrame_83B4014, 5 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4334[] = {
    { sOamFrame_83B4048, 8 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4344[] = {
    { sOamFrame_83B3AE2, 4 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4354[] = {
    { sOamFrame_83B3BB4, 4 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4364[] = {
    { sOamFrame_83B3DAE, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4374[] = {
    { sOamFrame_83B407C, 4 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4384[] = {
    { sOamFrame_83B4062, 5 },
    { sOamFrame_83B3DAE, 5 },
    { sOamFrame_83B407C, 10 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B43A4[] = {
    { sOamFrame_83B40D0, 4 },
    { sOamFrame_83B40EA, 4 },
    { sOamFrame_83B4104, 4 },
    { sOamFrame_83B411E, 4 },
    { sOamFrame_83B4138, 4 },
    { sOamFrame_83B4152, 4 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskSpearTwirlingOam[] = {
    { sSpearMaskSpearTwirlingOam_Frame1, 7 },
    { sSpearMaskSpearTwirlingOam_Frame2, 7 },
    { sSpearMaskSpearTwirlingOam_Frame3, 7 },
    { sSpearMaskSpearTwirlingOam_Frame4, 7 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4404[] = {
    { sOamFrame_83B3E2C, 6 },
    { sOamFrame_83B3E4C, 6 },
    { sOamFrame_83B3DC8, 8 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4424[] = {
    { sOamFrame_83B3E6C, 6 },
    { sOamFrame_83B3E86, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B443C[] = {
    { sOamFrame_83B3EA6, 6 },
    { sOamFrame_83B3EC6, 6 },
    { sOamFrame_83B3EE6, 6 },
    { sOamFrame_83B3F06, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4464[] = {
    { sOamFrame_83B3F26, 6 },
    { sOamFrame_83B3F46, 6 },
    { sOamFrame_83B3F26, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B4484[] = {
    { sOamFrame_83B3F06, 6 },
    { sOamFrame_83B3EE6, 6 },
    { sOamFrame_83B3EC6, 6 },
    { sOamFrame_83B3EA6, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B44AC[] = {
    { sOamFrame_83B3E86, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B44BC[] = {
    { sOamFrame_83B3F60, 6 },
    { sOamFrame_83B3F74, 6 },
    { sOamFrame_83B3F88, 6 },
    { sOamFrame_83B3F74, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sSpearMaskOam_83B44E4[] = {
    { sOamFrame_83B3F9C, 4 },
    { sOamFrame_83B3FB0, 4 },
    { sOamFrame_83B3FC4, 4 },
    { sOamFrame_83B3FD8, 4 },
    { sOamFrame_83B3FEC, 4 },
    { sOamFrame_83B4000, 4 },
    ANIMATION_TERMINATOR
};


static void SpearMask_SetWalkingHitbox(void) {
    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE;
        gCurrentSprite.hitboxExtentRight = 3 * QUARTER_BLOCK_SIZE;
    } else {
        gCurrentSprite.hitboxExtentLeft = 3 * QUARTER_BLOCK_SIZE + PIXEL_SIZE;
        gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE - PIXEL_SIZE;
    }
}

static void SpearMask_Init(void) {
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS * 3 / 2;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS * 3 / 2;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE;
    gCurrentSprite.hitboxExtentDown = 0;
    SpriteUtil_TurnTowardWario();
    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_RED:
            gCurrentSprite.palette = SPEAR_MASK_PALETTE_RED;
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            gCurrentSprite.palette = SPEAR_MASK_PALETTE_BLUE;
            break;
        default:
            gCurrentSprite.palette = SPEAR_MASK_PALETTE_YELLOW;
            break;
    }
}

static void SpearMask_WalkInit(void) {
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_IDLE;
    if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_YELLOW) {
        gCurrentSprite.pOamData = sSpearMaskTurningOam;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMask_SetWalkingHitbox();
    } else {
        gCurrentSprite.pOamData = sSpearMaskSpearTwirlingOam;
        gCurrentSprite.work0 = CONVERT_SECONDS(1.25) + DELTA_TIME;
        gCurrentSprite.warioInteractionFlags = 10;
        gCurrentSprite.work1 = 0;
        gCurrentSprite.hitboxExtentLeft = BLOCK_SIZE - PIXEL_SIZE;
        gCurrentSprite.hitboxExtentRight = BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
    }
}

static void SpearMask_WalkYellow(void) {
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = POSE_1B;
            return;
        }
    } else {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            if ((gUnk_3000A50 & 0xF0) && (gCurrentSprite.xPosition % BLOCK_SIZE + gCurrentSprite.hitboxExtentRight >= BLOCK_SIZE)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (!(gUnk_3000A51 & 0xF0)) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
                func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (gUnk_3000A51 & 0x0F) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
            }
        } else {
            if ((gUnk_3000A50 & 0xF0) && (gCurrentSprite.xPosition % BLOCK_SIZE < gCurrentSprite.hitboxExtentLeft)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (!(gUnk_3000A51 & 0xF0)) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
                func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (gUnk_3000A51 & 0x0F) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
            }
        }
    }
    func_8026374();
}

static void SpearMask_TurnInit(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B41D4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_12;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2) + DELTA_TIME;
    gCurrentSprite.warioInteractionFlags = 3;
    SpearMask_SetWalkingHitbox();
}

static void SpearMask_Turning(void) {
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = POSE_1B;
        return;
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 != 0) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_12:
            gCurrentSprite.warioInteractionFlags = 1;
            gCurrentSprite.pOamData = sSpearMaskOam_83B41EC;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            gCurrentSprite.pose = POSE_14;
            gCurrentSprite.work0 = CONVERT_SECONDS(0.3);
            gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
            gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
            break;

        case POSE_14:
            gCurrentSprite.statusBits ^= SPRITE_STATUS_FACING_RIGHT;
            gCurrentSprite.warioInteractionFlags = 3;
            SpearMask_SetWalkingHitbox();
            gCurrentSprite.pOamData = sSpearMaskOam_83B420C;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            gCurrentSprite.pose = POSE_16;
            gCurrentSprite.work0 = CONVERT_SECONDS(0.25);
            break;

        default:
            gCurrentSprite.pose = POSE_IDLE_INIT;
            break;
    }
}

static void SpearMask_Pose17(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B4384;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_18;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.warioInteractionFlags = 1;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

static void SpearMask_Pose19(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B4274;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_1A;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 + 7.0 / 12.0);
}

static void SpearMask_Pose1A(void) {
    u8 timer;

    timer = gCurrentSprite.work0;
    if (timer < CONVERT_SECONDS(0.75) || timer > CONVERT_SECONDS(11.0 / 12.0)) {
        func_8023CD8();
        return;
    }

    if (gCurrentSprite.work0 == CONVERT_SECONDS(11.0 / 12.0)) {
        gCurrentSprite.yPosition -= HALF_BLOCK_SIZE;
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.xPosition += 4;
        } else {
            gCurrentSprite.xPosition -= 4;
        }
    } else if (timer == CONVERT_SECONDS(5.0 / 6.0)) {
        gCurrentSprite.yPosition -= HALF_BLOCK_SIZE;
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.xPosition += 4;
        } else {
            gCurrentSprite.xPosition -= 4;
        }
    } else if (timer == CONVERT_SECONDS(0.75)) {
        gCurrentSprite.yPosition += BLOCK_SIZE;
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.xPosition -= 8;
        } else {
            gCurrentSprite.xPosition += 8;
        }
    }
    TIMER_COUNT_DOWN(gCurrentSprite.work0);
}

static void SpearMask_Pose1B(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B43A4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 1;
}

static void SpearMask_Pose1D(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

// Defeated somehow
static void SpearMask_80273C0(void) {
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskOam_83B41BC;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.unk_1D = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_RED:
            value = CONVERT_SCORE(100);
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            value = CONVERT_SCORE(50);
            break;
        default:
            value = CONVERT_SCORE(10);
            break;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, value);
    Sprite_SpawnSecondary(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_8;
    gCurrentSprite.statusBits |= SPRITE_STATUS_9;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

static void SpearMask_Pose1F(void) {
    gCurrentSprite.pose = POSE_20;
    SpearMask_80273C0();
}

static void SpearMask_Pose21(void) {
    gCurrentSprite.pose = POSE_22;
    SpearMask_80273C0();
}

// Defeated a different way
static void SpearMask_8027474(void) {
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskOam_83B41BC;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.unk_1D = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_RED:
            value = CONVERT_SCORE(100);
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            value = CONVERT_SCORE(50);
            break;
        default:
            value = CONVERT_SCORE(10);
            break;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, value);
    Sprite_SpawnSecondary(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_06);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

static void SpearMask_Pose6A(void) {
    gCurrentSprite.pose = POSE_20;
    SpearMask_8027474();
}

static void SpearMask_Pose69(void) {
    gCurrentSprite.pose = POSE_22;
    SpearMask_8027474();
}

static void SpearMask_8027514(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B4364;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2);
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioInteractionFlags = 1;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

static void SpearMask_Pose23(void) {
    gCurrentSprite.pose = POSE_24;
    SpearMask_8027514();
}

static void SpearMask_Pose25(void) {
    gCurrentSprite.pose = POSE_26;
    SpearMask_8027514();
}

static void SpearMask_802757C(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B4354;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2);
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

static void SpearMask_Pose27(void) {
    gCurrentSprite.pose = POSE_28;
    SpearMask_802757C();
}

static void SpearMask_Pose29(void) {
    gCurrentSprite.pose = POSE_2A;
    SpearMask_802757C();
}

static void SpearMask_80275D4(void) {
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

static void SpearMask_Pose6E(void) {
    gCurrentSprite.pose = SPEAR_MASK_POSE_6F;
    SpearMask_80275D4();
}

static void SpearMask_Pose6F(void) {
    func_80238A4();

    if (gCurrentSprite.work2 >= 4) {
        func_80242C8();
        return;
    }

    if (gCurrentSprite.work0 == CONVERT_SECONDS(1.0 / 3.0)) {
        gCurrentSprite.pOamData = sSpearMaskOam_83B4404;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMask_SetWalkingHitbox();
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

static void SpearMask_Pose70(void) {
    gCurrentSprite.pose = SPEAR_MASK_POSE_71;
    SpearMask_80275D4();
}

static void SpearMask_Pose71(void) {
    func_80238A4();

    if (gCurrentSprite.work2 >= 4) {
        func_8024180();
        return;
    }

    if (gCurrentSprite.work0 == CONVERT_SECONDS(1.0 / 3.0)) {
        gCurrentSprite.pOamData = sSpearMaskOam_83B4404;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMask_SetWalkingHitbox();
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

static void SpearMask_80276C4(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

static void SpearMask_Pose2B(void) {
    gCurrentSprite.pose = POSE_2C;
    SpearMask_80276C4();
}

static void SpearMask_Pose2D(void) {
    gCurrentSprite.pose = POSE_2E;
    SpearMask_80276C4();
}

// Defeated a third way
static void SpearMask_Pose31(void) {
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskOam_83B41A4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_32;
    gCurrentSprite.work0 = CONVERT_SECONDS(2.0 / 15.0);  // 8?
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_8;
    gCurrentSprite.statusBits |= SPRITE_STATUS_9;
    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_RED:
            value = CONVERT_SCORE(100);
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            value = CONVERT_SCORE(50);
            break;
        default:
            value = CONVERT_SCORE(10);
            break;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, value);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

static void SpearMask_InstantlyKill(void) {
    u32 value;

    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_RED:
            value = CONVERT_SCORE(100);
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            value = CONVERT_SCORE(50);
            break;
        default:
            value = CONVERT_SCORE(10);
            break;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, value);
    func_8024554();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

static void SpearMask_80277E0(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 15.0);
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioInteractionFlags != 5) {
        gCurrentSprite.warioInteractionFlags = 5;
        gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
        gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
    }
}

static void SpearMask_Pose33(void) {
    gCurrentSprite.pose = POSE_34;
    SpearMask_80277E0();
}

static void SpearMask_Pose35(void) {
    gCurrentSprite.pose = POSE_36;
    SpearMask_80277E0();
}

static void SpearMask_802784C(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

static void SpearMask_Pose47(void) {
    gCurrentSprite.pose = POSE_48;
    SpearMask_802784C();
}

static void SpearMask_Pose49(void) {
    gCurrentSprite.pose = POSE_4A;
    SpearMask_802784C();
}

static void SpearMask_Transform(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B430C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_4C;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 1;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
    Sound_Play(SOUND_62);
    switch (gCurrentSprite.globalID) {
        case PSPRITE_SPEAR_MASK_YELLOW:
            gCurrentSprite.globalID = PSPRITE_SPEAR_MASK_BLUE;
            gCurrentSprite.palette += 1;
            break;
        case PSPRITE_SPEAR_MASK_BLUE:
            gCurrentSprite.globalID = PSPRITE_SPEAR_MASK_RED;
            gCurrentSprite.palette += 1;
            break;
        default:
            gCurrentSprite.globalID = PSPRITE_SPEAR_MASK_YELLOW;
            gCurrentSprite.palette = SPEAR_MASK_PALETTE_YELLOW;
            break;
    }
}

static void SpearMask_Transforming(void) {
    s16 yVelocity;
    u8 frame;

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 > 0) {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = POSE_1D;
            return;
        }

        frame = gCurrentSprite.work3;
        yVelocity = sUnk_8352B18[frame];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352B18[frame - 1];
            gCurrentSprite.yPosition += yVelocity;
        } else {
            TIMER_COUNT_UP(gCurrentSprite.work3);
            gCurrentSprite.yPosition += yVelocity;
        }
        return;
    }

    gCurrentSprite.pOamData = sSpearMaskOam_83B431C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_4D;
    gCurrentSprite.work3 = 0;
}

static void SpearMask_Pose4D(void) {
    u32 yPosition;
    s16 yVelocity;
    u8 frame;

    yPosition = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_MAYBE_UNDERWATER;
    }
    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = yPosition;
        gCurrentSprite.pOamData = sSpearMaskOam_83B4334;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 6.0);
        gCurrentSprite.pose = POSE_4E;
        return;
    }

    frame = gCurrentSprite.work3;
    yVelocity = sUnk_8352B40[frame];
    if (yVelocity == S16_MAX) {
        yVelocity = sUnk_8352B40[frame - 1];
        gCurrentSprite.yPosition += yVelocity;
    } else {
        TIMER_COUNT_UP(gCurrentSprite.work3);
        gCurrentSprite.yPosition += yVelocity;
    }
}

static void SpearMask_Pose4E(void) {
    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0) {
        func_8023B88();
        if (!gUnk_3000A50) {
            gCurrentSprite.pose = POSE_1B;
        }
    } else {
        gCurrentSprite.pose = POSE_17;
    }
}

static void SpearMask_8027A8C(void) {
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

static void SpearMask_Pose51(void) {
    gCurrentSprite.pose = POSE_52;
    SpearMask_8027A8C();
}

static void SpearMask_Pose53(void) {
    gCurrentSprite.pose = POSE_54;
    SpearMask_8027A8C();
}

static void SpearMask_8027ACC(void) {
    gCurrentSprite.disableWarioInteraction = 1;
    gCurrentSprite.pOamData = sSpearMaskOam_83B423C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

static void SpearMask_Pose57(void) {
    gCurrentSprite.pose = POSE_58;
    SpearMask_8027ACC();
}

static void SpearMask_Pose55(void) {
    gCurrentSprite.pose = POSE_56;
    SpearMask_8027ACC();
}

static void SpearMask_8027B10(void) {
    gCurrentSprite.pose = SPEAR_MASK_POSE_73;
    gCurrentSprite.pOamData = sSpearMaskOam_83B44BC;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioInteractionFlags = 3;
    SpearMask_SetWalkingHitbox();
    gCurrentSprite.work0 = CONVERT_SECONDS(0.4);
}

static void SpearMask_Pose73(void) {
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = POSE_1B;
        return;
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 != 0) {
        return;
    }
    gCurrentSprite.pose = SPEAR_MASK_POSE_75;
    gCurrentSprite.pOamData = sSpearMaskOam_83B44E4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
}

static void SpearMask_WalkBlueOrRed(void) {
    u32 temp;

    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = POSE_1B;
            return;
        }
    } else {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            if ((gUnk_3000A50 & 0xF0) && (gCurrentSprite.xPosition % BLOCK_SIZE + gCurrentSprite.hitboxExtentRight >= BLOCK_SIZE)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (!gUnk_3000A51) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskOam_83B41D4;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
                func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (gUnk_3000A51 == 0x11) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskOam_83B41D4;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
            }
        } else {
            if ((gUnk_3000A50 & 0xF0) && (gCurrentSprite.xPosition % BLOCK_SIZE < gCurrentSprite.hitboxExtentLeft)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (!gUnk_3000A51) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskOam_83B41D4;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
                func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (gUnk_3000A51 == 0x11) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskOam_83B41D4;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
            }
        }
    }

    if (gCurrentSprite.work0 != 0) {
        TIMER_COUNT_DOWN(gCurrentSprite.work0);
        if (gCurrentSprite.work0 == 0) {
            gCurrentSprite.pOamData = sSpearMaskTurningOam;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
        } else {
            // What
            switch (gCurrentSprite.work0) {
                case CONVERT_SECONDS(1.0 / 3.0):
                    gCurrentSprite.pOamData = sSpearMaskOam_83B4404;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    gCurrentSprite.warioInteractionFlags = 3;
                    SpearMask_SetWalkingHitbox();
            }
        }
        return;
    }

    if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_RED) {
        if (gCurrentSprite.pose == POSE_IDLE) {
            temp = func_8026210(0x7F, 400);
            if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
                if (temp == 8) {
                    SpearMask_8027B10();
                } else {
                    func_8026374();
                }
            } else {
                if (temp == 4) {
                    SpearMask_8027B10();
                } else {
                    func_8026374();
                }
            }
        } else {
            func_80263E0();
        }
    } else {
        func_8026374();
    }
}

void SpriteAI_SpearMask(void) {
    if (gCurrentSprite.statusBits & SPRITE_STATUS_MAYBE_UNDERWATER) {
        gCurrentSprite.pose = POSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            SpearMask_Init();
        case POSE_IDLE_INIT:
            SpearMask_WalkInit();
        case POSE_IDLE:
            if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_YELLOW) {
                SpearMask_WalkYellow();
            } else {
                SpearMask_WalkBlueOrRed();
            }
            break;

        case POSE_11:
            SpearMask_TurnInit();
        case POSE_12:
        case POSE_14:
        case POSE_16:
            SpearMask_Turning();
            break;

        case POSE_17:
            SpearMask_Pose17();
        case POSE_18:
            func_8023C94();
            break;

        case POSE_19:
            SpearMask_Pose19();
        case POSE_1A:
            SpearMask_Pose1A();
            break;

        case POSE_1B:
            SpearMask_Pose1B();
        case POSE_1C:
            func_8023D48();
            break;

        case POSE_1D:
            SpearMask_Pose1D();
        case POSE_1E:
            func_8023EE0();
            break;

        case POSE_1F:
        case POSE_4F:
            SpearMask_Pose1F();
        case POSE_20:
            func_8024060();
            break;

        case POSE_21:
        case POSE_50:
            SpearMask_Pose21();
        case POSE_22:
            func_80240F0();
            break;

        case POSE_23:
            SpearMask_Pose23();
        case POSE_24:
            func_8024444();
            break;

        case POSE_25:
            SpearMask_Pose25();
        case POSE_26:
            func_8024410();
            break;

        case POSE_27:
            SpearMask_Pose27();
        case POSE_28:
            func_8024444();
            break;

        case POSE_29:
            SpearMask_Pose29();
        case POSE_2A:
            func_8024410();
            break;

        case POSE_2B:
            SpearMask_Pose2B();
        case POSE_2C:
            func_8024478();
            break;

        case POSE_2D:
            SpearMask_Pose2D();
        case POSE_2E:
            func_802449C();
            break;

        case POSE_2F:
            func_80244C0();
        case POSE_30:
            func_80244E0();
            break;

        case POSE_31:
            SpearMask_Pose31();
        case POSE_32:
            func_8024524();
            break;

        case POSE_33:
            SpearMask_Pose33();
        case POSE_34:
            func_8024988();
            break;

        case POSE_35:
            SpearMask_Pose35();
        case POSE_36:
            func_802476C();
            break;

        case POSE_37:
            func_8024688();
        case POSE_38:
            func_80246B8();
            break;

        case POSE_39:
            func_802473C();
        case POSE_3A:
            func_802476C();
            break;

        case POSE_3B:
            func_80247F0();
        case POSE_3C:
            func_8024820();
            break;

        case POSE_3D:
            func_80248A4();
        case POSE_3E:
            func_80248D4();
            break;

        case POSE_3F:
            func_8024958();
        case POSE_40:
            func_8024988();
            break;

        case POSE_41:
            func_8024A0C();
        case POSE_42:
            func_8024A3C();
            break;

        case POSE_43:
            func_8024AC0();
        case POSE_44:
            func_8024AD4();
            break;

        case POSE_45:
            func_8024BEC();
        case POSE_46:
            func_8024C00();
            break;

        case POSE_47:
            SpearMask_Pose47();
        case POSE_48:
            func_8024AD4();
            break;

        case POSE_49:
            SpearMask_Pose49();
        case POSE_4A:
            func_8024C00();
            break;

        case POSE_4B:
            SpearMask_Transform();
        case POSE_4C:
            SpearMask_Transforming();
            break;

        case POSE_4D:
            SpearMask_Pose4D();
            break;

        case POSE_4E:
            SpearMask_Pose4E();
            break;

        case POSE_51:
            SpearMask_Pose51();
            break;

        case POSE_52:
            func_8024D18();
            break;

        case POSE_53:
            SpearMask_Pose53();
            break;

        case POSE_54:
            func_8024E58();
            break;

        case POSE_57:
            SpearMask_Pose57();
            break;

        case POSE_58:
            func_8024F98();
            break;

        case POSE_55:
            SpearMask_Pose55();
            break;

        case POSE_56:
            func_8025240();
            break;

        case POSE_59:
            gCurrentSprite.pose = POSE_5A;
        case POSE_5A:
            func_8025634();
            break;

        case POSE_5D:
            gCurrentSprite.pose = POSE_5E;
        case POSE_5E:
            func_80256D4();
            break;

        case POSE_61:
            gCurrentSprite.pose = POSE_62;
        case POSE_62:
            func_8025774();
            break;

        case POSE_65:
            gCurrentSprite.pose = POSE_66;
        case POSE_66:
            func_8025814();
            break;

        case POSE_5B:
            gCurrentSprite.pose = POSE_5C;
        case POSE_5C:
            func_8025A00();
            break;

        case POSE_5F:
            gCurrentSprite.pose = POSE_60;
        case POSE_60:
            func_8025AA0();
            break;

        case POSE_63:
            gCurrentSprite.pose = POSE_64;
        case POSE_64:
            func_8025B40();
            break;

        case POSE_67:
            gCurrentSprite.pose = POSE_68;
        case POSE_68:
            func_8025BE0();
            break;

        case POSE_69:
            SpearMask_Pose69();
            break;

        case POSE_6A:
            SpearMask_Pose6A();
            break;

        case SPEAR_MASK_POSE_6E:
            SpearMask_Pose6E();
        case SPEAR_MASK_POSE_6F:
            SpearMask_Pose6F();
            break;

        case SPEAR_MASK_POSE_70:
            SpearMask_Pose70();
        case SPEAR_MASK_POSE_71:
            SpearMask_Pose71();
            break;

        case SPEAR_MASK_POSE_73:
            SpearMask_Pose73();
            break;

        case SPEAR_MASK_POSE_75:
            SpearMask_WalkBlueOrRed();
            break;

        default:
            SpearMask_InstantlyKill();
            break;
    }
}
