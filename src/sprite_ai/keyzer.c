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


const u16 sKeyzerOamFrame_83B4554[] = {
    2,
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 288, 7, 0),
};
const u16 sKeyzerOamFrame_83B4562[] = {
    2,
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 290, 7, 0),
};
const u16 sKeyzerOamFrame_83B4570[] = {
    2,
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 326, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 370, 7, 0),
};
const u16 sKeyzerOamFrame_83B457E[] = {
    2,
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 326, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 372, 7, 0),
};
const u16 sKeyzerIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -6, ATTR0_SQUARE, ATTR1_8x8, 507, 5, 0),
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 320, 7, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 292, 7, 0),
};
const u16 sKeyzerIdleOam_Frame2[] = {
    4,
    OAM_ENTRY(-13, -6, ATTR0_SQUARE, ATTR1_8x8, 508, 5, 0),
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 292, 7, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 322, 7, 0),
};
const u16 sKeyzerIdleOam_Frame3[] = {
    4,
    OAM_ENTRY(-13, -7, ATTR0_SQUARE, ATTR1_8x8, 508, 5, 0),
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 402, 7, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 324, 7, 0),
};
const u16 sKeyzerIdleOam_Frame4[] = {
    4,
    OAM_ENTRY(-13, -6, ATTR0_SQUARE, ATTR1_8x8, 507, 5, 0),
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 404, 7, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 324, 7, 0),
};
const u16 sKeyzerOamFrame_83B45F4[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 364, 7, 0),
};
const u16 sKeyzerOamFrame_83B45FC[] = {
    1,
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16, 366, 7, 0),
};
const u16 sKeyzerOamFrame_83B4604[] = {
    1,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 364, 7, 0),
};
const u16 sKeyzerOamFrame_83B460C[] = {
    1,
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 366, 7, 0),
};
const u16 sKeyzerOamFrame_83B4614[] = {
    2,
    OAM_ENTRY(-19, -2, ATTR0_WIDE, ATTR1_16x8, 328, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 368, 7, 0),
};
const u16 sKeyzerOamFrame_83B4622[] = {
    2,
    OAM_ENTRY(-7, -8, ATTR0_SQUARE, ATTR1_16x16, 368, 7, 0),
    OAM_ENTRY(-18, -2, ATTR0_WIDE, ATTR1_16x8, 328, 6, 0),
};
const u16 sKeyzerOamFrame_83B4630[] = {
    2,
    OAM_ENTRY(-4, -3, ATTR0_SQUARE, ATTR1_8x8, 283, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 374, 7, 0),
};
const u16 sKeyzerOamFrame_83B463E[] = {
    2,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16, 364, 7, 0),
    OAM_ENTRY(-11, -2, ATTR0_SQUARE, ATTR1_8x8, 328, 6, 0),
};
const u16 sKeyzerOamFrame_83B464C[] = {
    2,
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 364, 7, 0),
    OAM_ENTRY(3, -2, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 328, 6, 0),
};
const u16 sKeyzerIdleOam_Frame5[] = {
    3,
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 320, 7, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 292, 7, 0),
};
const u16 sKeyzerIdleOam_Frame6[] = {
    3,
    OAM_ENTRY(-16, -2, ATTR0_WIDE, ATTR1_16x8, 294, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 292, 7, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 322, 7, 0),
};
const u16 sKeyzerIdleOam_Frame7[] = {
    3,
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 326, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 324, 7, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 402, 7, 0),
};
const u16 sKeyzerIdleOam_Frame8[] = {
    3,
    OAM_ENTRY(-16, -3, ATTR0_WIDE, ATTR1_16x8, 326, 6, 0),
    OAM_ENTRY(-7, -8, ATTR0_WIDE, ATTR1_16x8, 324, 7, 0),
    OAM_ENTRY(-7, 0, ATTR0_WIDE, ATTR1_16x8, 404, 7, 0),
};
const u16 sKeyzerOamFrame_83B46AA[] = {
    2,
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 288, 7, 0),
};
const u16 sKeyzerOamFrame_83B46B8[] = {
    2,
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 290, 7, 0),
};
const u16 sKeyzerOamFrame_83B46C6[] = {
    2,
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 326, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 370, 7, 0),
};
const u16 sKeyzerOamFrame_83B46D4[] = {
    2,
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 326, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 372, 7, 0),
};
const u16 sKeyzerOamFrame_83B46E2[] = {
    4,
    OAM_ENTRY(5, -6, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 507, 5, 0),
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 320, 7, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 292, 7, 0),
};
const u16 sKeyzerOamFrame_83B46FC[] = {
    4,
    OAM_ENTRY(5, -6, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 508, 5, 0),
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 292, 7, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 322, 7, 0),
};
const u16 sKeyzerOamFrame_83B4716[] = {
    4,
    OAM_ENTRY(5, -7, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 508, 5, 0),
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 324, 7, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 402, 7, 0),
};
const u16 sKeyzerOamFrame_83B4730[] = {
    4,
    OAM_ENTRY(5, -7, ATTR0_SQUARE, ATTR1_8x8 | ATTR1_HFLIP, 507, 5, 0),
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 324, 7, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 404, 7, 0),
};
const u16 sKeyzerOamFrame_83B474A[] = {
    2,
    OAM_ENTRY(3, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 328, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 368, 7, 0),
};
const u16 sKeyzerOamFrame_83B4758[] = {
    2,
    OAM_ENTRY(-9, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 368, 7, 0),
    OAM_ENTRY(2, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 328, 6, 0),
};
const u16 sKeyzerOamFrame_83B4766[] = {
    2,
    OAM_ENTRY(-4, -3, ATTR0_SQUARE, ATTR1_8x8, 283, 6, 0),
    OAM_ENTRY(-8, -8, ATTR0_SQUARE, ATTR1_16x16 | ATTR1_HFLIP, 374, 7, 0),
};
const u16 sKeyzerOamFrame_83B4774[] = {
    3,
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 320, 7, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 292, 7, 0),
};
const u16 sKeyzerOamFrame_83B4788[] = {
    3,
    OAM_ENTRY(0, -2, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 292, 7, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 322, 7, 0),
};
const u16 sKeyzerOamFrame_83B479C[] = {
    3,
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 402, 7, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 324, 7, 0),
};
const u16 sKeyzerOamFrame_83B47B0[] = {
    3,
    OAM_ENTRY(0, -3, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 294, 6, 0),
    OAM_ENTRY(-9, 0, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 404, 7, 0),
    OAM_ENTRY(-9, -8, ATTR0_WIDE, ATTR1_16x8 | ATTR1_HFLIP, 324, 7, 0),
};

const AnimationFrame sKeyzerOam_83B47C4[] = {
    { sKeyzerOamFrame_83B4554, 10 },
    { sKeyzerOamFrame_83B4562, 10 },
    { sKeyzerOamFrame_83B4570, 10 },
    { sKeyzerOamFrame_83B457E, 10 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B47EC[] = {
    { sKeyzerOamFrame_83B46AA, 10 },
    { sKeyzerOamFrame_83B46B8, 10 },
    { sKeyzerOamFrame_83B46C6, 10 },
    { sKeyzerOamFrame_83B46D4, 10 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B4814[] = {
    { sKeyzerOamFrame_83B4554, 1 },
    { sKeyzerOamFrame_83B4614, 6 },
    { sKeyzerOamFrame_83B4622, 1 },
    { sKeyzerOamFrame_83B463E, 2 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B483C[] = {
    { sKeyzerOamFrame_83B46AA, 1 },
    { sKeyzerOamFrame_83B474A, 6 },
    { sKeyzerOamFrame_83B4758, 1 },
    { sKeyzerOamFrame_83B464C, 2 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B4864[] = {
    { sKeyzerOamFrame_83B463E, 10 },
    { sKeyzerOamFrame_83B45FC, 10 },
    { sKeyzerOamFrame_83B464C, 10 },
    { sKeyzerOamFrame_83B460C, 10 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B488C[] = {
    { sKeyzerOamFrame_83B463E, 3 },
    { sKeyzerOamFrame_83B4622, 1 },
    { sKeyzerOamFrame_83B4614, 6 },
    { sKeyzerOamFrame_83B457E, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B48B4[] = {
    { sKeyzerOamFrame_83B464C, 3 },
    { sKeyzerOamFrame_83B4758, 1 },
    { sKeyzerOamFrame_83B474A, 6 },
    { sKeyzerOamFrame_83B46D4, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B48DC[] = {
    { sKeyzerOamFrame_83B4554, 1 },
    { sKeyzerIdleOam_Frame6, 10 },
    { sKeyzerOamFrame_83B4630, 6 },
    { sKeyzerOamFrame_83B46D4, 8 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B4904[] = {
    { sKeyzerOamFrame_83B46AA, 1 },
    { sKeyzerOamFrame_83B4788, 10 },
    { sKeyzerOamFrame_83B4766, 6 },
    { sKeyzerOamFrame_83B457E, 8 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerIdleOam[] = {
    { sKeyzerIdleOam_Frame1, 13 },
    { sKeyzerIdleOam_Frame2, 13 },
    { sKeyzerIdleOam_Frame3, 13 },
    { sKeyzerIdleOam_Frame4, 13 },
    { sKeyzerIdleOam_Frame5, 13 },
    { sKeyzerIdleOam_Frame6, 13 },
    { sKeyzerIdleOam_Frame7, 13 },
    { sKeyzerIdleOam_Frame8, 13 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B4974[] = {
    { sKeyzerOamFrame_83B46E2, 13 },
    { sKeyzerOamFrame_83B46FC, 13 },
    { sKeyzerOamFrame_83B4716, 13 },
    { sKeyzerOamFrame_83B4730, 13 },
    { sKeyzerOamFrame_83B4774, 13 },
    { sKeyzerOamFrame_83B4788, 13 },
    { sKeyzerOamFrame_83B479C, 13 },
    { sKeyzerOamFrame_83B47B0, 13 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B49BC[] = {
    { sKeyzerIdleOam_Frame5, 6 },
    { sKeyzerOamFrame_83B4562, 6 },
    { sKeyzerIdleOam_Frame7, 6 },
    { sKeyzerOamFrame_83B457E, 6 },
    { sKeyzerIdleOam_Frame6, 6 },
    { sKeyzerOamFrame_83B4554, 6 },
    { sKeyzerIdleOam_Frame8, 6 },
    { sKeyzerOamFrame_83B4570, 6 },
    ANIMATION_TERMINATOR
};
const AnimationFrame sKeyzerOam_83B4A04[] = {
    { sKeyzerOamFrame_83B4774, 6 },
    { sKeyzerOamFrame_83B46B8, 6 },
    { sKeyzerOamFrame_83B479C, 6 },
    { sKeyzerOamFrame_83B46D4, 6 },
    { sKeyzerOamFrame_83B4788, 6 },
    { sKeyzerOamFrame_83B46AA, 6 },
    { sKeyzerOamFrame_83B47B0, 6 },
    { sKeyzerOamFrame_83B46C6, 6 },
    ANIMATION_TERMINATOR
};


const s16 sKeyzerFloatYVelocity[] = {
    0, 0, 0, 0, 0, 0, -1, -1, -1, -2, -2, -3, -2, -2, -1, -1, -1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 3, 2, 2, 1, 1, 1, 0, 0, 0,
    S16_MAX
};


void Keyzer_Init() {
    if (gCollectedKeyzer) {
        gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
        gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
    } else {
        gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_3;
        gCurrentSprite.warioInteractionFlags = 6;
        gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
        gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS;
        gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS * 3 / 2;
        gCurrentSprite.hitboxExtentUp = HALF_BLOCK_SIZE;
        gCurrentSprite.hitboxExtentDown = QUARTER_BLOCK_SIZE + PIXEL_SIZE;
        gCurrentSprite.hitboxExtentLeft = HALF_BLOCK_SIZE;
        gCurrentSprite.hitboxExtentRight = HALF_BLOCK_SIZE - PIXEL_SIZE;
        gCurrentSprite.pOamData = sKeyzerIdleOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = POSE_10;
        gCurrentSprite.work3 = 0;
        gCurrentSprite.yPosition -= BLOCK_SIZE;
        gCurrentSprite.xPosition -= HALF_BLOCK_SIZE;
    }
}

void Keyzer_Collect() {
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
    gCollectedKeyzer = 1;
    if (gWarioData.reaction == REACT_WATER) {
        Sound_Play(SE_GET_KEYZER_UNDERWATER);
    } else {
        Sound_Play(SE_GET_KEYZER);
    }
    Sprite_SpawnSecondary(gCurrentSprite.yPosition, gCurrentSprite.xPosition, SSPRITE_KEYZER);
    VoiceSet_Play(VS_WARIO_KEYZER_GET);
}

void SpriteAI_Keyzer(void) {
    s16 yVelocity;
    u8 frame;

    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Keyzer_Init();
            break;

        case POSE_31:
            Keyzer_Collect();
        default:
            frame = gCurrentSprite.work3;
            yVelocity = sKeyzerFloatYVelocity[frame];
            if (yVelocity == S16_MAX) {
                yVelocity = sKeyzerFloatYVelocity[0];
                frame = 0;
            }
            gCurrentSprite.work3 = frame + DELTA_TIME;
            gCurrentSprite.yPosition += yVelocity;
            break;
    }

    if (gCurrentSprite.statusBits == SPRITE_STATUS_NONE) {
        return;
    }

    func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_3000A51 & 15) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_HIDDEN;
    } else {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    }
}
