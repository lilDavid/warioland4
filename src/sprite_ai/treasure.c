#include "game_state.h"
#include "oam.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "stage_items.h"
#include "types.h"
#include "voice_set.h"
#include "wario.h"


const s16 sTreasureFloatYVelocity[] = {
    0, 0, 0, 0, 0, 0, -1, -1, -2, -2, -3, -4, -3, -2, -2, -1, -1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 1, 1, 2, 2, 3, 4, 3, 2, 2, 1, 1, 0, 0, 0,
    S16_MAX,
};


const u16 sHeartRefillOam_Frame1[] = {
    2,
    OAM_ENTRY(-8, -16, ATTR0_WIDE, ATTR1_16x8, 164, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 376, 7, 0),
};
const u16 sHeartRefillOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -16, ATTR0_WIDE, ATTR1_16x8, 164, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 376, 6, 0),
};
const u16 sJewelPieceNWOamFrame[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 226, 4, 0),
};
const u16 sJewelPieceSWOamFrame[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 228, 4, 0),
};
const u16 sJewelPieceNEOamFrame[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 230, 4, 0),
};
const u16 sJewelPieceSEOamFrame[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 232, 4, 0),
};
const u16 sTreasureUnusedOamFrame1[] = {
    2,
    OAM_ENTRY(-8, -16, ATTR0_WIDE, ATTR1_16x8, 164, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 376, 5, 0),
};
const u16 sTreasureGlowOam_Frame2[] = {
    1,
    OAM_ENTRY(-4, -4, ATTR0_SQUARE, ATTR1_8x8, 193, 4, 0),
};
const u16 sTreasureGlowOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -16, ATTR0_WIDE, ATTR1_32x16, 444, 4, 0),
    OAM_ENTRY(-16, 0, ATTR0_WIDE, ATTR1_32x16 | ATTR1_VFLIP, 444, 4, 0),
};
const u16 sTreasureGlowOam_Frame3[] = {
    2,
    OAM_ENTRY(-16, -16, ATTR0_WIDE, ATTR1_32x16, 440, 4, 0),
    OAM_ENTRY(-16, 0, ATTR0_WIDE, ATTR1_32x16 | ATTR1_VFLIP, 440, 4, 0),
};
const u16 sTreasureGlowDisappearingOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 378, 4, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 378, 4, 0),
    OAM_ENTRY(-16, 0, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 378, 4, 0),
    OAM_ENTRY(0, 0, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP | ATTR1_VFLIP, 378, 4, 0),
};
const u16 sTreasureGlowDisappearingOam_Frame2[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 380, 4, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 380, 4, 0),
    OAM_ENTRY(-16, 0, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 380, 4, 0),
    OAM_ENTRY(0, 0, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP | ATTR1_VFLIP, 380, 4, 0),
};
const u16 sTreasureUnusedOamFrame2[] = {
    1,
    OAM_ENTRY(0, 0, ATTR0_SQUARE, ATTR1_8x8, 166, 4, 0),
};
const u16 sTreasureUnusedOamFrame3[] = {
    1,
    OAM_ENTRY(0, 0, ATTR0_SQUARE, ATTR1_16x16, 224, 4, 0),
};
const u16 sHeartRefillOam_Frame3[] = {
    2,
    OAM_ENTRY(-8, -16, ATTR0_WIDE, ATTR1_16x8, 164, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 376, 4, 0),
};
const u16 sTreasureUnusedOamFrame4[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 234, 7, 0),
};
const u16 sCDOamFrame[] = {
    2,
    OAM_ENTRY(-12, -12, ATTR0_WIDE, ATTR1_32x16, 352, 4, 0),
    OAM_ENTRY(-20, -4, ATTR0_WIDE, ATTR1_32x16 | ATTR1_HFLIP | ATTR1_VFLIP, 352, 4, 0),
};

const AnimationFrame sCDOam[] = {
    { sCDOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sHeartRefillOam[] = {
    { sHeartRefillOam_Frame1, 14 },
    { sHeartRefillOam_Frame2, 12 },
    { sHeartRefillOam_Frame3, 12 },
    { sHeartRefillOam_Frame2, 12 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sJewelPieceNWOam[] = {
    { sJewelPieceNWOamFrame, 200 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sJewelPieceSWOam[] = {
    { sJewelPieceSWOamFrame, 200 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sJewelPieceNEOam[] = {
    { sJewelPieceNEOamFrame, 200 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sJewelPieceSEOam[] = {
    { sJewelPieceSEOamFrame, 200 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sTreasureGlowOam[] = {
    { sTreasureGlowOam_Frame1, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    { sTreasureGlowOam_Frame1, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    { sTreasureGlowOam_Frame3, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    { sTreasureGlowOam_Frame3, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sTreasureGlow_DisappearingOam[] = {
    { sTreasureGlowOam_Frame1, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    { sTreasureGlowOam_Frame1, 2 },
    { sTreasureGlowOam_Frame2, 1 },
    { sTreasureGlowDisappearingOam_Frame1, 1 },
    { sTreasureGlowDisappearingOam_Frame2, 2 },
    ANIMATION_TERMINATOR
};


const u16 sBoxCDClosedOamFrame[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 514, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 514, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxCDOpeningOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 516, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 516, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxCDOpeningOam_Frame2[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 518, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 518, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxCDOpenedOamFrame[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 520, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 520, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxCDOpeningOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -31, ATTR0_SQUARE, ATTR1_16x16, 520, 8, 0),
    OAM_ENTRY(0, -31, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 520, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxUnusedOamFrame1[] = {
    2,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 520, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 520, 8, 0),
};
const u16 sBoxUnusedOamFrame2[] = {
    2,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
};
const u16 sBoxJewelPieceNWClosedOamFrame[] = {
    5,
    OAM_ENTRY(-5, -29, ATTR0_SQUARE, ATTR1_8x8, 532, 13, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 524, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 524, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceOpeningOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 526, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 526, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceOpeningOam_Frame2[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 528, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 528, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceOpeningOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -31, ATTR0_SQUARE, ATTR1_16x16, 530, 8, 0),
    OAM_ENTRY(0, -31, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 530, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceOpenedOamFrame[] = {
    4,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 530, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 530, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxUnusedOamFrame3[] = {
    2,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 530, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 530, 8, 0),
};
const u16 sBoxUnusedOamFrame4[] = {
    2,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceNEClosedOamFrame[] = {
    5,
    OAM_ENTRY(-3, -29, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 532, 13, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 524, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 524, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceSWClosedOamFrame[] = {
    5,
    OAM_ENTRY(-5, -27, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 564, 13, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 524, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 524, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxJewelPieceSEClosedOamFrame[] = {
    5,
    OAM_ENTRY(-3, -27, ATTR0_SQUARE, ATTR1_8x8, 564, 13, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 524, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 524, 8, 0),
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 522, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 522, 8, 0),
};
const u16 sBoxHeartRefillClosedOamFrame[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 533, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 533, 8, 0),
};
const u16 sBoxHeartRefillOpeningOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 535, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 535, 8, 0),
};
const u16 sBoxHeartRefillOpeningOam_Frame2[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 537, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 537, 8, 0),
};
const u16 sBoxHeartRefillOpenedOamFrame[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 539, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 539, 8, 0),
};
const u16 sBoxHeartRefillOpeningOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -16, ATTR0_SQUARE, ATTR1_16x16, 512, 8, 0),
    OAM_ENTRY(0, -16, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -31, ATTR0_SQUARE, ATTR1_16x16, 539, 8, 0),
    OAM_ENTRY(0, -31, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 539, 8, 0),
};
const u16 sBoxUnusedOamFrame5[] = {
    2,
    OAM_ENTRY(-16, -32, ATTR0_SQUARE, ATTR1_16x16, 539, 8, 0),
    OAM_ENTRY(0, -32, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 539, 8, 0),
};

const AnimationFrame sBoxCDOpeningOam[] = {
    { sBoxCDOpeningOam_Frame1, 3 },
    { sBoxCDOpeningOam_Frame2, 3 },
    { sBoxCDOpenedOamFrame, 3 },
    { sBoxCDOpeningOam_Frame3, 2 },
    { sBoxCDOpenedOamFrame, 1 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxCDClosedOam[] = {
    { sBoxCDClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxCDOpenedOam[] = {
    { sBoxCDOpenedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceOpeningOam[] = {
    { sBoxJewelPieceOpeningOam_Frame1, 3 },
    { sBoxJewelPieceOpeningOam_Frame2, 3 },
    { sBoxJewelPieceOpenedOamFrame, 3 },
    { sBoxJewelPieceOpeningOam_Frame3, 2 },
    { sBoxJewelPieceOpenedOamFrame, 1 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceNWClosedOam[] = {
    { sBoxJewelPieceNWClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceSWClosedOam[] = {
    { sBoxJewelPieceSWClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceNEClosedOam[] = {
    { sBoxJewelPieceNEClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceSEClosedOam[] = {
    { sBoxJewelPieceSEClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxJewelPieceOpenedOam[] = {
    { sBoxJewelPieceOpenedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxHeartRefillOpeningOam[] = {
    { sBoxHeartRefillOpeningOam_Frame1, 3 },
    { sBoxHeartRefillOpeningOam_Frame2, 3 },
    { sBoxHeartRefillOpenedOamFrame, 3 },
    { sBoxHeartRefillOpeningOam_Frame3, 2 },
    { sBoxHeartRefillOpenedOamFrame, 1 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxHeartRefillClosedOam[] = {
    { sBoxHeartRefillClosedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};
const AnimationFrame sBoxHeartRefillOpenedOam[] = {
    { sBoxHeartRefillOpenedOamFrame, U8_MAX },
    ANIMATION_TERMINATOR
};


void Box_SetCommonProperties(void) {
    gCurrentSprite.gfxSlot = 7;
    gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_3;
    gCurrentSprite.drawDistanceDown = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = BLOCK_SIZE - PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
}

void Box_Init(void) {
    gCurrentSprite.hitboxExtentUp = 2 * BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
    gCurrentSprite.warioInteractionFlags = 0x1A;
    gCurrentSprite.pose = POSE_IDLE;
    Box_SetCommonProperties();
}

void Box_Init1(void) {
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE;
    gCurrentSprite.warioInteractionFlags = 0x19;
    gCurrentSprite.pose = POSE_32;
    gCurrentSprite.pOamData = sBoxJewelPieceOpenedOam;
    gCurrentSprite.work0 = CONVERT_SECONDS(5.0 / 6.0);
    Box_SetCommonProperties();
}

void Box_Init2(void) {
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
}

void Box_StartOpening(void) {
    gCurrentSprite.pose = POSE_12;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pOamData = sBoxJewelPieceOpeningOam;
    gCurrentSprite.work0 = CONVERT_SECONDS(0.2) + DELTA_TIME;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE;
    gCurrentSprite.warioInteractionFlags = 0x19;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_1, PERSISTENT_STATUS_LOADED);
    Sound_Play(SE_BOX_OPENING);
    VoiceSet_Play(VS_WARIO_TREASURE);
}

void Box_FinishOpening(void) {
    gCurrentSprite.pose = POSE_32;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pOamData = sBoxJewelPieceOpenedOam;
    gCurrentSprite.work0 = CONVERT_SECONDS(5.0 / 6.0);
    Sprite_SpawnAsChild(PSPRITE_COIN_500POINTS, 0, 0,
            gCurrentSprite.yPosition - BLOCK_SIZE, gCurrentSprite.xPosition);
}

void Box_Disappearing(void){
    u8 temp, temp2;

    temp = TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (temp == 0) {
        gCurrentSprite.statusBits = 0;
        return;
    }

    temp2 = gCurrentSprite.work0;
    if (temp2 < CONVERT_SECONDS(0.8)) {
        gCurrentSprite.disableWarioInteraction = 1;
        if ((temp2 & 1) == 0) {
            gCurrentSprite.statusBits ^= SPRITE_STATUS_HIDDEN;
        }
    }
}

void Treasure_Init(void) {
    gCurrentSprite.statusBits |= SPRITE_STATUS_15 | SPRITE_STATUS_10;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE;
    gCurrentSprite.hitboxExtentDown = QUARTER_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE + PIXEL_SIZE;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = POSE_IDLE;
}

void TreasureGlow_Init(void) {
    gCurrentSprite.statusBits |= SPRITE_STATUS_15 | SPRITE_STATUS_10;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentUp = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentDown = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentLeft = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = PIXEL_SIZE;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.pOamData = sTreasureGlowOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = POSE_IDLE;
}

void TreasureGlow_Collected(void) {
    gCurrentSprite.pOamData = sTreasureGlow_DisappearingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = POSE_12;
    gCurrentSprite.work0 = 9;
}

void SpriteAI_BoxJewelPieceNE(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxJewelPieceNEClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_NE, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_NE, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            if (gCollectedNEJewelPiece) {
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            } else {
                Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_NE, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
                Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_NE, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            }
        case POSE_32:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_BoxJewelPieceSE(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxJewelPieceSEClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_SE, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_SE, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            if (gCollectedSEJewelPiece) {
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            } else {
                Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_SE, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
                Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_SE, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            }
        case POSE_32: if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_BoxJewelPieceSW(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxJewelPieceSWClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_SW, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_SW, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            if (gCollectedSWJewelPiece) {
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            } else {
                Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_SW, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
                Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_SW, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            }
        case POSE_32:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_BoxJewelPieceNW(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxJewelPieceNWClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_NW, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_NW, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            if (gCollectedNWJewelPiece) {
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            } else {
                Sprite_SpawnAsChild(PSPRITE_JEWEL_PIECE_NW, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
                Sprite_SpawnAsChild(PSPRITE_GLOW_JEWEL_PIECE_NW, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            }
        case POSE_32:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_BoxCD(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxCDClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            gCurrentSprite.pOamData = sBoxCDOpenedOam;
            Sprite_SpawnAsChild(PSPRITE_CD, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_CD, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
            gCurrentSprite.pOamData = sBoxCDOpeningOam;
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            gCurrentSprite.pOamData = sBoxCDOpenedOam;
            if (gCollectedCD) {
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            } else {
                Sprite_SpawnAsChild(PSPRITE_CD, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
                Sprite_SpawnAsChild(PSPRITE_GLOW_CD, gCurrentSprite.roomSlot, 0,
                        gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            }
        case POSE_32:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_BoxHeartRefill(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxHeartRefillClosedOam;
            break;

        case POSE_INIT_1:
            Box_Init1();
            gCurrentSprite.pOamData = sBoxHeartRefillOpenedOam;
            Sprite_SpawnAsChild(PSPRITE_HEART_REFILL, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_HEART_REFILL, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            break;

        case POSE_INIT_2:
            Box_Init2();
            break;

        case POSE_1F:
        case POSE_21:
        case POSE_33:
        case POSE_35:
            Box_StartOpening();
            gCurrentSprite.pOamData = sBoxHeartRefillOpeningOam;
        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 > 0) {
                break;
            }
            Box_FinishOpening();
            gCurrentSprite.pOamData = sBoxHeartRefillOpenedOam;
            Sprite_SpawnAsChild(PSPRITE_HEART_REFILL, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_GLOW_HEART_REFILL, gCurrentSprite.roomSlot, 0,
                    gCurrentSprite.yPosition - 2 * BLOCK_SIZE, gCurrentSprite.xPosition);
        case POSE_32:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                Box_Disappearing();
            }
            break;
    }

    func_8026838();
}

void SpriteAI_JewelPieceNE(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_NE)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sJewelPieceNEOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            Sound_Play(SE_GET_JEWEL_PIECE);
            gCollectedNEJewelPiece = 1;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            if (gWarioData.horizontalDirection & KEY_LEFT) {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition - SUBPIXELS_FROM_PIXELS(50), SSPRITE_JEWEL_PIECE_ICONS);
            } else {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition + SUBPIXELS_FROM_PIXELS(18), SSPRITE_JEWEL_PIECE_ICONS);
            }
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_JewelPieceSE(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_SE)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sJewelPieceSEOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            Sound_Play(SE_GET_JEWEL_PIECE);
            gCollectedSEJewelPiece = 1;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            if (gWarioData.horizontalDirection & KEY_LEFT) {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition - SUBPIXELS_FROM_PIXELS(50), SSPRITE_JEWEL_PIECE_ICONS);
            } else {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition + SUBPIXELS_FROM_PIXELS(18), SSPRITE_JEWEL_PIECE_ICONS);
            }
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_JewelPieceSW(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_SW)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sJewelPieceSWOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            Sound_Play(SE_GET_JEWEL_PIECE);
            gCollectedSWJewelPiece = 1;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            if (gWarioData.horizontalDirection & KEY_LEFT) {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition - SUBPIXELS_FROM_PIXELS(50), SSPRITE_JEWEL_PIECE_ICONS);
            } else {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition + SUBPIXELS_FROM_PIXELS(18), SSPRITE_JEWEL_PIECE_ICONS);
            }
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_JewelPieceNW(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_NW)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sJewelPieceNWOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            Sound_Play(SE_GET_JEWEL_PIECE);
            gCollectedNWJewelPiece = 1;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            if (gWarioData.horizontalDirection & KEY_LEFT) {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition - SUBPIXELS_FROM_PIXELS(50), SSPRITE_JEWEL_PIECE_ICONS);
            } else {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition + SUBPIXELS_FROM_PIXELS(18), SSPRITE_JEWEL_PIECE_ICONS);
            }
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_CD(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_CD)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sCDOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            Sound_Play(SE_GET_CD);
            gCollectedCD = 1;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            if (gWarioData.horizontalDirection & KEY_LEFT) {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition - SUBPIXELS_FROM_PIXELS(34), SSPRITE_CD_ICON);
            } else {
                Sprite_SpawnSecondary(gWarioData.yPosition - SUBPIXELS_FROM_PIXELS(40), gWarioData.xPosition + SUBPIXELS_FROM_PIXELS(18), SSPRITE_CD_ICON);
            }
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_HeartRefill(void) {
    s16 yVelocity;
    u8 frame;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_HEART_REFILL)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.pOamData = sHeartRefillOam;
            Treasure_Init();
            break;

        case POSE_31:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED);
            gWarioHearts.filling += MAX_HEARTS;
            if (gWarioHearts.current + gWarioHearts.filling > MAX_HEARTS) {
                gWarioHearts.filling = MAX_HEARTS - gWarioHearts.current;
            }
            gWarioHearts.unk_2 = gWarioHearts.filling << 3;
            gWarioHearts.unk_3 = 0;
            Sound_Play(SE_GET_HEART_REFILL);
            break;

        default:
            frame = gCurrentSprite.work3;
            yVelocity = sTreasureFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sTreasureFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }
}

void SpriteAI_TreasureGlowJewelPieceNE(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_NE)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_TreasureGlowJewelPieceSE(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_SE)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_TreasureGlowJewelPieceSW(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_SW)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_TreasureGlowJewelPieceNW(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_JEWEL_PIECE_NW)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_TreasureGlowCD(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_CD)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_TreasureGlowHeartRefill(void) {
    s16 yVelocity;
    u8 frame;

    gCurrentSprite.disableWarioInteraction = 1;

    if (SpriteUtil_DespawnChildWithParent(PSPRITE_BOX_HEART_REFILL)) {
        return;
    }

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            TreasureGlow_Init();
            break;

        case POSE_IDLE:
            if (gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] == MAKE_PERSISTENT_DATA(POSE_INIT_2, PERSISTENT_STATUS_LOADED)) {
                TreasureGlow_Collected();
            } else {
                frame = gCurrentSprite.work3;
                yVelocity = sTreasureFloatYVelocity[frame];
                if (yVelocity == S16_MAX) {
                    yVelocity = sTreasureFloatYVelocity[0];
                    frame = 0;
                }
                gCurrentSprite.work3 = frame + DELTA_TIME;
                gCurrentSprite.yPosition += yVelocity;
            }
            break;

        case POSE_12:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;
    }
}

void SpriteAI_Treasure_Unused1(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gCurrentSprite.gfxSlot = 7;
            gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_3;
            gCurrentSprite.drawDistanceDown = 2 * BLOCK_SIZE_PIXELS;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
            gCurrentSprite.hitboxExtentUp = 2 * BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = BLOCK_SIZE - PIXEL_SIZE;
            gCurrentSprite.hitboxExtentRight = BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            gCurrentSprite.pOamData = sBoxJewelPieceOpenedOam;
            gCurrentSprite.pose = POSE_IDLE;
            gCurrentSprite.warioInteractionFlags = 0x19;
            gCurrentSprite.work1 = 0;
            break;
    }

    func_8026838();
}

void SpriteAI_Treasure_Unused2(void) {
    gCurrentSprite.disableWarioInteraction = 1;

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Box_Init();
            gCurrentSprite.pOamData = sBoxJewelPieceOpenedOam;
            break;
    }
}
