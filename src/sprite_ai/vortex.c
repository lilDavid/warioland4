#include "autosave.h"
#include "fixed_point.h"
#include "game_state.h"
#include "in_game.h"
#include "oam.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "sprite_wario_interaction.h"
#include "stage_items.h"
#include "stage_transition.h"
#include "types.h"
#include "wario.h"
#include "voice_set.h"


const u16 sVortexLargePartOam_Frame1[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 512, 8, 0),
};
const u16 sVortexMediumPartOam_Frame1[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 520, 8, 0),
};
const u16 sVortexSmallPartOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 528, 8, 0),
};
const u16 sVortexWarioOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 532, 9, 0),
};
const u16 sVortexKeyzerOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 536, 10, 0),
};

const struct AnimationFrame sVortexLargePartOam[] = {
    { sVortexLargePartOam_Frame1, 200 },
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sVortexMediumPartOam[] = {
    { sVortexMediumPartOam_Frame1, 200 },
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sVortexSmallPartOam[] = {
    { sVortexSmallPartOam_Frame1, 200 },
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sVortexWarioOam[] = {
    { sVortexWarioOam_Frame1, 200 },
    ANIMATION_TERMINATOR
};
const struct AnimationFrame sVortexKeyzerOam[] = {
    { sVortexKeyzerOam_Frame1, 200 },
    ANIMATION_TERMINATOR
};


const u16 sVortexPal[] = {
    #include "data/sprites/Vortex.pal.inc"
};


void Vortex_SetCommonProperties(void) {
    gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_7 | SPRITE_STATUS_3;
    gCurrentSprite.drawPriority |= 0x80;
    gCurrentSprite.hitboxExtentUp = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = PIXEL_SIZE;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work3 = 0;
}

void Vortex_InitSmallPart(void) {
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.pOamData = sVortexSmallPartOam;
    Vortex_SetCommonProperties();
}

void Vortex_InitMediumPart(void) {
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.pOamData = sVortexMediumPartOam;
    Vortex_SetCommonProperties();
}

void Vortex_InitLargePart(void) {
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = 2 * BLOCK_SIZE_PIXELS;
    gCurrentSprite.pOamData = sVortexLargePartOam;
    Vortex_SetCommonProperties();
}

void Vortex_FinishStage(void) {
    gCurrentSprite.pose = POSE_32;
    gDisableWario = 1;
    gWarioPauseTimer = CONVERT_SECONDS(16.0 + 2.0 / 3.0);
    gUnk_3000C03 = 2;
    Autosave_StageClear();
    func_801E430(PSPRITE_WARIO_ENTERING_VORTEX, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
            gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    gUnk_3000C0E = 1;
    gUnk_3000C26 = gCurrentSprite.yPosition;
    gUnk_3000C28 = gCurrentSprite.xPosition;
    gUnk_3000C24 = gCurrentSprite.gfxSlot;
    func_801E4D4();
    VoiceSet_Play(VS_WARIO_KEYZER_GET);
}

void Vortex_AnimatePalette(void) {
    s32 destAddress;

    if (gUnk_3000C41 & 7 || gSubGameMode != 2) {
        return;
    }

    TIMER_COUNT_UP(gCurrentSprite.work3);
    if (gCurrentSprite.work3 >= 32) {
        gCurrentSprite.work3 = gUnk_3000C41 & 7;
    }

    destAddress = PLTT_ROW_SIZE * (gCurrentSprite.gfxSlot + 8);
    DmaCopy16(3, sVortexPal + 16 * gCurrentSprite.work3, OBJ_PLTT + destAddress, PLTT_ROW_SIZE);
}

void Vortex_InitWarioOrKeyzer(void) {
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.statusBits |= SPRITE_STATUS_10 | SPRITE_STATUS_7;
    gCurrentSprite.drawPriority |= 0x80;
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;
    gCurrentSprite.hitboxExtentUp = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = PIXEL_SIZE;
    gCurrentSprite.hitboxExtentRight = PIXEL_SIZE;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioInteractionFlags = 0;
    gCurrentSprite.pose = POSE_IDLE;
}

void SpriteAI_Vortex(void) {
    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = MAKE_PERSISTENT_DATA(POSE_INIT_1, PERSISTENT_STATUS_LOADED);
            gCurrentSprite.pose = POSE_11;
            gCurrentSprite.work0 = CONVERT_SECONDS(1.5);
            gCurrentSprite.work2 = U8_MAX;
            Vortex_InitSmallPart();
            Sprite_SpawnAsChild(PSPRITE_VORTEX_PART_MEDIUM, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_VORTEX_PART_LARGE, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_WARIO_EXITING_VORTEX, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            if (gCurrentSprite.globalID == PSPRITE_VORTEX_2) {
                Sprite_SpawnSecondary(SUBPIXELS_FROM_BLOCKS(8.25), BLOCK_SIZE, SSPRITE_51);
            }
            break;

        case POSE_11:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_12;
            }
            break;

        case POSE_12:
            if (gCurrentSprite.work2 <= 0x40) {
                gCurrentSprite.pose = POSE_18;
                gCurrentSprite.work2 = 0x40;
            } else if (gCurrentSprite.work2 <= 0x80) {
                gCurrentSprite.work2 -= 4;
            } else {
                gCurrentSprite.work2 -= 2;
            }
            break;

        case POSE_INIT_1:
            if (gUnk_3000C0D) {
                gCurrentSprite.work2 = U8_MAX;
                gCurrentSprite.pose = POSE_IDLE;
            } else {
                gCurrentSprite.work2 = 64;
                gCurrentSprite.pose = POSE_18;
            }
            Vortex_InitSmallPart();
            Sprite_SpawnAsChild(PSPRITE_VORTEX_PART_MEDIUM_2, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            Sprite_SpawnAsChild(PSPRITE_VORTEX_PART_LARGE_2, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            break;

        case POSE_18:
            if (gUnk_3000C0D) {
                gCurrentSprite.pose = POSE_14;
            }
            break;

        case POSE_14:
            if (gCurrentSprite.work2 >= U8_MAX) {
                gCurrentSprite.pose = POSE_IDLE;
                gCurrentSprite.work2 = U8_MAX;
            } else {
                gCurrentSprite.work2 += 1;
            }
            break;

        case POSE_IDLE:
            gCurrentSprite.disableWarioInteraction = 0;
            break;

        case POSE_31:
            Vortex_FinishStage();
            break;
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work1);
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    Vortex_AnimatePalette();
}

void SpriteAI_VortexPartMedium(void) {
    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Vortex_InitMediumPart();
            if (gCurrentSprite.globalID == PSPRITE_VORTEX_PART_MEDIUM) {
                gCurrentSprite.pose = POSE_11;
                gCurrentSprite.work0 = CONVERT_SECONDS(1.5);
                gCurrentSprite.work2 = U8_MAX;
            } else if (gCurrentSprite.globalID == PSPRITE_VORTEX_PART_MEDIUM_2) {
                if (gUnk_3000C0D) {
                    gCurrentSprite.work2 = U8_MAX;
                    gCurrentSprite.pose = POSE_IDLE;
                } else {
                    gCurrentSprite.work2 = 64;
                    gCurrentSprite.pose = POSE_18;
                }
            } else {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;

        case POSE_11:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_12;
            }
            break;

        case POSE_12:
            if (gCurrentSprite.work2 <= 0x40) {
                gCurrentSprite.pose = POSE_18;
                gCurrentSprite.work2 = 0x40;
            } else if (gCurrentSprite.work2 <= 0x80) {
                gCurrentSprite.work2 -= 4;
            } else {
                gCurrentSprite.work2 -= 2;
            }
            break;

        case POSE_18:
            if (gUnk_3000C0D) {
                gCurrentSprite.pose = POSE_14;
            }
            break;

        case POSE_14:
            if (gCurrentSprite.work2 >= U8_MAX) {
                gCurrentSprite.pose = POSE_IDLE;
                gCurrentSprite.work2 = U8_MAX;
            } else {
                gCurrentSprite.work2 += 1;
            }
            break;
    }

    if ((gUnk_3000C41 & 1) != 0) {
        TIMER_COUNT_DOWN(gCurrentSprite.work1);
    }
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    Vortex_AnimatePalette();
}


void SpriteAI_VortexPartLarge(void) {
    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Vortex_InitLargePart();
            if (gCurrentSprite.globalID == PSPRITE_VORTEX_PART_LARGE) {
                gCurrentSprite.pose = POSE_11;
                gCurrentSprite.work0 = CONVERT_SECONDS(1.5);
                gCurrentSprite.work2 = U8_MAX;
            } else if (gCurrentSprite.globalID == PSPRITE_VORTEX_PART_LARGE_2) {
                if (gUnk_3000C0D) {
                    gCurrentSprite.work2 = U8_MAX;
                    gCurrentSprite.pose = POSE_IDLE;
                } else {
                    gCurrentSprite.work2 = 64;
                    gCurrentSprite.pose = POSE_18;
                }
            } else {
                gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            }
            break;

        case POSE_11:
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_12;
            }
            break;

        case POSE_12:
            if (gCurrentSprite.work2 <= 0x40) {
                gCurrentSprite.pose = POSE_18;
                gCurrentSprite.work2 = 0x40;
            } else if (gCurrentSprite.work2 <= 0x80) {
                gCurrentSprite.work2 -= 4;
            } else {
                gCurrentSprite.work2 -= 2;
            }
            break;

        case POSE_18:
            if (gUnk_3000C0D) {
                gCurrentSprite.pose = POSE_14;
            }
            break;

        case POSE_14:
            if (gCurrentSprite.work2 >= U8_MAX) {
                gCurrentSprite.pose = POSE_IDLE;
                gCurrentSprite.work2 = U8_MAX;
            } else {
                gCurrentSprite.work2 += 1;
            }
            break;
    }

    if ((gUnk_3000C41 & 3) == 0) {
        TIMER_COUNT_DOWN(gCurrentSprite.work1);
    }
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(gCurrentSprite.work2));
    Vortex_AnimatePalette();
}

void SpriteAI_WarioExitingVortex(void) {
    s32 scale;

    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Vortex_InitWarioOrKeyzer();
            gCurrentSprite.pOamData = sVortexWarioOam;
            gCurrentSprite.work0 = CONVERT_SECONDS(1.0);
            gCurrentSprite.work1 = -ANGLE_PI / 8;
            gCurrentSprite.work2 = 0x100 / 16;
            Sound_Play(SOUND_1CC);
            break;

        case POSE_IDLE:
            if (gCurrentSprite.work2) {
                gCurrentSprite.work2 += 4;
            }
            gCurrentSprite.work1 -= ANGLE_PI / 16;
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_32;
            }
            break;

        default:
            gDisableWario = FALSE;
            gWarioPauseTimer = 0;
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            break;
    }

    if (gCurrentSprite.work2 == 0) {
        scale = 0x100;
    } else {
        scale = gCurrentSprite.work2;
    }
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
}

void SpriteAI_WarioEnteringVortex(void) {
    s32 scale;

    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Vortex_InitWarioOrKeyzer();
            gCurrentSprite.pOamData = sVortexWarioOam;
            gCurrentSprite.work0 = CONVERT_SECONDS(1.0);
            gCurrentSprite.work1 = -ANGLE_PI / 8;
            gCurrentSprite.work2 = 0;
            break;

        case POSE_IDLE:
            if ((u8) (gCurrentSprite.work2 - 1) >= (0x100 / 16)) {
                gCurrentSprite.work2 -= 4;
            }
            gCurrentSprite.work1 -= ANGLE_PI / 16;
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_32;
            }
            break;

        default:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            if (gCollectedKeyzer != 1) {
                gSubGameMode = 6;
                gUnk_3000021 = 0;
                gUnk_3000048 = 2;
            }
            break;
    }

    if (gCurrentSprite.work2 == 0) {
        scale = 0x100;
    } else {
        scale = gCurrentSprite.work2;
    }
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
}

void SpriteAI_KeyzerEnteringVortex(void) {
    s32 scale;

    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Vortex_InitWarioOrKeyzer();
            gCurrentSprite.pOamData = sVortexKeyzerOam;
            gCurrentSprite.work0 = CONVERT_SECONDS(1.0);
            gCurrentSprite.work1 = -ANGLE_PI / 8;
            gCurrentSprite.work2 = 0;
            break;

        case POSE_IDLE:
            if ((u8) (gCurrentSprite.work2 - 1) >= (0x100 / 16)) {
                gCurrentSprite.work2 -= 4;
            }
            gCurrentSprite.work1 -= ANGLE_PI / 16;
            TIMER_COUNT_DOWN(gCurrentSprite.work0);
            if (gCurrentSprite.work0 == 0) {
                gCurrentSprite.pose = POSE_32;
            }
            break;

        default:
            gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
            if (gCollectedKeyzer == 1) {
                gSubGameMode = 6;
                gUnk_3000021 = 0;
                gUnk_3000048 = 2;
            }
            break;
    }

    if (gCurrentSprite.work2 == 0) {
        scale = 0x100;
    } else {
        scale = gCurrentSprite.work2;
    }
    gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(scale));
    gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(scale));
}
