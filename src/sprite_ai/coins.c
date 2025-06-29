#include "clipdata.h"
#include "game_state.h"
#include "in_game.h"
#include "oam.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "score.h"
#include "types.h"
#include "voice_set.h"
#include "wario.h"


const u16 sCoin500PointsOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -15, ATTR0_SQUARE, ATTR1_16x16, 430, 6, 0),
};
const u16 sCoin500PointsOam_Frame2[] = {
    1,
    OAM_ENTRY(-8, -15, ATTR0_SQUARE, ATTR1_16x16, 434, 6, 0),
};
const u16 sCoin500PointsOam_Frame3[] = {
    1,
    OAM_ENTRY(-4, -15, ATTR0_TALL, ATTR1_8x16, 436, 6, 0),
};
const u16 sCoin500PointsOam_Frame4[] = {
    1,
    OAM_ENTRY(-4, -15, ATTR0_TALL, ATTR1_8x16, 437, 6, 0),
};
const u16 sCoin500PointsOam_Frame5[] = {
    1,
    OAM_ENTRY(-4, -15, ATTR0_TALL, ATTR1_8x16 | ATTR1_HFLIP, 436, 6, 0),
};
const u16 sCoin500PointsOam_Frame6[] = {
    1,
    OAM_ENTRY(-8, -15, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 434, 6, 0),
};
const u16 sCoin500PointsOam_Frame7[] = {
    1,
    OAM_ENTRY(-8, -15, ATTR0_SQUARE, ATTR1_16x16, 432, 6, 0),
};
const u16 sCoin100PointsOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -14, ATTR0_SQUARE, ATTR1_16x16, 423, 4, 0),
};
const u16 sCoin100PointsOam_Frame2[] = {
    1,
    OAM_ENTRY(-8, -14, ATTR0_SQUARE, ATTR1_16x16, 427, 4, 0),
};
const u16 sCoin100PointsOam_Frame3[] = {
    1,
    OAM_ENTRY(-4, -14, ATTR0_TALL, ATTR1_8x16, 429, 4, 0),
};
const u16 sCoin100PointsOam_Frame4[] = {
    2,
    OAM_ENTRY(-4, -13, ATTR0_SQUARE, ATTR1_8x8, 437, 4, 0),
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 437, 4, 0),
};
const u16 sCoin100PointsOam_Frame5[] = {
    1,
    OAM_ENTRY(-4, -14, ATTR0_TALL, ATTR1_8x16 | ATTR1_HFLIP, 429, 4, 0),
};
const u16 sCoin100PointsOam_Frame6[] = {
    1,
    OAM_ENTRY(-8, -14, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 427, 4, 0),
};
const u16 sCoin100PointsOam_Frame7[] = {
    1,
    OAM_ENTRY(-8, -14, ATTR0_SQUARE, ATTR1_16x16, 425, 4, 0),
};
const u16 sCoin50PointsOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -13, ATTR0_SQUARE, ATTR1_16x16, 416, 7, 0),
};
const u16 sCoin50PointsOam_Frame2[] = {
    1,
    OAM_ENTRY(-8, -13, ATTR0_SQUARE, ATTR1_16x16, 420, 7, 0),
};
const u16 sCoin50PointsOam_Frame3[] = {
    1,
    OAM_ENTRY(-4, -13, ATTR0_TALL, ATTR1_8x16, 422, 7, 0),
};
const u16 sCoin50PointsOam_Frame4[] = {
    2,
    OAM_ENTRY(-4, -11, ATTR0_SQUARE, ATTR1_8x8, 437, 7, 0),
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_VFLIP, 437, 7, 0),
};
const u16 sCoin50PointsOam_Frame5[] = {
    1,
    OAM_ENTRY(-4, -13, ATTR0_TALL, ATTR1_8x16 | ATTR1_HFLIP, 422, 7, 0),
};
const u16 sCoin50PointsOam_Frame6[] = {
    1,
    OAM_ENTRY(-8, -13, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 420, 7, 0),
};
const u16 sCoin50PointsOam_Frame7[] = {
    1,
    OAM_ENTRY(-8, -13, ATTR0_SQUARE, ATTR1_16x16, 418, 7, 0),
};
const u16 sCoin10PointsOam_Frame1[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8, 499, 5, 0),
};
const u16 sCoin10PointsOam_Frame2[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8, 501, 5, 0),
};
const u16 sCoin10PointsOam_Frame3[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8, 502, 5, 0),
};
const u16 sCoin10PointsOam_Frame4[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 501, 5, 0),
};
const u16 sCoin10PointsOam_Frame5[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8, 500, 5, 0),
};

const u16 sCoinsUnusedOamFrame[] = {
    1,
    OAM_ENTRY(-4, -7, ATTR0_SQUARE, ATTR1_8x8, 203, 6, 0),
};

const AnimationFrame sCoin500PointsOamData[] = {
    { sCoin500PointsOam_Frame1, 3 },
    { sCoin500PointsOam_Frame2, 3 },
    { sCoin500PointsOam_Frame3, 3 },
    { sCoin500PointsOam_Frame4, 3 },
    { sCoin500PointsOam_Frame5, 3 },
    { sCoin500PointsOam_Frame6, 3 },
    { sCoin500PointsOam_Frame7, 3 },
    { sCoin500PointsOam_Frame2, 3 },
    { sCoin500PointsOam_Frame3, 3 },
    { sCoin500PointsOam_Frame4, 3 },
    { sCoin500PointsOam_Frame5, 3 },
    { sCoin500PointsOam_Frame6, 3 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sCoin100PointsOamData[] = {
    { sCoin100PointsOam_Frame1, 3 },
    { sCoin100PointsOam_Frame2, 3 },
    { sCoin100PointsOam_Frame3, 3 },
    { sCoin100PointsOam_Frame4, 3 },
    { sCoin100PointsOam_Frame5, 3 },
    { sCoin100PointsOam_Frame6, 3 },
    { sCoin100PointsOam_Frame7, 3 },
    { sCoin100PointsOam_Frame2, 3 },
    { sCoin100PointsOam_Frame3, 3 },
    { sCoin100PointsOam_Frame4, 3 },
    { sCoin100PointsOam_Frame5, 3 },
    { sCoin100PointsOam_Frame6, 3 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sCoin50PointsOamData[] = {
    { sCoin50PointsOam_Frame1, 3 },
    { sCoin50PointsOam_Frame2, 3 },
    { sCoin50PointsOam_Frame3, 3 },
    { sCoin50PointsOam_Frame4, 3 },
    { sCoin50PointsOam_Frame5, 3 },
    { sCoin50PointsOam_Frame6, 3 },
    { sCoin50PointsOam_Frame7, 3 },
    { sCoin50PointsOam_Frame2, 3 },
    { sCoin50PointsOam_Frame3, 3 },
    { sCoin50PointsOam_Frame4, 3 },
    { sCoin50PointsOam_Frame5, 3 },
    { sCoin50PointsOam_Frame6, 3 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sCoin10PointsOamData[] = {
    { sCoin10PointsOam_Frame1, 3 },
    { sCoin10PointsOam_Frame2, 3 },
    { sCoin10PointsOam_Frame3, 3 },
    { sCoin10PointsOam_Frame4, 3 },
    { sCoin10PointsOam_Frame5, 3 },
    { sCoin10PointsOam_Frame2, 3 },
    { sCoin10PointsOam_Frame3, 3 },
    { sCoin10PointsOam_Frame4, 3 },
    ANIMATION_TERMINATOR
};


const u16 sCoinsUnusedOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -28, ATTR0_SQUARE, ATTR1_16x16, 352, 6, 0),
    OAM_ENTRY(0, -28, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 352, 6, 0),
    OAM_ENTRY(-16, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 352, 6, 0),
    OAM_ENTRY(0, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP | ATTR1_VFLIP, 352, 6, 0),

};
const u16 sCoinsUnusedOam_Frame2[] = {
    2,
    OAM_ENTRY(-16, -28, ATTR0_WIDE, ATTR1_32x16, 354, 6, 0),
    OAM_ENTRY(-16, -12, ATTR0_WIDE, ATTR1_32x16 | ATTR1_VFLIP, 354, 6, 0),

};
const u16 sCoinsUnusedOam_Frame3[] = {
    3,
    OAM_ENTRY(-8, -28, ATTR0_SQUARE, ATTR1_16x16, 359, 6, 0),
    OAM_ENTRY(-8, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 359, 6, 0),
    OAM_ENTRY(-16, -20, ATTR0_TALL, ATTR1_8x16, 358, 6, 0),

};
const u16 sCoinsUnusedOam_Frame4[] = {
    2,
    OAM_ENTRY(-8, -28, ATTR0_SQUARE, ATTR1_16x16, 361, 6, 0),
    OAM_ENTRY(-8, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_VFLIP, 361, 6, 0),

};
const u16 sCoinsUnusedOam_Frame5[] = {
    2,
    OAM_ENTRY(-4, -28, ATTR0_TALL, ATTR1_8x16, 363, 6, 0),
    OAM_ENTRY(-4, -12, ATTR0_TALL, ATTR1_8x16 | ATTR1_VFLIP, 363, 6, 0),

};
const u16 sCoinsUnusedOam_Frame6[] = {
    2,
    OAM_ENTRY(-8, -28, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 361, 6, 0),
    OAM_ENTRY(-8, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP | ATTR1_VFLIP, 361, 6, 0),

};
const u16 sCoinsUnusedOam_Frame7[] = {
    3,
    OAM_ENTRY(-8, -28, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 359, 6, 0),
    OAM_ENTRY(-8, -12, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP | ATTR1_VFLIP, 359, 6, 0),
    OAM_ENTRY(8, -20, ATTR0_TALL, ATTR1_8x16 | ATTR1_HFLIP, 358, 6, 0),

};
const u16 sCoinsUnusedOam_Frame8[] = {
    2,
    OAM_ENTRY(-16, -28, ATTR0_WIDE, ATTR1_32x16 | ATTR1_HFLIP, 354, 6, 0),
    OAM_ENTRY(-16, -12, ATTR0_WIDE, ATTR1_32x16 | ATTR1_HFLIP | ATTR1_VFLIP, 354, 6, 0),

};

const AnimationFrame sCoinsUnusedOamData[] = {
    { sCoinsUnusedOam_Frame1, 6 },
    { sCoinsUnusedOam_Frame2, 6 },
    { sCoinsUnusedOam_Frame3, 6 },
    { sCoinsUnusedOam_Frame4, 6 },
    { sCoinsUnusedOam_Frame5, 6 },
    { sCoinsUnusedOam_Frame6, 6 },
    { sCoinsUnusedOam_Frame7, 6 },
    { sCoinsUnusedOam_Frame8, 6 },
    ANIMATION_TERMINATOR
};


const u16 sDiamondOam_Frame1[] = {
    3,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame2[] = {
    4,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_TALL, ATTR1_8x16, 359, 5, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame3[] = {
    6,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_SQUARE, ATTR1_16x16, 360, 5, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_8x8, 509, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame4[] = {
    6,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-1, -24, ATTR0_TALL, ATTR1_8x16 | ATTR1_HFLIP, 362, 5, 0),
    OAM_ENTRY(-8, -24, ATTR0_TALL, ATTR1_8x16, 362, 5, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame5[] = {
    3,
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame6[] = {
    3,
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame7[] = {
    4,
    OAM_ENTRY(4, -12, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame8[] = {
    3,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame9[] = {
    4,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame10[] = {
    4,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame11[] = {
    4,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame12[] = {
    4,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame13[] = {
    5,
    OAM_ENTRY(-14, -10, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
};
const u16 sDiamondOam_Frame14[] = {
    4,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame15[] = {
    4,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame16[] = {
    4,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(7, -22, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame17[] = {
    3,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame18[] = {
    3,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame19[] = {
    3,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame20[] = {
    4,
    OAM_ENTRY(8, -14, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame21[] = {
    3,
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame22[] = {
    3,
    OAM_ENTRY(-21, -16, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame23[] = {
    3,
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame24[] = {
    4,
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame25[] = {
    4,
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame26[] = {
    4,
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
};
const u16 sDiamondOam_Frame27[] = {
    4,
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-20, -16, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame28[] = {
    4,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame29[] = {
    4,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame30[] = {
    4,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 219, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 220, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame31[] = {
    4,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 218, 4, 0),
    OAM_ENTRY(-13, -26, ATTR0_SQUARE, ATTR1_8x8, 221, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};
const u16 sDiamondOam_Frame32[] = {
    3,
    OAM_ENTRY(11, -18, ATTR0_SQUARE, ATTR1_8x8, 217, 4, 0),
    OAM_ENTRY(-16, -24, ATTR0_WIDE, ATTR1_32x16, 298, 5, 0),
    OAM_ENTRY(-8, -8, ATTR0_WIDE, ATTR1_16x8, 296, 5, 0),
};

const AnimationFrame sDiamondOamData[] = {
    { sDiamondOam_Frame1, 4 },
    { sDiamondOam_Frame2, 4 },
    { sDiamondOam_Frame3, 4 },
    { sDiamondOam_Frame4, 4 },
    { sDiamondOam_Frame5, 4 },
    { sDiamondOam_Frame6, 4 },
    { sDiamondOam_Frame7, 4 },
    { sDiamondOam_Frame8, 4 },
    { sDiamondOam_Frame9, 4 },
    { sDiamondOam_Frame10, 4 },
    { sDiamondOam_Frame11, 4 },
    { sDiamondOam_Frame12, 4 },
    { sDiamondOam_Frame13, 4 },
    { sDiamondOam_Frame14, 4 },
    { sDiamondOam_Frame15, 4 },
    { sDiamondOam_Frame16, 4 },
    { sDiamondOam_Frame17, 4 },
    { sDiamondOam_Frame18, 4 },
    { sDiamondOam_Frame19, 4 },
    { sDiamondOam_Frame20, 4 },
    { sDiamondOam_Frame21, 4 },
    { sDiamondOam_Frame22, 4 },
    { sDiamondOam_Frame23, 4 },
    { sDiamondOam_Frame24, 4 },
    { sDiamondOam_Frame25, 4 },
    { sDiamondOam_Frame26, 4 },
    { sDiamondOam_Frame27, 4 },
    { sDiamondOam_Frame28, 4 },
    { sDiamondOam_Frame29, 4 },
    { sDiamondOam_Frame30, 4 },
    { sDiamondOam_Frame31, 4 },
    { sDiamondOam_Frame32, 4 },
    ANIMATION_TERMINATOR
};


const u16 sLittleHeartOam_Frame1[] = {
    1,
    OAM_ENTRY(-4, -8, ATTR0_SQUARE, ATTR1_8x8, 496, 6, 0),
};
const u16 sLittleHeartOam_Frame2[] = {
    1,
    OAM_ENTRY(-4, -8, ATTR0_SQUARE, ATTR1_8x8, 497, 6, 0),
};
const u16 sLittleHeartOam_Frame3[] = {
    1,
    OAM_ENTRY(-4, -8, ATTR0_SQUARE, ATTR1_8x8, 498, 6, 0),
};
const u16 sLittleHeartOam_Frame4[] = {
    1,
    OAM_ENTRY(-3, -7, ATTR0_SQUARE, ATTR1_8x8, 497, 6, 0),
};

const AnimationFrame sLittleHeartOamData[] = {
    { sLittleHeartOam_Frame1, 8 },
    { sLittleHeartOam_Frame2, 8 },
    { sLittleHeartOam_Frame3, 8 },
    { sLittleHeartOam_Frame4, 8 },
    ANIMATION_TERMINATOR
};


const s16 sDiamondFloatYVelocity[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, -PIXEL_SIZE,
    0, 0, 0, 0, 0, 0, 0, 0, 0, -PIXEL_SIZE,
    0, 0, 0, 0, 0, 0, 0, 0, 0, PIXEL_SIZE,
    0, 0, 0, 0, 0, 0, 0, 0, 0, PIXEL_SIZE,
    S16_MAX
};


static void func_802BADC(void) {
    gCurrentSprite.work1 += 1;
    func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 >= 2) {
            gCurrentSprite.work2 -= 1;
        } else {
            func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2 = 0;
            }
        }
        gCurrentSprite.pose = POSE_2D;
    } else {
        gCurrentSprite.xPosition -= gCurrentSprite.work2;
        func_8023B88();
        if ((gUnk_3000A50 & 14) == 0) {
            if (gUnk_3000A50 == 0 && gCurrentSprite.pose == POSE_2C) {
                gCurrentSprite.pose = POSE_43;
            } else {
                if ((func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft), gUnk_3000A51 == 0) &&
                    (func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight), gUnk_3000A51 == 0)) {
                    gCurrentSprite.pose = POSE_47;
                } else {
                    if (gCurrentSprite.statusBits & SPRITE_STATUS_5) {
                        if ((gCurrentSprite.work1 & 1) == 0) {
                            gCurrentSprite.work2 -= 1;
                        }
                    } else {
                        if ((gCurrentSprite.work1 & 3) == 0) {
                            gCurrentSprite.work2 -= 1;
                        }
                    }
                }
            }
        } else if ((gUnk_3000A50 & 0xF1) == 1) {
            if (gCurrentSprite.pose != POSE_2C) {
                gCurrentSprite.pose = POSE_47;
            }
        } else if (gCurrentSprite.work2 >= 5) {
            gCurrentSprite.work2 -= 1;
        } else {
            gCurrentSprite.pose = POSE_45;
        }
    }
}

static void func_802BC24(void) {
    gCurrentSprite.work1 += 1;
    func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 >= 2) {
            gCurrentSprite.work2 -= 1;
        } else {
            func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2 = 0;
            }
        }
        gCurrentSprite.pose = POSE_2B;
    } else {
        gCurrentSprite.xPosition += gCurrentSprite.work2;
        func_8023B88();
        if ((gUnk_3000A50 & 14) == 0) {
            if (gUnk_3000A50 == 0 && gCurrentSprite.pose == POSE_2E) {
                gCurrentSprite.pose = POSE_45;
            } else {
                if ((func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight), gUnk_3000A51 == 0) &&
                    (func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft), gUnk_3000A51 == 0)) {
                    gCurrentSprite.pose = POSE_49;
                } else {
                    if (gCurrentSprite.statusBits & SPRITE_STATUS_5) {
                        if ((gCurrentSprite.work1 & 1) == 0) {
                            gCurrentSprite.work2 -= 1;
                        }
                    } else {
                        if ((gCurrentSprite.work1 & 3) == 0) {
                            gCurrentSprite.work2 -= 1;
                        }
                    }
                }
            }
        } else if ((gUnk_3000A50 & 0xF1) == 0) {
            if (gCurrentSprite.pose != POSE_2E) {
                gCurrentSprite.pose = POSE_49;
            }
        } else if (gCurrentSprite.work2 >= 5) {
            gCurrentSprite.work2 -= 1;
        } else {
            gCurrentSprite.pose = POSE_43;
        }
    }
}

static void Coin_Pose44(void) {
    u32 unk_r2;
    s16 yVelocity;
    u8 velocityTableIndex;

    velocityTableIndex = gCurrentSprite.work3;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_5) {
        yVelocity = sUnk_8352AFC[gCurrentSprite.work3];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352AFC[gCurrentSprite.work3 - 1];
            gCurrentSprite.yPosition += yVelocity;
        } else {
            gCurrentSprite.work3 += 1;
            gCurrentSprite.yPosition += yVelocity;
        }
    } else {
        yVelocity = sUnk_8352ADC[gCurrentSprite.work3];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352ADC[gCurrentSprite.work3 - 1];
            gCurrentSprite.yPosition += yVelocity;
        } else {
            gCurrentSprite.work3 += 1;
            gCurrentSprite.yPosition += yVelocity;
        }
    }
    gCurrentSprite.xPosition -= gCurrentSprite.work2;

    unk_r2 = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_11;
    }

    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = unk_r2;
        if (gCurrentSprite.work2 > 3) {
            gCurrentSprite.work2 -= 2;
        }
        if (yVelocity < 8) {
            gCurrentSprite.pose = POSE_2B;
        } else if (yVelocity < 12) {
            gCurrentSprite.pose = POSE_37;
        } else if (yVelocity < 16) {
            gCurrentSprite.pose = POSE_39;
        } else {
            gCurrentSprite.pose = POSE_3B;
        }
        Sound_Play(SOUND_36);
    } else {
        func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 == 0x11) {
            gCurrentSprite.pose = POSE_45;
        }
    }
}

static void Coin_Pose46(void) {
    u32 unk_r2;
    s16 yVelocity;
    u8 velocityTableIndex;

    velocityTableIndex = gCurrentSprite.work3;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_5) {
        yVelocity = sUnk_8352AFC[gCurrentSprite.work3];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352AFC[gCurrentSprite.work3 - 1];
            gCurrentSprite.yPosition += yVelocity;
        } else {
            gCurrentSprite.work3 += 1;
            gCurrentSprite.yPosition += yVelocity;
        }
    } else {
        yVelocity = sUnk_8352ADC[gCurrentSprite.work3];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352ADC[gCurrentSprite.work3 - 1];
            gCurrentSprite.yPosition += yVelocity;
        } else {
            gCurrentSprite.work3 += 1;
            gCurrentSprite.yPosition += yVelocity;
        }
    }
    gCurrentSprite.xPosition += gCurrentSprite.work2;

    unk_r2 = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_11;
    }

    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = unk_r2;
        if (gCurrentSprite.work2 > 3) {
            gCurrentSprite.work2 -= 2;
        }
        if (yVelocity < 8) {
            gCurrentSprite.pose = POSE_2D;
        } else if (yVelocity < 12) {
            gCurrentSprite.pose = POSE_3D;
        } else if (yVelocity < 16) {
            gCurrentSprite.pose = POSE_3F;
        } else {
            gCurrentSprite.pose = POSE_41;
        }
        Sound_Play(SOUND_36);
    } else {
        func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51 == 0x11) {
            gCurrentSprite.pose = POSE_43;
        }
    }
}

static void Coin_Init(void) {
    switch (gCurrentSprite.globalID) {
        case PSPRITE_COIN_50POINTS:
            gCurrentSprite.pOamData = &sCoin50PointsOamData;
            gCurrentSprite.work2 = 7;
            gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.hitboxExtentUp = 3 * QUARTER_BLOCK_SIZE + PIXEL_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = QUARTER_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentRight = 3 * PIXEL_SIZE;
            break;

        case PSPRITE_COIN_100POINTS:
            gCurrentSprite.pOamData = &sCoin100PointsOamData;
            gCurrentSprite.work2 = 6;
            gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.hitboxExtentUp = BLOCK_SIZE - EIGHTH_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = QUARTER_BLOCK_SIZE + PIXEL_SIZE;
            gCurrentSprite.hitboxExtentRight = QUARTER_BLOCK_SIZE;
            break;

        case PSPRITE_COIN_500POINTS:
            gCurrentSprite.pOamData = &sCoin500PointsOamData;
            gCurrentSprite.work2 = 5;
            gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.hitboxExtentUp = BLOCK_SIZE - PIXEL_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = QUARTER_BLOCK_SIZE + 2 * PIXEL_SIZE;
            gCurrentSprite.hitboxExtentRight = QUARTER_BLOCK_SIZE + PIXEL_SIZE;
            break;

        case PSPRITE_COIN_1000POINTS:
            gCurrentSprite.pOamData = &sDiamondOamData;
            gCurrentSprite.work2 = 4;
            gCurrentSprite.drawDistanceDown = 24;
            gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
            gCurrentSprite.hitboxExtentUp = BLOCK_SIZE + QUARTER_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentDown = 2 * BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE - PIXEL_SIZE;
            break;

        case PSPRITE_LITTLE_HEART:
            gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.hitboxExtentUp = HALF_BLOCK_SIZE - PIXEL_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = QUARTER_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentRight = QUARTER_BLOCK_SIZE - PIXEL_SIZE;
            gCurrentSprite.work2 = 4;
            if (gHeartGauge.current + gHeartGauge.filling >= HEART_GAUGE_MAX) {
                gCurrentSprite.globalID = PSPRITE_COIN_100POINTS;
                gCurrentSprite.pOamData = sCoin100PointsOamData;
            } else {
                gCurrentSprite.pOamData = sLittleHeartOamData;
            }
            break;

        default:
            gCurrentSprite.pOamData = &sCoin10PointsOamData;
            gCurrentSprite.work2 = 8;
            gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.drawDistanceUp = 0;
            gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS / 2;
            gCurrentSprite.hitboxExtentUp = HALF_BLOCK_SIZE - PIXEL_SIZE;
            gCurrentSprite.hitboxExtentDown = 0;
            gCurrentSprite.hitboxExtentLeft = QUARTER_BLOCK_SIZE;
            gCurrentSprite.hitboxExtentRight = 3 * PIXEL_SIZE;
            break;
    }
    gCurrentSprite.statusBits |= SPRITE_STATUS_10;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;

    gCurrentSprite.disableWarioInteraction = 15;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.yPosition -= 3 * EIGHTH_BLOCK_SIZE;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;

    if (gWarioData.damageTimer) {
        if (gWarioData.horizontalDirection & KEY_RIGHT) {
            gCurrentSprite.pose = POSE_3F;
            gCurrentSprite.statusBits |= SPRITE_STATUS_FACING_RIGHT;
        } else {
            gCurrentSprite.pose = POSE_39;
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_FACING_RIGHT;
        }
    } else {
        SpriteUtil_TurnTowardWario();
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.pose = POSE_39;
        } else {
            gCurrentSprite.pose = POSE_3F;
        }
    }
}

static void Coin_Pose2F(void) {
    gCurrentSprite.pose = POSE_30;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_11) {
        gCurrentSprite.work0 = CONVERT_SECONDS(8.0 / 15);
    } else {
        gCurrentSprite.work0 = CONVERT_SECONDS(2);
    }
}

static void Coin_Pose30(void) {
    if (gCurrentSprite.work0 != 0) {
        TIMER_COUNT_DOWN(gCurrentSprite.work0);
        if (gCurrentSprite.work0 == 0) {
            gCurrentSprite.unk_1D = CONVERT_SECONDS(2);
        }
    }
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = POSE_1D;
    }
}

static void Coin_Collect(void) {
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
    switch (gCurrentSprite.globalID) {
        case PSPRITE_COIN_50POINTS:
            Score_GivePoints(CONVERT_SCORE(50));
            Sprite_SpawnSecondary(gCurrentSprite.yPosition - 90, gCurrentSprite.xPosition, SSPRITE_SCORE_50);
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_COIN_50POINTS_UNDERWATER);
            } else {
                Sound_Play(SE_GET_COIN_50POINTS);
            }
            break;

        case PSPRITE_COIN_100POINTS:
            Score_GivePoints(CONVERT_SCORE(100));
            Sprite_SpawnSecondary(gCurrentSprite.yPosition - 120, gCurrentSprite.xPosition, SSPRITE_SCORE_100);
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_COIN_100POINTS_UNDERWATER);
            } else {
                Sound_Play(SE_GET_COIN_100POINTS);
            }
            break;

        case PSPRITE_COIN_500POINTS:
            Score_GivePoints(CONVERT_SCORE(500));
            Sprite_SpawnSecondary(gCurrentSprite.yPosition - 150, gCurrentSprite.xPosition, SSPRITE_SCORE_500);
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_COIN_500POINTS_UNDERWATER);
            } else {
                Sound_Play(SE_GET_COIN_500POINTS);
            }
            break;

        case PSPRITE_COIN_1000POINTS:
            Score_GivePoints(CONVERT_SCORE(1000));
            Sprite_SpawnSecondary(gCurrentSprite.yPosition - 180, gCurrentSprite.xPosition - BLOCK_SIZE, SSPRITE_SCORE_1000);
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_DIAMOND_UNDERWATER);
            } else {
                Sound_Play(SE_GET_DIAMOND);
            }
            break;

        case PSPRITE_LITTLE_HEART:
            if (gHeartGauge.current + gHeartGauge.filling < HEART_GAUGE_MAX) {
                gHeartGauge.filling += 1;
            }
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_LITTLE_HEART_UNDERWATER);
            } else {
                Sound_Play(SE_GET_LITTLE_HEART);
            }
            break;

        default:
            Score_GivePoints(CONVERT_SCORE(10));
            Sprite_SpawnSecondary(gCurrentSprite.yPosition - 60, gCurrentSprite.xPosition, SSPRITE_SCORE_10);
            if (gWarioData.reaction == REACT_WATER) {
                Sound_Play(SE_GET_COIN_10POINTS_UNDERWATER);
            } else {
                Sound_Play(SE_GET_COIN_10POINTS);
            }
            break;
    }
}

static void Coin_Pose1D(void) {
    gCurrentSprite.pose = POSE_1E;
    gCurrentSprite.work3 = 0;
}

static void Coin_Pose2B(void) {
    gCurrentSprite.pose = POSE_2C;
    gCurrentSprite.work1 = 0;
}

static void Coin_Pose2C(void) {
    func_80238E8();
    if (gCurrentSprite.work2 >= 2) {
        func_802BADC();
    } else {
        gCurrentSprite.pose = POSE_2F;
    }
}

static void Coin_Pose2D(void) {
    gCurrentSprite.pose = POSE_2E;
    gCurrentSprite.work1 = 0;
}

static void Coin_Pose2E(void) {
    func_80238E8();
    if (gCurrentSprite.work2 >= 2) {
        func_802BC24();
    } else {
        gCurrentSprite.pose = POSE_2F;
    }
}

static void Diamond_Init(void) {
    gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_3;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 8;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE + QUARTER_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentDown = 2 * BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE - PIXEL_SIZE;
    gCurrentSprite.pOamData = &sDiamondOamData;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = POSE_10;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.yPosition -= PIXEL_SIZE;
    gCurrentSprite.xPosition += HALF_BLOCK_SIZE;
}

static void Diamond_Float(void) {
    s16 yVelocity;
    u8 frame;

    frame = gCurrentSprite.work3;
    yVelocity = sDiamondFloatYVelocity[frame];
    if (yVelocity == S16_MAX) {
        yVelocity = sDiamondFloatYVelocity[0];
        frame = 0;
    }
    gCurrentSprite.work3 = frame + 1;
    gCurrentSprite.yPosition += yVelocity;
}

static void Diamond_Collect(void) {
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
    Score_GivePoints(CONVERT_SCORE(1000));
    Sprite_SpawnSecondary(
        gCurrentSprite.yPosition - SUBPIXELS_FROM_PIXELS(25),
        gCurrentSprite.xPosition - BLOCK_SIZE,
        SSPRITE_SCORE_1000
    );
    if (gWarioData.reaction == REACT_WATER) {
        Sound_Play(SE_GET_DIAMOND_UNDERWATER);
    } else {
        Sound_Play(SE_GET_DIAMOND);
    }
    VoiceSet_Play(VS_WARIO_TREASURE);
}

static void ChanceWheelDiamond_Init(void) {
    gCurrentSprite.globalID = PSPRITE_COIN_1000POINTS;
    gCurrentSprite.pOamData = &sDiamondOamData;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 8;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentUp = BLOCK_SIZE + QUARTER_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentDown = 2 * BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE;
    gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE + EIGHTH_BLOCK_SIZE - PIXEL_SIZE;
    gCurrentSprite.work2 = 4;
    SpriteUtil_TurnTowardWario();
    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pose = POSE_3B;
    } else {
        gCurrentSprite.pose = POSE_41;
    }
    gCurrentSprite.statusBits |= SPRITE_STATUS_10;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.disableWarioInteraction = 15;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
}

void SpriteAI_Coin(void) {
    u8 despawnTimer;

    despawnTimer = gCurrentSprite.unk_1D;
    if (despawnTimer) {
        if ((despawnTimer & 1) == 0) {
            gCurrentSprite.statusBits = gCurrentSprite.statusBits ^ SPRITE_STATUS_HIDDEN;
        }
        TIMER_COUNT_DOWN(gCurrentSprite.unk_1D);
        if (gCurrentSprite.unk_1D == 0) {
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            return;
        }
    }
    if (gCurrentSprite.statusBits & SPRITE_STATUS_11) {
        if (gUnk_3000BEC & 1) {
            TIMER_COUNT_DOWN(gCurrentSprite.currentAnimationFrame);
        }
        if (gUnk_3000BEC & 3 && gCurrentSprite.pose != POSE_31) {
            return;
        }
    }
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Coin_Init();
            break;

        case POSE_31:
            Coin_Collect();
            break;

        case POSE_1D:
            Coin_Pose1D();
        case POSE_1E:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_11;
            func_8023EE0();
            break;

        case POSE_2B:
            Coin_Pose2B();
        case POSE_2C:
            Coin_Pose2C();
            break;

        case POSE_2D:
            Coin_Pose2D();
        case POSE_2E:
            Coin_Pose2E();
            break;

        case POSE_2F:
            Coin_Pose2F();
        case POSE_30:
            Coin_Pose30();
            break;

        case POSE_35:
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

        case POSE_33:
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
        case POSE_47:
            func_8024AC0();
        case POSE_44:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_11;
            Coin_Pose44();
            break;

        case POSE_45:
        case POSE_49:
            func_8024BEC();
        case POSE_46:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_11;
            Coin_Pose46();
            break;

        default:
            gCurrentSprite.disableWarioInteraction = 1;
            break;
    }
}

void SpriteAI_Diamond(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Diamond_Init();
            break;

        case POSE_10:
            Diamond_Float();
            break;

        case POSE_31:
            Diamond_Collect();
            break;
    }
}

void SpriteAI_ChanceWheelDiamond(void) {
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            ChanceWheelDiamond_Init();
    }
}
