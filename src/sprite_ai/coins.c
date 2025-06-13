#include "clipdata.h"
#include "game_state.h"
#include "in_game.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "score.h"
#include "types.h"
#include "voice_set.h"
#include "wario.h"


extern const u8 sCoin500PointsOamData[];
extern const u8 sCoin100PointsOamData[];
extern const u8 sCoin50PointsOamData[];
extern const u8 sCoin10PointsOamData[];
extern const u8 sDiamondOamData[];
extern const u8 sLittleHeartOamData[];
extern const s16 sDiamondFloatYVelocity[];


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
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_2;

    gCurrentSprite.disableWarioInteraction = 15;
    gCurrentSprite.warioInteractionFlags = 6;
    gCurrentSprite.yPosition -= 3 * EIGHTH_BLOCK_SIZE;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;

    if (gWarioData.damageTimer) {
        if (gWarioData.unk_0E & 0x10) {
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
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_2;
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
            gCurrentSprite.statusBits = gCurrentSprite.statusBits ^ SPRITE_STATUS_2;
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
