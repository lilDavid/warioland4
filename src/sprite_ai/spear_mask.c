#include "bg_clip.h"
#include "global_data.h"
#include "oam.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"

enum SpearMaskExtraPoses {
    SPEAR_MASK_POSE_6E = 0x6E,
    SPEAR_MASK_POSE_6F,
    SPEAR_MASK_POSE_70,
    SPEAR_MASK_POSE_71,
    SPEAR_MASK_POSE_72,
    SPEAR_MASK_STARTING_CHASE,
    SPEAR_MASK_POSE_74,
    SPEAR_MASK_CHASING,
};

#define SPEAR_MASK_PALETTE_YELLOW 0
#define SPEAR_MASK_PALETTE_BLUE 1
#define SPEAR_MASK_PALETTE_RED 2

const u16 sSpearMaskWalkingOam_Frame1[] = {
    3,
    OAM_ENTRY(-17, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sSpearMaskWalkingOam_Frame2[] = {
    3,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 544, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sSpearMaskWalkingOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sSpearMaskWalkingOam_Frame4[] = {
    3,
    OAM_ENTRY(-14, -12, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 546, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sSpearMaskWalkingOam_Frame5[] = {
    3,
    OAM_ENTRY(-15, -14, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sSpearMaskWalkingOam_Frame6[] = {
    3,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
};
const u16 sOamFrame_83B3A78[] = {
    5,
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-14, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B3A98[] = {
    5,
    OAM_ENTRY(-4, -17, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskCrushedOam_Frame1[] = {
    2,
    OAM_ENTRY(-17, -8, SPRITE_SIZE_32x8, 0, 552, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x8, 0, 532, 8, 0),
};
const u16 sSpearMaskCrushedOam_Frame2[] = {
    1,
    OAM_ENTRY(-16, -8, SPRITE_SIZE_32x8, 0, 520, 8, 0),
};
const u16 sSpearMaskBashedOam_Frame1[] = {
    3,
    OAM_ENTRY(-6, -32, SPRITE_SIZE_16x32, 0, 535, 8, 0),
    OAM_ENTRY(-19, -33, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-8, -41, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};
const u16 sSpearMaskBashedOam_Frame2[] = {
    1,
    OAM_ENTRY(-6, -32, SPRITE_SIZE_16x32, 0, 535, 8, 0),
};
const u16 sSpearMaskTurning1Oam_Frame1[] = {
    4,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-16, -12, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskTurning1Oam_Frame2[] = {
    4,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-5, -14, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-10, -19, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
};
const u16 sSpearMaskTurning2Oam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -12, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
};
const u16 sSpearMaskTurning2Oam_Frame2[] = {
    4,
    OAM_ENTRY(-3, -17, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 578, 8, 0),
};
const u16 sSpearMaskTurning2Oam_Frame3[] = {
    4,
    OAM_ENTRY(0, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-5, -11, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 588, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
};
const u16 sSpearMaskTurning3Oam_Frame1[] = {
    4,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-14, -11, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -19, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
};
const u16 sSpearMaskTurning3Oam_Frame2[] = {
    3,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3B9A[] = {
    4,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
};
const u16 sSpearMaskHitWarioOam_Frame1[] = {
    3,
    OAM_ENTRY(-22, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, 0, 580, 8, 0),
    OAM_ENTRY(-12, -22, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 582, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-7, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 548, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-10, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame3[] = {
    5,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 546, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame4[] = {
    5,
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-5, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame5[] = {
    5,
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 544, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-11, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskStunnedOam_Frame6[] = {
    5,
    OAM_ENTRY(-10, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-5, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 588, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame1[] = {
    4,
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-11, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame2[] = {
    4,
    OAM_ENTRY(-10, -23, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame3[] = {
    4,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame4[] = {
    2,
    OAM_ENTRY(-9, -21, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-10, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 576, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame5[] = {
    1,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 528, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame6[] = {
    4,
    OAM_ENTRY(4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 558, 8, 0),
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 582, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame7[] = {
    4,
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 556, 8, 0),
    OAM_ENTRY(-6, -24, SPRITE_SIZE_16x16, 0, 582, 8, 0),
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame8[] = {
    3,
    OAM_ENTRY(4, -12, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-6, -24, SPRITE_SIZE_16x16, 0, 582, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame9[] = {
    5,
    OAM_ENTRY(-3, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 588, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame10[] = {
    5,
    OAM_ENTRY(-4, -16, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 578, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame11[] = {
    5,
    OAM_ENTRY(-5, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 544, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame12[] = {
    4,
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskGettingUpOam_Frame13[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskTurningOam_Frame3[] = {
    3,
    OAM_ENTRY(-13, -13, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame2[] = {
    3,
    OAM_ENTRY(-20, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame3[] = {
    3,
    OAM_ENTRY(-19, -24, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskSpearTwirlingOam_Frame4[] = {
    3,
    OAM_ENTRY(-12, -24, SPRITE_SIZE_32x32, 0, 537, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskTurningOam_Frame1[] = {
    5,
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, 0, 595, 8, 0),
    OAM_ENTRY(-5, -12, SPRITE_SIZE_8x8, 0, 596, 8, 0),
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 597, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskTurningOam_Frame2[] = {
    5,
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, 0, 595, 8, 0),
    OAM_ENTRY(-5, -14, SPRITE_SIZE_8x8, 0, 596, 8, 0),
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 597, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3E6C[] = {
    4,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-16, -11, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3E86[] = {
    5,
    OAM_ENTRY(-15, -10, SPRITE_SIZE_16x8, 0, 595, 8, 0),
    OAM_ENTRY(1, -11, SPRITE_SIZE_8x8, 0, 597, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3EA6[] = {
    5,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, 0, 594, 8, 0),
    OAM_ENTRY(-11, -10, SPRITE_SIZE_8x8, 0, 593, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3EC6[] = {
    5,
    OAM_ENTRY(-9, -10, SPRITE_SIZE_8x8, 0, 593, 8, 0),
    OAM_ENTRY(-2, -11, SPRITE_SIZE_8x8, 0, 594, 8, 0),
    OAM_ENTRY(-4, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3EE6[] = {
    5,
    OAM_ENTRY(1, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-6, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 594, 8, 0),
    OAM_ENTRY(-4, -16, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3F06[] = {
    5,
    OAM_ENTRY(-5, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 594, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-2, -16, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 550, 8, 0),
};
const u16 sOamFrame_83B3F26[] = {
    5,
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x8, 0, 594, 8, 0),
    OAM_ENTRY(-15, -10, SPRITE_SIZE_16x8, 0, 595, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B3F46[] = {
    4,
    OAM_ENTRY(-16, -11, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskStartingCaseOam_Frame1[] = {
    3,
    OAM_ENTRY(-15, -19, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -19, SPRITE_SIZE_16x16, 0, 584, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
};
const u16 sSpearMaskStartingCaseOam_Frame2[] = {
    3,
    OAM_ENTRY(-15, -21, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 584, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskStartingCaseOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -25, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 584, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame1[] = {
    3,
    OAM_ENTRY(-14, -22, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x16, 0, 584, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame2[] = {
    3,
    OAM_ENTRY(-17, -26, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 544, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x16, 0, 584, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame3[] = {
    3,
    OAM_ENTRY(-16, -23, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 584, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame4[] = {
    3,
    OAM_ENTRY(-16, -22, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 546, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x16, 0, 584, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame5[] = {
    3,
    OAM_ENTRY(-15, -26, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_16x16, 0, 584, 8, 0),
};
const u16 sSpearMaskChasingOam_Frame6[] = {
    3,
    OAM_ENTRY(-15, -24, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 584, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 548, 8, 0),
};
const u16 sSpearMaskTransforming1Oam_Frame1[] = {
    4,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 586, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskTransforming2Oam_Frame1[] = {
    4,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 586, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4048[] = {
    4,
    OAM_ENTRY(5, -11, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -19, SPRITE_SIZE_16x16, 0, 586, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 518, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sSpearMaskRecoveringOam_Frame1[] = {
    4,
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sSpearMaskRecoveringOam_Frame2[] = {
    3,
    OAM_ENTRY(-16, -10, SPRITE_SIZE_32x8, 0, 595, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B4090[] = {
    5,
    OAM_ENTRY(-19, -15, SPRITE_SIZE_8x8, 0, 595, 8, 0),
    OAM_ENTRY(-11, -15, SPRITE_SIZE_8x8, 0, 594, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B40B0[] = {
    5,
    OAM_ENTRY(-14, -10, SPRITE_SIZE_8x8, 0, 595, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x8, 0, 594, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 550, 8, 0),
};
const u16 sOamFrame_83B40D0[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-10, -9, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B40EA[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 544, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4104[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B411E[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -9, SPRITE_SIZE_16x8, 0, 546, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4138[] = {
    4,
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};
const u16 sOamFrame_83B4152[] = {
    4,
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
};

const struct AnimationFrame sSpearMaskWalkingOam[] = {
    {sSpearMaskWalkingOam_Frame1, 7},
    {sSpearMaskWalkingOam_Frame2, 7},
    {sSpearMaskWalkingOam_Frame3, 7},
    {sSpearMaskWalkingOam_Frame4, 7},
    {sSpearMaskWalkingOam_Frame5, 7},
    {sSpearMaskWalkingOam_Frame6, 7},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskCrushedOam[] = {
    {sSpearMaskCrushedOam_Frame1, 2},
    {sSpearMaskCrushedOam_Frame2, 5},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskBashedOam[] = {
    {sSpearMaskBashedOam_Frame1, 18},
    {sSpearMaskBashedOam_Frame2, 40},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTurning1Oam[] = {
    {sSpearMaskTurning1Oam_Frame1, 5},
    {sSpearMaskTurning1Oam_Frame2, 7},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTurning2Oam[] = {
    {sSpearMaskTurning2Oam_Frame1, 6},
    {sSpearMaskTurning2Oam_Frame2, 6},
    {sSpearMaskTurning2Oam_Frame3, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTurning3Oam[] = {
    {sSpearMaskTurning3Oam_Frame1, 8},
    {sSpearMaskTurning3Oam_Frame2, 8},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B4224[] = {
    {sOamFrame_83B3B9A, 7},
    {sSpearMaskHitWarioOam_Frame1, 10},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskStunnedOam[] = {
    {sSpearMaskStunnedOam_Frame1, 6},
    {sSpearMaskStunnedOam_Frame2, 6},
    {sSpearMaskStunnedOam_Frame3, 6},
    {sSpearMaskStunnedOam_Frame4, 6},
    {sSpearMaskStunnedOam_Frame5, 6},
    {sSpearMaskStunnedOam_Frame6, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskGettingUpOam[] = {
    {sSpearMaskGettingUpOam_Frame1, 5},
    {sSpearMaskGettingUpOam_Frame2, 5},
    {sSpearMaskGettingUpOam_Frame3, 5},
    {sSpearMaskGettingUpOam_Frame2, 5},
    {sSpearMaskGettingUpOam_Frame1, 5},
    {sSpearMaskGettingUpOam_Frame2, 5},
    {sSpearMaskGettingUpOam_Frame3, 5},
    {sSpearMaskGettingUpOam_Frame2, 5},
    {sSpearMaskGettingUpOam_Frame4, 5},
    {sSpearMaskGettingUpOam_Frame5, 5},
    {sSpearMaskGettingUpOam_Frame6, 10},
    {sSpearMaskGettingUpOam_Frame7, 5},
    {sSpearMaskGettingUpOam_Frame8, 5},
    {sSpearMaskGettingUpOam_Frame9, 5},
    {sSpearMaskGettingUpOam_Frame10, 5},
    {sSpearMaskGettingUpOam_Frame11, 5},
    {sSpearMaskGettingUpOam_Frame12, 5},
    {sSpearMaskGettingUpOam_Frame13, 5},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTransforming1Oam[] = {
    {sSpearMaskTransforming1Oam_Frame1, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTransforming2Oam[] = {
    {sSpearMaskTransforming2Oam_Frame1, 5},
    {sSpearMaskTransforming1Oam_Frame1, 5},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B4334[] = {{sOamFrame_83B4048, 8}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskOam_83B4344[] = {{sSpearMaskBashedOam_Frame2, 4}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskHitWarioOam[] = {{sSpearMaskHitWarioOam_Frame1, 4}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskOam_83B4364[] = {{sSpearMaskGettingUpOam_Frame13, 6}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskOam_83B4374[] = {{sSpearMaskRecoveringOam_Frame2, 4}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskRecoveringOam[] = {
    {sSpearMaskRecoveringOam_Frame1, 5},
    {sSpearMaskGettingUpOam_Frame13, 5},
    {sSpearMaskRecoveringOam_Frame2, 10},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B43A4[] = {
    {sOamFrame_83B40D0, 4},
    {sOamFrame_83B40EA, 4},
    {sOamFrame_83B4104, 4},
    {sOamFrame_83B411E, 4},
    {sOamFrame_83B4138, 4},
    {sOamFrame_83B4152, 4},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskSpearTwirlingOam[] = {
    {sSpearMaskSpearTwirlingOam_Frame1, 7},
    {sSpearMaskSpearTwirlingOam_Frame2, 7},
    {sSpearMaskSpearTwirlingOam_Frame3, 7},
    {sSpearMaskSpearTwirlingOam_Frame4, 7},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskTurningOam[] = {
    {sSpearMaskTurningOam_Frame1, 6},
    {sSpearMaskTurningOam_Frame2, 6},
    {sSpearMaskTurningOam_Frame3, 8},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B4424[] = {
    {sOamFrame_83B3E6C, 6},
    {sOamFrame_83B3E86, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B443C[] = {
    {sOamFrame_83B3EA6, 6},
    {sOamFrame_83B3EC6, 6},
    {sOamFrame_83B3EE6, 6},
    {sOamFrame_83B3F06, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B4464[] =
    {{sOamFrame_83B3F26, 6}, {sOamFrame_83B3F46, 6}, {sOamFrame_83B3F26, 6}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskOam_83B4484[] = {
    {sOamFrame_83B3F06, 6},
    {sOamFrame_83B3EE6, 6},
    {sOamFrame_83B3EC6, 6},
    {sOamFrame_83B3EA6, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskOam_83B44AC[] = {{sOamFrame_83B3E86, 6}, ANIMATION_TERMINATOR};
const struct AnimationFrame sSpearMaskStartingChaseOam[] = {
    {sSpearMaskStartingCaseOam_Frame1, 6},
    {sSpearMaskStartingCaseOam_Frame2, 6},
    {sSpearMaskStartingCaseOam_Frame3, 6},
    {sSpearMaskStartingCaseOam_Frame2, 6},
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sSpearMaskChasingOam[] = {
    {sSpearMaskChasingOam_Frame1, 4},
    {sSpearMaskChasingOam_Frame2, 4},
    {sSpearMaskChasingOam_Frame3, 4},
    {sSpearMaskChasingOam_Frame4, 4},
    {sSpearMaskChasingOam_Frame5, 4},
    {sSpearMaskChasingOam_Frame6, 4},
    ANIMATION_TERMINATOR
};

void SpearMaskSetWalkingHitbox(void)
{
    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE;
        gCurrentSprite.hitboxExtentRight = 3 * QUARTER_BLOCK_SIZE;
    } else {
        gCurrentSprite.hitboxExtentLeft = 3 * QUARTER_BLOCK_SIZE + PIXEL_SIZE;
        gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE - PIXEL_SIZE;
    }
}

void SpearMaskInit(void)
{
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS * 3 / 2;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS * 3 / 2;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE;
    gCurrentSprite.hitboxExtentDown = 0;
    SpriteUtilTurnTowardWario();
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

void SpearMaskInitWalk(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_IDLE;
    if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_YELLOW) {
        gCurrentSprite.pOamData = sSpearMaskWalkingOam;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMaskSetWalkingHitbox();
    } else {
        gCurrentSprite.pOamData = sSpearMaskSpearTwirlingOam;
        gCurrentSprite.work0 = CONVERT_SECONDS(1.25) + DELTA_TIME;
        gCurrentSprite.warioInteractionFlags = 10;
        gCurrentSprite.work1 = 0;
        gCurrentSprite.hitboxExtentLeft = BLOCK_SIZE - PIXEL_SIZE;
        gCurrentSprite.hitboxExtentRight = BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
    }
}

void SpearMaskWalkYellow(void)
{
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
            if ((gUnk_3000A50 & 0xF0) &&
                (gCurrentSprite.xPosition % BLOCK_SIZE + gCurrentSprite.hitboxExtentRight >= BLOCK_SIZE)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (!(gUnk_3000A51 & 0xF0)) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
                func_8023BFC(
                    gCurrentSprite.yPosition - HALF_BLOCK_SIZE,
                    gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
                );
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
                func_8023BFC(
                    gCurrentSprite.yPosition - HALF_BLOCK_SIZE,
                    gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
                );
                if (gUnk_3000A51 & 0x0F) {
                    gCurrentSprite.pose = POSE_11;
                    return;
                }
            }
        }
    }
    func_8026374();
}

void SpearMaskTurnInit(void)
{
    gCurrentSprite.pOamData = sSpearMaskTurning1Oam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_12;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2) + DELTA_TIME;
    gCurrentSprite.warioInteractionFlags = 3;
    SpearMaskSetWalkingHitbox();
}

void SpearMaskTurn(void)
{
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
            gCurrentSprite.pOamData = sSpearMaskTurning2Oam;
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
            SpearMaskSetWalkingHitbox();
            gCurrentSprite.pOamData = sSpearMaskTurning3Oam;
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

void SpearMaskPose17(void)
{
    gCurrentSprite.pOamData = sSpearMaskRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_18;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.warioInteractionFlags = 1;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

void SpearMaskGetUpInit(void)
{
    gCurrentSprite.pOamData = sSpearMaskGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_1A;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 + 7.0 / 12.0);
}

void SpearMaskGetUp(void)
{
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

void SpearMaskPose1B(void)
{
    gCurrentSprite.pOamData = sSpearMaskOam_83B43A4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 1;
}

void SpearMaskPose1D(void)
{
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

// Defeated somehow
void func_80273C0(void)
{
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskBashedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
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
    SpriteSpawnSecondary(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_8;
    gCurrentSprite.statusBits |= SPRITE_STATUS_9;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpearMaskPose1F(void)
{
    gCurrentSprite.pose = POSE_20;
    func_80273C0();
}

void SpearMaskPose21(void)
{
    gCurrentSprite.pose = POSE_22;
    func_80273C0();
}

// Defeated a different way
void func_8027474(void)
{
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskBashedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
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
    SpriteSpawnSecondary(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_06);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpearMaskPose6A(void)
{
    gCurrentSprite.pose = POSE_20;
    func_8027474();
}

void SpearMaskPose69(void)
{
    gCurrentSprite.pose = POSE_22;
    func_8027474();
}

void func_8027514(void)
{
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

void SpearMaskPose23(void)
{
    gCurrentSprite.pose = POSE_24;
    func_8027514();
}

void SpearMaskPose25(void)
{
    gCurrentSprite.pose = POSE_26;
    func_8027514();
}

void SpearMaskHitWario(void)
{
    gCurrentSprite.pOamData = sSpearMaskHitWarioOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2);
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void SpearMaskHitWario_27(void)
{
    gCurrentSprite.pose = POSE_28;
    SpearMaskHitWario();
}

void SpearMaskHitWario_29(void)
{
    gCurrentSprite.pose = POSE_2A;
    SpearMaskHitWario();
}

void func_80275D4(void)
{
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void SpearMaskPose6E(void)
{
    gCurrentSprite.pose = SPEAR_MASK_POSE_6F;
    func_80275D4();
}

void SpearMaskPose6F(void)
{
    func_80238A4();

    if (gCurrentSprite.work2 >= 4) {
        func_80242C8();
        return;
    }

    if (gCurrentSprite.work0 == CONVERT_SECONDS(1.0 / 3.0)) {
        gCurrentSprite.pOamData = sSpearMaskTurningOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMaskSetWalkingHitbox();
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

void SpearMaskPose70(void)
{
    gCurrentSprite.pose = SPEAR_MASK_POSE_71;
    func_80275D4();
}

void SpearMaskPose71(void)
{
    func_80238A4();

    if (gCurrentSprite.work2 >= 4) {
        func_8024180();
        return;
    }

    if (gCurrentSprite.work0 == CONVERT_SECONDS(1.0 / 3.0)) {
        gCurrentSprite.pOamData = sSpearMaskTurningOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioInteractionFlags = 3;
        SpearMaskSetWalkingHitbox();
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

void func_80276C4(void)
{
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

void SpearMaskPose2B(void)
{
    gCurrentSprite.pose = POSE_2C;
    func_80276C4();
}

void SpearMaskPose2D(void)
{
    gCurrentSprite.pose = POSE_2E;
    func_80276C4();
}

void SpearMaskCrushed(void)
{
    u32 value;

    gCurrentSprite.pOamData = sSpearMaskCrushedOam;
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

void SpearMaskInstantlyKill(void)
{
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

void func_80277E0(void)
{
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
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

void SpearMaskPose33(void)
{
    gCurrentSprite.pose = POSE_34;
    func_80277E0();
}

void SpearMaskPose35(void)
{
    gCurrentSprite.pose = POSE_36;
    func_80277E0();
}

void func_802784C(void)
{
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
}

void SpearMaskPose47(void)
{
    gCurrentSprite.pose = POSE_48;
    func_802784C();
}

void SpearMaskPose49(void)
{
    gCurrentSprite.pose = POSE_4A;
    func_802784C();
}

void SpearMaskInitTransform(void)
{
    gCurrentSprite.pOamData = sSpearMaskTransforming1Oam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_4C;
    gCurrentSprite.work0 = CONVERT_SECONDS(1.0 / 3.0);
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioInteractionFlags = 1;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE;
    m4aSongNumStart(SOUND_62);
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

void SpearMaskTransform(void)
{
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

    gCurrentSprite.pOamData = sSpearMaskTransforming2Oam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = POSE_4D;
    gCurrentSprite.work3 = 0;
}

void SpearMaskPose4D(void)
{
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

void SpearMaskPose4E(void)
{
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

void func_8027A8C(void)
{
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void SpearMaskPose51(void)
{
    gCurrentSprite.pose = POSE_52;
    func_8027A8C();
}

void SpearMaskPose53(void)
{
    gCurrentSprite.pose = POSE_54;
    func_8027A8C();
}

void func_8027ACC(void)
{
    gCurrentSprite.disableWarioInteraction = 1;
    gCurrentSprite.pOamData = sSpearMaskStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void SpearMaskPose57(void)
{
    gCurrentSprite.pose = POSE_58;
    func_8027ACC();
}

void SpearMaskPose55(void)
{
    gCurrentSprite.pose = POSE_56;
    func_8027ACC();
}

void SpearMaskStartChasing(void)
{
    gCurrentSprite.pose = SPEAR_MASK_STARTING_CHASE;
    gCurrentSprite.pOamData = sSpearMaskStartingChaseOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioInteractionFlags = 3;
    SpearMaskSetWalkingHitbox();
    gCurrentSprite.work0 = CONVERT_SECONDS(0.4);
}

void SpearMaskStartChase(void)
{
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
    gCurrentSprite.pose = SPEAR_MASK_CHASING;
    gCurrentSprite.pOamData = sSpearMaskChasingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
}

void SpearMaskWalkBlueOrRed(void)
{
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
            if ((gUnk_3000A50 & 0xF0) &&
                (gCurrentSprite.xPosition % BLOCK_SIZE + gCurrentSprite.hitboxExtentRight >= BLOCK_SIZE)) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (!gUnk_3000A51) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskTurning1Oam;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
                func_8023BFC(
                    gCurrentSprite.yPosition - HALF_BLOCK_SIZE,
                    gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
                );
                if (gUnk_3000A51 == 0x11) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskTurning1Oam;
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
                    gCurrentSprite.pOamData = sSpearMaskTurning1Oam;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    return;
                }
                func_8023BFC(
                    gCurrentSprite.yPosition - HALF_BLOCK_SIZE,
                    gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
                );
                if (gUnk_3000A51 == 0x11) {
                    gCurrentSprite.pose = POSE_11;
                    gCurrentSprite.pOamData = sSpearMaskTurning1Oam;
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
            gCurrentSprite.pOamData = sSpearMaskWalkingOam;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
        } else {
            // What
            switch (gCurrentSprite.work0) {
                case CONVERT_SECONDS(1.0 / 3.0):
                    gCurrentSprite.pOamData = sSpearMaskTurningOam;
                    gCurrentSprite.currentAnimationFrame = 0;
                    gCurrentSprite.animationTimer = 0;
                    gCurrentSprite.warioInteractionFlags = 3;
                    SpearMaskSetWalkingHitbox();
            }
        }
        return;
    }

    if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_RED) {
        if (gCurrentSprite.pose == POSE_IDLE) {
            temp = func_8026210(0x7F, 400);
            if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
                if (temp == 8) {
                    SpearMaskStartChasing();
                } else {
                    func_8026374();
                }
            } else {
                if (temp == 4) {
                    SpearMaskStartChasing();
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

void SpriteSpearMask(void)
{
    if (gCurrentSprite.statusBits & SPRITE_STATUS_MAYBE_UNDERWATER) {
        gCurrentSprite.pose = POSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            SpearMaskInit();
        case POSE_IDLE_INIT:
            SpearMaskInitWalk();
        case POSE_IDLE:
            if (gCurrentSprite.globalID == PSPRITE_SPEAR_MASK_YELLOW) {
                SpearMaskWalkYellow();
            } else {
                SpearMaskWalkBlueOrRed();
            }
            break;

        case POSE_11:
            SpearMaskTurnInit();
        case POSE_12:
        case POSE_14:
        case POSE_16:
            SpearMaskTurn();
            break;

        case POSE_17:
            SpearMaskPose17();
        case POSE_18:
            func_8023C94();
            break;

        case POSE_19:
            SpearMaskGetUpInit();
        case POSE_1A:
            SpearMaskGetUp();
            break;

        case POSE_1B:
            SpearMaskPose1B();
        case POSE_1C:
            func_8023D48();
            break;

        case POSE_1D:
            SpearMaskPose1D();
        case POSE_1E:
            func_8023EE0();
            break;

        case POSE_1F:
        case POSE_4F:
            SpearMaskPose1F();
        case POSE_20:
            func_8024060();
            break;

        case POSE_21:
        case POSE_50:
            SpearMaskPose21();
        case POSE_22:
            func_80240F0();
            break;

        case POSE_23:
            SpearMaskPose23();
        case POSE_24:
            func_8024444();
            break;

        case POSE_25:
            SpearMaskPose25();
        case POSE_26:
            func_8024410();
            break;

        case POSE_27:
            SpearMaskHitWario_27();
        case POSE_28:
            func_8024444();
            break;

        case POSE_29:
            SpearMaskHitWario_29();
        case POSE_2A:
            func_8024410();
            break;

        case POSE_2B:
            SpearMaskPose2B();
        case POSE_2C:
            func_8024478();
            break;

        case POSE_2D:
            SpearMaskPose2D();
        case POSE_2E:
            func_802449C();
            break;

        case POSE_2F:
            func_80244C0();
        case POSE_30:
            func_80244E0();
            break;

        case POSE_31:
            SpearMaskCrushed();
        case POSE_32:
            func_8024524();
            break;

        case POSE_33:
            SpearMaskPose33();
        case POSE_34:
            func_8024988();
            break;

        case POSE_35:
            SpearMaskPose35();
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
            SpearMaskPose47();
        case POSE_48:
            func_8024AD4();
            break;

        case POSE_49:
            SpearMaskPose49();
        case POSE_4A:
            func_8024C00();
            break;

        case POSE_4B:
            SpearMaskInitTransform();
        case POSE_4C:
            SpearMaskTransform();
            break;

        case POSE_4D:
            SpearMaskPose4D();
            break;

        case POSE_4E:
            SpearMaskPose4E();
            break;

        case POSE_51:
            SpearMaskPose51();
            break;

        case POSE_52:
            func_8024D18();
            break;

        case POSE_53:
            SpearMaskPose53();
            break;

        case POSE_54:
            func_8024E58();
            break;

        case POSE_57:
            SpearMaskPose57();
            break;

        case POSE_58:
            func_8024F98();
            break;

        case POSE_55:
            SpearMaskPose55();
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
            SpearMaskPose69();
            break;

        case POSE_6A:
            SpearMaskPose6A();
            break;

        case SPEAR_MASK_POSE_6E:
            SpearMaskPose6E();
        case SPEAR_MASK_POSE_6F:
            SpearMaskPose6F();
            break;

        case SPEAR_MASK_POSE_70:
            SpearMaskPose70();
        case SPEAR_MASK_POSE_71:
            SpearMaskPose71();
            break;

        case SPEAR_MASK_STARTING_CHASE:
            SpearMaskStartChase();
            break;

        case SPEAR_MASK_CHASING:
            SpearMaskWalkBlueOrRed();
            break;

        default:
            SpearMaskInstantlyKill();
            break;
    }
}
