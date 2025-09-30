#include "sprite_util.h"

#include "background_registers.h"
#include "block.h"
#include "color_effects.h"
#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_wario_interaction.h"
#include "wario.h"

const s16 sSpriteUtilFallingOffscreenYVelocity[] = {
    -28, -24, -20, -16, -12, -12, -8, -8, -4, -4, 0,  0,  0,  0,  0,  0,
    0,   4,   0,   4,   8,   8,   12, 8,  12, 12, 16, 16, 20, 24, 28, S16_MAX,
};

const s16 sSpriteUtilFallingOffscreenYVelocityHeavy[] = {
    -16, -12, -12, -12, -8, -8, -4, -4, -4, 0,  0,  4,  0,  4,  0,  4,
    8,   8,   8,   8,   8,  12, 12, 12, 16, 20, 24, 28, 32, 36, 40, S16_MAX,
};

const s16 sUnk_8352A28[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 6, 7, 8, 9, 10, 11, 12, S16_MAX,
};

const s16 sUnk_8352A68[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 8, 12, 12, 16, 16, 20, S16_MAX,
};

const s16 sUnk_8352AA2[] = {
    -8,
    -4,
    -4,
    0,
    S16_MAX,
};

const s16 sUnk_8352AAC[] = {
    -4,
    0,
    S16_MAX,
};

const u16 sUnk_8352AB2[] = {
    -12,
    -8,
    -8,
    -4,
    0,
    S16_MAX,
};

const u16 sUnk_8352ABE[] = {
    -8,
    -4,
    0,
    S16_MAX,
};

const u16 sUnk_8352AC6[] = {
    -16,
    -12,
    -12,
    -8,
    -4,
    0,
    S16_MAX,
};

const u16 sUnk_8352AD4[] = {
    -12,
    -8,
    0,
    S16_MAX,
};

const s16 sUnk_8352ADC[] = {
    4,
    4,
    4,
    4,
    4,
    4,
    8,
    8,
    8,
    12,
    12,
    12,
    12,
    12,
    16,
    S16_MAX,
};

const s16 sUnk_8352AFC[] = {
    2,
    4,
    6,
    8,
    8,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    18,
    S16_MAX,
};

const s16 sUnk_8352B18[] = {
    0,
    -20,
    -16,
    -12,
    -10,
    -8,
    -4,
    -2,
    0,
    S16_MAX,
};

const s16 sUnk_8352B2C[] = {
    0,
    0,
    0,
    -12,
    -10,
    -8,
    -4,
    -2,
    0,
    S16_MAX,
};

const s16 sUnk_8352B40[] = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    2,
    3,
    4,
    S16_MAX,
};

const s16 sSpriteUtilThrownForwardSoftYVelocity[] = {
    -4,
    0,
    4,
    4,
    4,
    8,
    8,
    8,
    8,
    12,
    12,
    12,
    12,
    12,
    16,
    S16_MAX,
};

const s16 sSpriteUtilThrownForwardSoftYVelocityHeavy[] = {
    -4,
    2,
    3,
    4,
    6,
    8,
    10,
    12,
    14,
    16,
    18,
    S16_MAX,
};

const u16 sSpriteUtilThrownForwardHardYVelocity[] = {
    -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 4, 4, 4, 8, 8, 8, 12, 12, 16, S16_MAX,
};

const u16 sSpriteUtilThrownForwardHardYVelocityHeavy[] = {
    -4, -4, 0, 0, 0, 0, 0, 0, 2, 4, 6, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, S16_MAX,
};

const u16 sSpriteUtilThrownUpSoftYVelocity[] = {
    -20, -20, -16, -16, -16, -16, -12, -12, -12, -12, -12, -12, -8, -8, -4, -4,
    0,   0,   0,   4,   4,   4,   8,   8,   8,   12,  12,  12,  16, 16, 20, S16_MAX,
};

const u16 sSpriteUtilThrownUpSoftYVelocityHeavy[] = {
    -16, -16, -12, -12, -10, -10, -8, -8, -4, -4, 0, 0, 0, 4, 4, 4, 8, 8, 12, 12, 12, 16, 16, 16, 20, S16_MAX,
};

const u16 sSpriteUtilThrownUpHardYVelocity[] = {
    -36, -36, -36, -32, -32, -28, -28, -24, -24, -20, -20, -20, -16, -16, -16, -12,
    -12, -12, -8,  -8,  -4,  0,   0,   0,   0,   4,   4,   8,   12,  16,  20,  S16_MAX,
};

const u16 sSpriteUtilThrownUpHardYVelocityHeavy[] = {
    -28, -24, -20, -20, -20, -16, -16, -16, -12, -12, -12, -12, -8, -8, -4,      -4,
    0,   0,   0,   4,   4,   8,   8,   12,  12,  16,  16,  20,  20, 24, S16_MAX,
};

void func_80238A4(void)
{
    if (gUnk_30000C8 > 0x39) {
        if (gUnk_3000BEC & 1) {
            gCurrentSprite.pose = POSE_33;
        } else {
            gCurrentSprite.pose = POSE_35;
        }
    } else if (gUnk_30000C8 > 0x29) {
        gCurrentSprite.pose = POSE_4B;
    }
}

void func_80238E8(void)
{
    if (gUnk_30000C8 > 0x29) {
        if (gUnk_3000BEC & 1) {
            gCurrentSprite.pose = POSE_33;
        } else {
            gCurrentSprite.pose = POSE_35;
        }
    }
}

void func_802391C(void)
{
    if (gUnk_30000C8 > 0x29) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.pose = POSE_35;
        } else {
            gCurrentSprite.pose = POSE_33;
        }
    }
}

u32 func_8023944(u16 y, u16 x)
{
    s32 temp;
    s32 tempX;
    s32 tempY;
    u16 result;

    temp = func_806D5C0(y, x);
    if (temp & 0x01000000) {
        gUnk_3000A50 = 0x11;
    } else {
        gUnk_3000A50 = 0;
    }

    temp &= 0xFF;
    switch (temp - 2) {
        case 1:
            tempY = y & 0xFFC0;
            tempX = (x & 0x3F) - 0x3F;
            result = tempY - tempX;
            gUnk_3000A50 = 5;
            break;

        case 4:
            tempY = y & 0xFFC0;
            tempX = ((x & 0x3F) >> 1) - 0x3F;
            result = tempY - tempX;
            gUnk_3000A50 = 3;
            break;

        case 5:
            tempY = 0xFFC0 & y;
            tempX = ((x & 0x3F) >> 1) - 0x1F;
            result = tempY - tempX;
            gUnk_3000A50 = 3;
            break;

        case 0:
            result = (y & 0xFFC0) | (0x3F & x);
            gUnk_3000A50 = 4;
            break;

        case 3:
            tempX = y & 0xFFC0;
            tempY = ((x & 0x3F) >> 1) + 0x1F;
            result = tempX | tempY;
            gUnk_3000A50 = 2;
            break;

        case 2:
            tempX = y & 0xFFC0;
            tempY = (x & 0x3F) >> 1;
            result = tempX | tempY;
            gUnk_3000A50 = 2;
            break;

        case 10:
            gUnk_3000A50 = 0x10;
        default:
            result = y & 0xFFC0;
            break;
    }
    return result;
}

u32 func_8023A60(u16 y, u16 x)
{
    s32 temp1;
    s32 tempX;
    s32 tempY;
    u8 temp2;
    u16 result;

    temp1 = func_806D5C0(y, x);
    if (temp1 & 0x01000000) {
        temp2 = 0x11;
    } else {
        temp2 = 0;
    }

    temp1 &= 0xFF;
    switch (temp1 - 2) {
        case 1:
            tempY = y & 0xFFC0;
            tempX = ((x & 0x3F) - 0x3F);
            result = tempY - tempX;
            temp2 = 5;
            break;

        case 4:
            tempY = y & 0xFFC0;
            tempX = ((x & 0x3F) >> 1) - 0x3F;
            result = tempY - tempX;
            temp2 = 3;
            break;

        case 5:
            tempY = y & 0xFFC0;
            tempX = ((x & 0x3F) >> 1) - 0x1F;
            result = tempY - tempX;
            temp2 = 3;
            break;

        case 0:
            tempY = y & 0xFFC0;
            tempX = x & 0x3F;
            result = tempY | tempX;
            temp2 = 4;
            break;

        case 3:
            tempY = y & 0xFFC0;
            tempX = ((x & 0x3F) >> 1) + 0x1F;
            result = tempY | tempX;
            temp2 = 2;
            break;

        case 2:
            tempY = y & 0xFFC0;
            tempX = (x & 0x3F) >> 1;
            result = tempY | tempX;
            temp2 = 2;
            break;

        case 10:
            temp2 = 0x10;
        default:
            result = y & 0xFFC0;
            break;
    }

    if (temp1 == 12) {
        if (y - result <= 25u) {
            gUnk_3000A50 = temp2;
        } else {
            gUnk_3000A50 = 0;
        }
    } else {
        if (y >= result) {
            gUnk_3000A50 = temp2;
        } else {
            gUnk_3000A50 = 0;
        }
    }
    return result;
}

void func_8023B88(void)
{
    u16 xPosition;
    u16 yPosition;
    u32 temp;

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;

    temp = func_8023944(yPosition - 4, xPosition);
    if ((gUnk_3000A50 & 0xF) > 1) {
        gCurrentSprite.yPosition = temp;
        return;
    }

    temp = func_8023944(yPosition, xPosition);
    if ((gUnk_3000A50 & 0xF) > 1) {
        gCurrentSprite.yPosition = temp;
        return;
    }

    temp = func_8023944(yPosition + 4, xPosition);
    if (gUnk_3000A50 != 0) {
        gCurrentSprite.yPosition = temp;
        return;
    }
}

void func_8023BFC(u16 y, u16 x)
{
    s32 temp1;
    s32 temp2;

    temp1 = func_806D5C0(y, x);
    temp2 = 0x01000000 & temp1;
    if (temp2 != 0) {
        gUnk_3000A51 = 0x11;
    } else {
        gUnk_3000A51 = temp2;
    }

    switch ((temp1 & 0xFF) - 2) {
        case 1:
            gUnk_3000A51 = 5;
            break;

        case 4:
            gUnk_3000A51 = 3;
            break;

        case 5:
            gUnk_3000A51 = 3;
            break;

        case 0:
            gUnk_3000A51 = 4;
            break;

        case 3:
            gUnk_3000A51 = 2;
            break;

        case 2:
            gUnk_3000A51 = 2;
            break;

        case 10:
            gUnk_3000A51 = 0x10;
            break;
    }
}

void func_8023C94(void)
{
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = POSE_1B;
        return;
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_IDLE_INIT;
    }
}

void func_8023CD8(void)
{
    func_80238E8();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = POSE_1D;
        return;
    }

    TIMER_COUNT_DOWN(gCurrentSprite.work0);
    if (gCurrentSprite.work0 == 0) {
        if (gCurrentSprite.xPosition > gWarioData.xPosition) {
            if (!(gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT)) {
                gCurrentSprite.pose = POSE_17;
            } else {
                gCurrentSprite.pose = POSE_11;
            }
        } else {
            if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
                gCurrentSprite.pose = POSE_17;
            } else {
                gCurrentSprite.pose = POSE_11;
            }
        }
    }
}

void func_8023D48(void)
{
    u32 temp;

    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = temp;
        gCurrentSprite.pose = POSE_17;
        return;
    }

    SpriteUtilLookupGravityByWeight(sUnk_8352A68, sUnk_8352A28);
}

void func_8023E00(void)
{
    u32 temp;

    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = temp;
        if (gCurrentSprite.xPosition > gWarioData.xPosition) {
            if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
                gCurrentSprite.pose = POSE_11;
            } else {
                gCurrentSprite.pose = POSE_17;
            }
        } else {
            if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
                gCurrentSprite.pose = POSE_17;
            } else {
                gCurrentSprite.pose = POSE_11;
            }
        }
        return;
    }

    SpriteUtilLookupGravityByWeight(sUnk_8352A68, sUnk_8352A28);
}

void func_8023EE0(void)
{
    u32 temp;

    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = temp;
        if (gCurrentSprite.xPosition > gWarioData.xPosition) {
            gCurrentSprite.pose = POSE_33;
        } else {
            gCurrentSprite.pose = POSE_35;
        }
        return;
    }

    SpriteUtilLookupGravityByWeight(sUnk_8352AFC, sUnk_8352ADC);
}

void func_8023FA8(void)
{
    u32 temp;

    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50) {
        gCurrentSprite.yPosition = temp;
        gCurrentSprite.pose = POSE_6C;
        return;
    }

    SpriteUtilLookupGravityByWeight(sUnk_8352AFC, sUnk_8352ADC);
}

void SpriteUtilFallOffscreenRight(void)
{
    gCurrentSprite.disableWarioInteraction = TRUE;
    gCurrentSprite.xPosition += gCurrentSprite.work2;
    SpriteUtilLookupGravityByWeight(sSpriteUtilFallingOffscreenYVelocityHeavy, sSpriteUtilFallingOffscreenYVelocity);
}

void SpriteUtilFallOffscreenLeft(void)
{
    gCurrentSprite.disableWarioInteraction = TRUE;
    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    SpriteUtilLookupGravityByWeight(sSpriteUtilFallingOffscreenYVelocityHeavy, sSpriteUtilFallingOffscreenYVelocity);
}

void func_8024180(void)
{
    TIMER_COUNT_UP(gCurrentSprite.work1);
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 < 4) {
            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2--;
            }
        } else {
            gCurrentSprite.work2--;
        }
        gCurrentSprite.pose = POSE_2D;
        m4aSongNumStart(SOUND_37);
        return;
    }

    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    func_8023B88();
    if (!(gUnk_3000A50 & 0xE)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2C)) {
            gCurrentSprite.pose = POSE_43;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 == 0) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 == 0) {
                gCurrentSprite.pose = POSE_47;
                return;
            }
        }
        if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
            if (!(gCurrentSprite.work1 & 1)) {
                gCurrentSprite.work2--;
            }
        } else {
            if (!(gCurrentSprite.work1 & 3)) {
                gCurrentSprite.work2--;
            }
        }
    } else if ((gUnk_3000A50 & 0xF1) == 1) {
        if (gCurrentSprite.pose != POSE_2C) {
            gCurrentSprite.pose = POSE_47;
        }
    } else {
        if (gCurrentSprite.work2 > 4) {
            gCurrentSprite.work2--;
            return;
        }
        gCurrentSprite.pose = POSE_45;
    }
}

void func_80242C8(void)
{
    gCurrentSprite.work1 += 1;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 < 4) {
            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2--;
            }
        } else {
            gCurrentSprite.work2--;
        }
        gCurrentSprite.pose = POSE_2B;
        m4aSongNumStart(SOUND_37);
        return;
    }

    gCurrentSprite.xPosition += gCurrentSprite.work2;
    func_8023B88();
    if (!(gUnk_3000A50 & 0xE)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2E)) {
            gCurrentSprite.pose = POSE_45;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51 == 0) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_3000A51 == 0) {
                gCurrentSprite.pose = POSE_49;
                return;
            }
        }
        if (0x20 & gCurrentSprite.statusBits) {
            if (!(gCurrentSprite.work1 & 1)) {
                gCurrentSprite.work2--;
            }
        } else {
            if (!(gCurrentSprite.work1 & 3)) {
                gCurrentSprite.work2--;
            }
        }
    } else if (!(0xF1 & gUnk_3000A50)) {
        if (gCurrentSprite.pose != POSE_2E) {
            gCurrentSprite.pose = POSE_49;
        }
    } else {
        if (gCurrentSprite.work2 > 4) {
            gCurrentSprite.work2--;
            return;
        }
        gCurrentSprite.pose = POSE_43;
    }
}

void SpriteUtilPushedLeft(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 2) {
        func_8024180();
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

void SpriteUtilPushedRight(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 2) {
        func_80242C8();
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_11;
    }
}

void func_8024478(void)
{
    func_80238E8();
    if (gCurrentSprite.work2 > 2) {
        func_8024180();
        return;
    }

    gCurrentSprite.pose = POSE_2F;
}

void func_802449C(void)
{
    func_80238E8();
    if (gCurrentSprite.work2 > 2) {
        func_80242C8();
        return;
    }

    gCurrentSprite.pose = POSE_2F;
}

void func_80244C0(void)
{
    gCurrentSprite.pose = POSE_30;
    gCurrentSprite.work0 = 0x50;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
}

void func_80244E0(void)
{
    func_80238E8();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = POSE_1D;
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = POSE_19;
    }
}

void SpriteUtilDieAfterDelay(void)
{
    gCurrentSprite.disableWarioInteraction = TRUE;
    if (--gCurrentSprite.work0 == 0) {
        gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
        SpriteSpawnSecondary(
            gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_ENEMY_KILLED_EFFECT
        );
    }
}

void SpriteUtilDie(void)
{
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
    SpriteSpawnSecondary(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition, SSPRITE_ENEMY_KILLED_EFFECT
    );
}

void func_8024570(void)
{
    u8 pose;

    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if ((gUnk_3000A51 == 0x11) ||
        (func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition),
         ((0xF & gUnk_3000A51) != 0))) {
        pose = POSE_45;
        m4aSongNumStart(SOUND_37);
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0) {
            return;
        }
        pose = POSE_43;
    }
    gCurrentSprite.pose = pose;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_DEAD;
}

void func_80245FC(void)
{
    u8 pose;

    gCurrentSprite.xPosition += gCurrentSprite.work2;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if ((gUnk_3000A51 == 0x11) ||
        (func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition),
         ((0xF & gUnk_3000A51) != 0))) {
        pose = POSE_43;
        m4aSongNumStart(SOUND_37);
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0) {
            return;
        }
        pose = POSE_45;
    }
    gCurrentSprite.pose = pose;
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_DEAD;
}

void func_8024688(void)
{
    gCurrentSprite.pose = POSE_38;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 1;
    } else {
        gCurrentSprite.work0 = 4;
    }
}

void func_80246B8(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352AAC, sUnk_8352AA2);
    func_8024570();
}

void func_802473C(void)
{
    gCurrentSprite.pose = POSE_3A;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 5;
    }
}

void func_802476C(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352ABE, sUnk_8352AB2);
    func_8024570();
}

void func_80247F0(void)
{
    gCurrentSprite.pose = POSE_3C;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 6;
    }
}

void func_8024820(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352AD4, sUnk_8352AC6);
    func_8024570();
}

void func_80248A4(void)
{
    gCurrentSprite.pose = POSE_3E;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 1;
    } else {
        gCurrentSprite.work0 = 4;
    }
}

void func_80248D4(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352AAC, sUnk_8352AA2);
    func_80245FC();
}

void func_8024958(void)
{
    gCurrentSprite.pose = POSE_40;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 5;
    }
}

void func_8024988(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352ABE, sUnk_8352AB2);
    func_80245FC();
}

void func_8024A0C(void)
{
    gCurrentSprite.pose = POSE_42;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 6;
    }
}

void func_8024A3C(void)
{
    SpriteUtilLookupGravityByWeight(sUnk_8352AD4, sUnk_8352AC6);
    func_80245FC();
}

void func_8024AC0(void)
{
    gCurrentSprite.pose = POSE_44;
    gCurrentSprite.work3 = 0;
}

void func_8024AD4(void)
{
    s16 yVelocity;
    u32 timer;
    u32 temp;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sUnk_8352AFC, sUnk_8352ADC);
    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }

    if (gUnk_3000A50 != 0) {
        gCurrentSprite.yPosition = temp;
        if (gCurrentSprite.work2 > 7) {
            gCurrentSprite.work2 -= 4;
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
        m4aSongNumStart(SOUND_36);
        return;
    }

    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if (gUnk_3000A51 == 0x11) {
        gCurrentSprite.pose = POSE_45;
        m4aSongNumStart(SOUND_37);
    }
}

void func_8024BEC(void)
{
    gCurrentSprite.pose = POSE_46;
    gCurrentSprite.work3 = 0;
}

void func_8024C00(void)
{
    s16 yVelocity;
    u32 timer;
    u32 temp;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sUnk_8352AFC, sUnk_8352ADC);
    gCurrentSprite.xPosition += gCurrentSprite.work2;
    temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
    }

    if (gUnk_3000A50 != 0) {
        gCurrentSprite.yPosition = temp;
        if (gCurrentSprite.work2 > 7) {
            gCurrentSprite.work2 -= 4;
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
        m4aSongNumStart(SOUND_36);
        return;
    }

    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if (gUnk_3000A51 == 0x11) {
        gCurrentSprite.pose = POSE_43;
        m4aSongNumStart(SOUND_37);
    }
}

void SpriteUtilLiftingSpriteRight(void)
{
    s32 clipCheck;
    u16 yPositionBackup;
    u16 xPositionBackup;

    clipCheck = 0;
    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentCarriedSprite.state) {
        case 4:
            if (gWarioData.unk_01 == 4) {
                gCurrentSprite.pose = POSE_33;
                gCurrentCarriedSprite.state = 0;
            } else {
                gCurrentSprite.pose = POSE_CARRIED_RIGHT;
                gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
                gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;
            }
            return;

        case 1:
        case 2:
        case 3:
            yPositionBackup = gCurrentSprite.yPosition;
            xPositionBackup = gCurrentSprite.xPosition;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
            );
            if (gUnk_3000A51 == 0x11) {
                clipCheck = 1;
            }
            func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
            if (gUnk_3000A51 == 0x11) {
                clipCheck = 2;
            }
            if (clipCheck == 0) {
                return;
            }

            gCurrentSprite.yPosition = yPositionBackup;
            gCurrentSprite.xPosition = xPositionBackup;
            if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
                gCurrentSprite.work2 = 6;
                gCurrentSprite.pose = POSE_47;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = 0;
                m4aSongNumStart(SOUND_37);
                return;
            }

            if (clipCheck == 2) {
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_47;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = 0;
                m4aSongNumStart(SOUND_37);
                return;
            }

            gCurrentSprite.pose = POSE_CARRIED_RIGHT_INIT;
            gCurrentCarriedSprite.unk1 = 1;
            gCurrentCarriedSprite.state = 4;
            sUnk_82DECA0[gWarioData.reaction](2);
            return;

        default:
            gCurrentSprite.pose = POSE_1D;
            return;
    }
}

void SpriteUtilLiftingSpriteLeft(void)
{
    s32 clipCheck;
    u16 yPositionBackup;
    u16 xPositionBackup;

    clipCheck = 0;
    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentCarriedSprite.state) {
        case 4:
            if (gWarioData.unk_01 == 4) {
                gCurrentSprite.pose = POSE_35;
                gCurrentCarriedSprite.state = 0;
            } else {
                gCurrentSprite.pose = POSE_CARRIED_LEFT;
                gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
                gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;
            }
            return;

        case 1:
        case 2:
        case 3:
            yPositionBackup = gCurrentSprite.yPosition;
            xPositionBackup = gCurrentSprite.xPosition;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
            );
            if (gUnk_3000A51 == 0x11) {
                clipCheck = 1;
            }
            func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
            if (gUnk_3000A51 == 0x11) {
                clipCheck = 2;
            }
            if (clipCheck == 0) {
                return;
            }

            gCurrentSprite.yPosition = yPositionBackup;
            gCurrentSprite.xPosition = xPositionBackup;
            if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
                gCurrentSprite.work2 = 6;
                gCurrentSprite.pose = POSE_49;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = 0;
                m4aSongNumStart(SOUND_37);
                return;
            }

            if (clipCheck == 2) {
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_49;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = 0;
                m4aSongNumStart(SOUND_37);
                return;
            }

            gCurrentSprite.pose = POSE_CARRIED_LEFT_INIT;
            gCurrentCarriedSprite.unk1 = 1;
            gCurrentCarriedSprite.state = 4;
            sUnk_82DECA0[gWarioData.reaction](2);
            return;

        default:
            gCurrentSprite.pose = POSE_1D;
            return;
    }
}

void SpriteUtilCarryingSpriteRight(void)
{
    u16 yPositionBackup;
    u16 xPositionBackup;
    u32 temp;

    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentCarriedSprite.state - 4) {
        case 0:
        case 4:
            gCurrentSprite.statusBits |= SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;
            if (gWarioData.horizontalDirection & DPAD_LEFT) {
                gCurrentSprite.statusBits ^= SPRITE_STATUS_FACING_RIGHT;
                gCurrentSprite.pose = POSE_CARRIED_LEFT;
                return;
            }

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_47;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
                return;
            }

            if (gWarioData.yVelocity >= 0) {
                func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
                if (!(0xF & gUnk_3000A51)) {
                    return;
                }
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_49;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
                return;
            }

            temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_30000A0.unk_02 == 1) {
                gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
            }
            if (!(0xF & gUnk_3000A50)) {
                return;
            }

            gCurrentSprite.yPosition = temp;
            gCurrentSprite.disableWarioInteraction = 0xF;
            gCurrentSprite.pose = POSE_37;
            gCurrentSprite.work2 = 4;
            gCurrentCarriedSprite.state = 0;
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            m4aSongNumStart(SOUND_36);
            return;

        case 1:
        case 2:
        case 3:
        case 5:
        case 6:
        case 7:
            if (gWarioData.horizontalDirection & DPAD_LEFT) {
                gCurrentSprite.statusBits ^= SPRITE_STATUS_FACING_RIGHT;
                gCurrentSprite.pose = POSE_CARRIED_LEFT;
            }
            yPositionBackup = gCurrentSprite.yPosition;
            xPositionBackup = gCurrentSprite.xPosition;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.yPosition = yPositionBackup;
                gCurrentSprite.xPosition = xPositionBackup;
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_49;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                func_801E4B0();
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
            }
            return;

        case 8:
            gCurrentSprite.disableWarioInteraction = 0x1F;
            gCurrentSprite.work0 = 0;
            gCurrentSprite.work3 = 0;
            if (gCurrentCarriedSprite.unk1 & 0x80) {
                gCurrentSprite.work2 = 4;
                if (gWarioData.unk_01 == 0x25) {
                    gCurrentSprite.pose = POSE_THROWN_UP_RIGHT_HARD_INIT;
                } else {
                    gCurrentSprite.pose = POSE_THROWN_UP_RIGHT_SOFT_INIT;
                }
                return;
            }

            if (gWarioData.unk_01 == 0x25) {
                gCurrentSprite.pose = POSE_THROWN_RIGHT_HARD_INIT;
                if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
                    gCurrentSprite.work2 = 0x10;
                } else {
                    gCurrentSprite.work2 = 0x1B;
                }
                return;
            }

            gCurrentSprite.work2 = 0xC;
            gCurrentSprite.pose = POSE_THROWN_RIGHT_SOFT_INIT;
            return;

        default:
            if (gWarioData.unk_01 == 5) {
                gCurrentSprite.pose = POSE_49;
            } else {
                gCurrentSprite.pose = POSE_1D;
            }
            gCurrentSprite.disableWarioInteraction = 0xF;
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            return;
    }
}

void SpriteUtilCarryingSpriteLeft(void)
{
    u16 yPositionBackup;
    u16 xPositionBackup;
    u32 temp;

    gCurrentSprite.disableWarioInteraction = 1;
    switch (gCurrentCarriedSprite.state - 4) {
        case 0:
        case 4:
            gCurrentSprite.statusBits |= SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;
            if (gWarioData.horizontalDirection & DPAD_RIGHT) {
                gCurrentSprite.statusBits ^= SPRITE_STATUS_FACING_RIGHT;
                gCurrentSprite.pose = POSE_CARRIED_RIGHT;
                return;
            }

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_49;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
                return;
            }

            if (gWarioData.yVelocity >= 0) {
                func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
                if (!(0xF & gUnk_3000A51)) {
                    return;
                }
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_47;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
                return;
            }

            temp = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_30000A0.unk_02 == 1) {
                gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
            }
            if (!(0xF & gUnk_3000A50)) {
                return;
            }

            gCurrentSprite.yPosition = temp;
            gCurrentSprite.disableWarioInteraction = 0xF;
            gCurrentSprite.pose = POSE_3D;
            gCurrentSprite.work2 = 4;
            gCurrentCarriedSprite.state = 0;
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            m4aSongNumStart(SOUND_36);
            return;

        case 1:
        case 2:
        case 3:
        case 5:
        case 6:
        case 7:
            if (gWarioData.horizontalDirection & DPAD_RIGHT) {
                gCurrentSprite.statusBits ^= SPRITE_STATUS_FACING_RIGHT;
                gCurrentSprite.pose = POSE_CARRIED_RIGHT;
            }
            yPositionBackup = gCurrentSprite.yPosition;
            xPositionBackup = gCurrentSprite.xPosition;
            gCurrentSprite.yPosition = gWarioData.yPosition + gCurrentCarriedSprite.yOffset;
            gCurrentSprite.xPosition = gWarioData.xPosition + gCurrentCarriedSprite.xOffset;

            func_8023BFC(
                gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
            );
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.yPosition = yPositionBackup;
                gCurrentSprite.xPosition = xPositionBackup;
                gCurrentSprite.work2 = 8;
                gCurrentSprite.pose = POSE_47;
                gCurrentSprite.disableWarioInteraction = 0x1F;
                func_801E4B0();
                gCurrentCarriedSprite.state = SPRITE_STATUS_NONE;
                gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
                m4aSongNumStart(SOUND_37);
            }
            return;

        case 8:
            gCurrentSprite.disableWarioInteraction = 0x1F;
            gCurrentSprite.work0 = 0;
            gCurrentSprite.work3 = 0;
            if (gCurrentCarriedSprite.unk1 & 0x80) {
                gCurrentSprite.work2 = 4;
                if (gWarioData.unk_01 == 0x25) {
                    gCurrentSprite.pose = POSE_THROWN_UP_LEFT_HARD_INIT;
                } else {
                    gCurrentSprite.pose = POSE_THROWN_UP_LEFT_SOFT_INIT;
                }
                return;
            }

            if (gWarioData.unk_01 == 0x25) {
                gCurrentSprite.pose = POSE_THROWN_LEFT_HARD_INIT;
                if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
                    gCurrentSprite.work2 = 0x10;
                } else {
                    gCurrentSprite.work2 = 0x1B;
                }
                return;
            }

            gCurrentSprite.work2 = 0xC;
            gCurrentSprite.pose = POSE_THROWN_LEFT_SOFT_INIT;
            return;

        default:
            if (gWarioData.unk_01 == 5) {
                gCurrentSprite.pose = POSE_47;
            } else {
                gCurrentSprite.pose = POSE_1D;
            }
            gCurrentSprite.disableWarioInteraction = 0xF;
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            return;
    }
}

void func_80254E8(void)
{
    u32 temp;

    if (gCurrentSprite.work0 != 0) {
        gUnk_3000028 = 1;
        temp = func_8023A60(gCurrentSprite.yPosition - PIXEL_SIZE, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1) {
            gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
        }
        if (gUnk_3000A50 != 0) {
            func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition);
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.xPosition += gCurrentSprite.hitboxExtentLeft;
            } else {
                gCurrentSprite.yPosition = temp;
                if (gCurrentSprite.work2 > 0xF) {
                    gCurrentSprite.work2 = gCurrentSprite.work2 >> 1;
                } else if (gCurrentSprite.work2 > 7) {
                    gCurrentSprite.work2 = gCurrentSprite.work2 - 4;
                }
                gCurrentSprite.pose = POSE_39;
                m4aSongNumStart(SOUND_36);
                return;
            }
        }
    }

    gUnk_3000028 = 1;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if (gUnk_3000A51 == 0x11) {
        if ((gCurrentSprite.pose == POSE_THROWN_LEFT_SOFT) || (gCurrentSprite.pose == POSE_THROWN_UP_LEFT_SOFT) ||
            (gCurrentSprite.work0 == 2)) {
            gCurrentSprite.pose = POSE_49;
            m4aSongNumStart(SOUND_37);
        } else {
            gCurrentSprite.pose = POSE_6B;
        }
        return;
    }

    gUnk_3000028 = 1;
    func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
    if (0xF & gUnk_3000A51) {
        if ((gCurrentSprite.pose == POSE_THROWN_LEFT_HARD) || (gCurrentSprite.pose == POSE_THROWN_UP_LEFT_HARD)) {
            gCurrentSprite.pose = POSE_6B;
        } else {
            gCurrentSprite.pose = POSE_47;
            m4aSongNumStart(SOUND_37);
        }
        return;
    }

    gCurrentSprite.xPosition -= gCurrentSprite.work2;
}

void SpriteUtilThrownLeftSoft(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(
        sSpriteUtilThrownForwardSoftYVelocityHeavy, sSpriteUtilThrownForwardSoftYVelocity
    );
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80254E8();
}

void SpriteUtilThrownLeftHard(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(
        sSpriteUtilThrownForwardHardYVelocityHeavy, sSpriteUtilThrownForwardHardYVelocity
    );
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80254E8();
}

void SpriteUtilThrownUpLeftSoft(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sSpriteUtilThrownUpSoftYVelocityHeavy, sSpriteUtilThrownUpSoftYVelocity);
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80254E8();
}

void SpriteUtilThrownUpLeftHard(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sSpriteUtilThrownUpHardYVelocityHeavy, sSpriteUtilThrownUpHardYVelocity);
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80254E8();
}

void func_80258B4(void)
{
    u32 temp;

    if (gCurrentSprite.work0 != 0) {
        gUnk_3000028 = 1;
        temp = func_8023A60(gCurrentSprite.yPosition - PIXEL_SIZE, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1) {
            gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
        }
        if (gUnk_3000A50 != 0) {
            func_8023BFC(gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition);
            if (gUnk_3000A51 == 0x11) {
                gCurrentSprite.xPosition -= gCurrentSprite.hitboxExtentRight;
            } else {
                gCurrentSprite.yPosition = temp;
                if (gCurrentSprite.work2 > 0xF) {
                    gCurrentSprite.work2 = gCurrentSprite.work2 >> 1;
                } else if (gCurrentSprite.work2 > 7) {
                    gCurrentSprite.work2 = gCurrentSprite.work2 - 4;
                }
                gCurrentSprite.pose = POSE_3F;
                m4aSongNumStart(SOUND_36);
                return;
            }
        }
    }

    gUnk_3000028 = 1;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if (gUnk_3000A51 == 0x11) {
        if ((gCurrentSprite.pose == POSE_THROWN_RIGHT_SOFT) || (gCurrentSprite.pose == POSE_THROWN_UP_RIGHT_SOFT) ||
            (gCurrentSprite.work0 == 2)) {
            gCurrentSprite.pose = POSE_47;
            m4aSongNumStart(SOUND_37);
        } else {
            gCurrentSprite.pose = POSE_6B;
        }
        return;
    }

    gUnk_3000028 = 1;
    func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
    if (0xF & gUnk_3000A51) {
        if ((gCurrentSprite.pose == POSE_THROWN_RIGHT_HARD) || (gCurrentSprite.pose == POSE_THROWN_UP_RIGHT_HARD)) {
            gCurrentSprite.pose = POSE_6B;
        } else {
            gCurrentSprite.pose = POSE_49;
            m4aSongNumStart(SOUND_37);
        }
        return;
    }

    gCurrentSprite.xPosition += gCurrentSprite.work2;
}

void SpriteUtilThrownRightSoft(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(
        sSpriteUtilThrownForwardSoftYVelocityHeavy, sSpriteUtilThrownForwardSoftYVelocity
    );
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80258B4();
}

void SpriteUtilThrownRightHard(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(
        sSpriteUtilThrownForwardHardYVelocityHeavy, sSpriteUtilThrownForwardHardYVelocity
    );
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80258B4();
}

void SpriteUtilThrownUpRightSoft(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sSpriteUtilThrownUpSoftYVelocityHeavy, sSpriteUtilThrownUpSoftYVelocity);
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80258B4();
}

void SpriteUtilThrownUpRightHard(void)
{
    s16 yVelocity;
    u32 timer;

    SPRITE_UTIL_LOOKUP_GRAVITY_BY_WEIGHT(sSpriteUtilThrownUpHardYVelocityHeavy, sSpriteUtilThrownUpHardYVelocity);
    if (yVelocity == 0) {
        gCurrentSprite.work0 = 1;
    } else if (yVelocity > 0) {
        gCurrentSprite.work0 = 2;
    } else {
        gCurrentSprite.work0 = 0;
    }
    func_80258B4();
}

void func_8025C80(void)
{
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if (gUnk_3000A51 != 0x11) {
        gCurrentSprite.xPosition += gCurrentSprite.work2;
        func_8023B88();
        if (!(0xE & gUnk_3000A50)) {
            if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2E)) {
                gCurrentSprite.pose = POSE_45;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 == 0) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (gUnk_3000A51 == 0) {
                    gCurrentSprite.pose = POSE_49;
                }
            }
        } else if (0xF1 & gUnk_3000A50) {
            gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
        }
    } else {
        gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
    }
}

void func_8025D34(void)
{
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if (gUnk_3000A51 != 0x11) {
        gCurrentSprite.xPosition -= gCurrentSprite.work2;
        func_8023B88();
        if (!(0xE & gUnk_3000A50)) {
            if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2C)) {
                gCurrentSprite.pose = POSE_43;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_3000A51 == 0) {
                func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (gUnk_3000A51 == 0) {
                    gCurrentSprite.pose = POSE_47;
                }
            }
        } else if ((0xF1 & gUnk_3000A50) != 1) {
            gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
        }
    } else {
        gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
    }
}

void func_8025DE8(void)
{
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
    );
    if (gUnk_3000A51 == 0x11) {
        gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
        return;
    }

    gCurrentSprite.xPosition += gCurrentSprite.work2;
    func_8023B88();
    if (!(0xE & gUnk_3000A50)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2E)) {
            gCurrentSprite.pose = POSE_45;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51) {
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51) {
            return;
        }
        gCurrentSprite.pose = POSE_49;
    }
}

void func_8025E98(void)
{
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
    );
    if (gUnk_3000A51 == 0x11) {
        gCurrentSprite.pose = POSE_CRUSHED_OR_COLLECTED_INIT;
        return;
    }

    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    func_8023B88();
    if (!(0xE & gUnk_3000A50)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2C)) {
            gCurrentSprite.pose = POSE_43;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51) {
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51) {
            return;
        }
        gCurrentSprite.pose = POSE_47;
    }
}

void func_8025F48(void)
{
    gCurrentSprite.work0 += 1;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - (BLOCK_SIZE - EIGHTH_BLOCK_SIZE)
    );
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 > 3) {
            gCurrentSprite.work2 -= 1;
        }
        func_8023BFC(
            gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + (BLOCK_SIZE - EIGHTH_BLOCK_SIZE)
        );
        if (gUnk_3000A51 == 0x11) {
            gCurrentSprite.work2 = 0;
            gCurrentSprite.pose = POSE_2F;
        } else {
            gCurrentSprite.pose = POSE_2D;
        }
        m4aSongNumStart(SOUND_37);
        return;
    }

    gCurrentSprite.xPosition -= gCurrentSprite.work2;
    func_8023B88();
    if (!(0xE & gUnk_3000A50)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2C)) {
            gCurrentSprite.pose = POSE_43;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 == 0) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 == 0) {
                gCurrentSprite.pose = POSE_47;
                return;
            }
        }
        if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
            if (!(gCurrentSprite.work0 & 1)) {
                gCurrentSprite.work2 -= 1;
            }
        } else {
            if (!(gCurrentSprite.work0 & 3)) {
                gCurrentSprite.work2 -= 1;
            }
        }
    } else if ((0xF1 & gUnk_3000A50) == 1) {
        if (gCurrentSprite.pose != POSE_2C) {
            gCurrentSprite.pose = POSE_47;
        }
    } else {
        if (gCurrentSprite.work2 > 4U) {
            gCurrentSprite.work2 -= 1;
            return;
        }
        gCurrentSprite.pose = POSE_45;
    }
}

void func_802608C(void)
{
    gCurrentSprite.work0 += 1;
    func_8023BFC(
        gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition + (BLOCK_SIZE - EIGHTH_BLOCK_SIZE)
    );
    if (gUnk_3000A51 == 0x11) {
        if (gCurrentSprite.work2 > 3) {
            gCurrentSprite.work2 -= 1;
        }
        func_8023BFC(
            gCurrentSprite.yPosition - HALF_BLOCK_SIZE, gCurrentSprite.xPosition - (BLOCK_SIZE - EIGHTH_BLOCK_SIZE)
        );
        if (gUnk_3000A51 == 0x11) {
            gCurrentSprite.work2 = 0;
            gCurrentSprite.pose = POSE_2F;
        } else {
            gCurrentSprite.pose = POSE_2B;
        }
        m4aSongNumStart(SOUND_37);
        return;
    }

    gCurrentSprite.xPosition += gCurrentSprite.work2;
    func_8023B88();
    if (!(0xE & gUnk_3000A50)) {
        if ((gUnk_3000A50 == 0) && (gCurrentSprite.pose == POSE_2E)) {
            gCurrentSprite.pose = POSE_45;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51 == 0) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_3000A51 == 0) {
                gCurrentSprite.pose = POSE_49;
                return;
            }
        }
        if (gCurrentSprite.statusBits & SPRITE_STATUS_HEAVY) {
            if (!(gCurrentSprite.work0 & 1)) {
                gCurrentSprite.work2 -= 1;
            }
        } else {
            if (!(gCurrentSprite.work0 & 3)) {
                gCurrentSprite.work2 -= 1;
            }
        }
    } else if ((0xF1 & gUnk_3000A50) == 0) {
        if (gCurrentSprite.pose != POSE_2E) {
            gCurrentSprite.pose = POSE_49;
        }
    } else {
        if (gCurrentSprite.work2 > 4U) {
            gCurrentSprite.work2 -= 1;
            return;
        }
        gCurrentSprite.pose = POSE_43;
    }
}

u32 SpriteUtilFindParentSlot(u8 parentId)
{
    s32 i;
    u8 roomSlot;

    roomSlot = gCurrentSprite.roomSlot;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].roomSlot == roomSlot && gSpriteData[i].globalID == parentId &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            return i;
        }
    }
    return MAX_SPRITE_COUNT;
}

u32 SpriteUtilWaitCheckWarioNearbyLeftRight(s32 maxDY, s32 maxDX)
{
    u16 spriteX;
    u16 spriteY;
    u16 warioX;
    u16 warioY;
    u32 result;

    result = NS_OUT_OF_RANGE;
    if (gCurrentSprite.work1 != 0) {
        gCurrentSprite.work1 -= 1;
        return NS_OUT_OF_RANGE;
    }

    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    spriteY = gCurrentSprite.yPosition;
    spriteX = gCurrentSprite.xPosition;

    if (spriteY > warioY) {
        if (spriteY - warioY >= maxDY) {
            return NS_OUT_OF_RANGE;
        }
    } else if (warioY - spriteY >= maxDY) {
        return NS_OUT_OF_RANGE;
    }

    if (spriteX > warioX) {
        if (spriteX - warioX < maxDX) {
            result = NS_LEFT;
        }
    } else if (warioX - spriteX < maxDX) {
        result = NS_RIGHT;
    }
    return result;
}

u32 SpriteUtilCheckWarioNearbyLeftRight(s32 maxDY, s32 maxDX)
{
    u16 spriteX;
    u16 spriteY;
    u16 warioX;
    u16 warioY;
    u32 result;

    result = NS_OUT_OF_RANGE;
    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    spriteY = gCurrentSprite.yPosition;
    spriteX = gCurrentSprite.xPosition;

    if (spriteY > warioY) {
        if (spriteY - warioY >= maxDY) {
            return NS_OUT_OF_RANGE;
        }
    } else if (warioY - spriteY >= maxDY) {
        return NS_OUT_OF_RANGE;
    }

    if (spriteX > warioX) {
        if (spriteX - warioX < maxDX) {
            result = NS_LEFT;
        }
    } else if (warioX - spriteX < maxDX) {
        result = NS_RIGHT;
    }
    return result;
}

u32 SpriteUtilCheckWarioNearbyAboveBelow(s32 maxDY, s32 maxDX)
{
    u16 spriteX;
    u16 spriteY;
    u16 warioX;
    u16 warioY;
    u32 result;

    result = NS_OUT_OF_RANGE;
    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    spriteY = gCurrentSprite.yPosition;
    spriteX = gCurrentSprite.xPosition;

    if (spriteX > warioX) {
        if (spriteX - warioX >= maxDX) {
            return NS_OUT_OF_RANGE;
        }
    } else if (warioX - spriteX >= maxDX) {
        return NS_OUT_OF_RANGE;
    }

    if (spriteY > warioY) {
        if (spriteY - warioY < maxDY) {
            result = NS_ABOVE;
        }
    } else if (warioY - spriteY < maxDY) {
        result = NS_BELOW;
    }
    return result;
}

void SpriteUtilTurnTowardWario(void)
{
    if (gCurrentSprite.xPosition > gWarioData.xPosition) {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_FACING_RIGHT;
    } else {
        gCurrentSprite.statusBits |= SPRITE_STATUS_FACING_RIGHT;
    }
}

void SpriteUtilMoveForward1Subpixel(void)
{
    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += 1;
    } else {
        gCurrentSprite.xPosition -= 1;
    }
}

void SpriteUtilMoveForward1HalfPixel(void)
{
    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += PIXEL_SIZE / 2;
    } else {
        gCurrentSprite.xPosition -= PIXEL_SIZE / 2;
    }
}

void func_8026374(void)
{
    u16 xVelocity;

    switch (gUnk_3000A50) {
        case 2:
        case 3:
            xVelocity = 2;
            break;
        case 4:
        case 5:
            xVelocity = 1;
            break;
        default:
            xVelocity = 3;
            break;
    }

    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += xVelocity;
    } else {
        gCurrentSprite.xPosition -= xVelocity;
    }
}

void func_80263AC(void)
{
    u16 xVelocity;

    switch (gUnk_3000A50) {
        case 4:
        case 5:
            xVelocity = 1;
            break;
        default:
            xVelocity = 2;
            break;
    }

    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += xVelocity;
    } else {
        gCurrentSprite.xPosition -= xVelocity;
    }
}

void func_80263E0(void)
{
    u16 xVelocity;

    switch (gUnk_3000A50) {
        case 2:
        case 3:
            xVelocity = 3;
            break;
        case 4:
        case 5:
            xVelocity = 2;
            break;
        default:
            xVelocity = 4;
            break;
    }

    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += xVelocity;
    } else {
        gCurrentSprite.xPosition -= xVelocity;
    }
}

void func_8026418(void)
{
    u16 xVelocity;

    switch (gUnk_3000A50) {
        case 2:
        case 3:
            xVelocity = 7;
            break;
        case 4:
        case 5:
            xVelocity = 6;
            break;
        default:
            xVelocity = 8;
            break;
    }

    if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += xVelocity;
    } else {
        gCurrentSprite.xPosition -= xVelocity;
    }
}

void func_8026450(void)
{
    s16 xVelocity;
    s16 yVelocity;
    u32 timer;

    timer = gCurrentSprite.work3;
    yVelocity = sUnk_83B35F8[timer][0];
    if (yVelocity == S16_MAX) {
        timer = 0;
        yVelocity = sUnk_83B35F8[0][0];
    }
    xVelocity = sUnk_83B35F8[timer][1];

    gCurrentSprite.work3 = timer + 1;
    gCurrentSprite.yPosition += yVelocity;
    gCurrentSprite.xPosition += xVelocity;
}

void func_80264A0(void)
{
    s16 xVelocity;
    s16 yVelocity;
    u32 timer;

    timer = gCurrentSprite.work3;
    yVelocity = sUnk_83B35F8[timer][0];
    if (yVelocity == S16_MAX) {
        timer = 0;
        yVelocity = sUnk_83B35F8[0][0];
    }
    xVelocity = sUnk_83B35F8[timer][1];

    gCurrentSprite.work3 = timer + 1;
    gCurrentSprite.yPosition += yVelocity;
    gCurrentSprite.xPosition += xVelocity;

    if (gCurrentSprite.statusBits & SPRITE_STATUS_12) {
        gWarioData.yPosition += yVelocity;
        gWarioData.xPosition += xVelocity;
    }
}

void func_802650C(void)
{
    s16 xVelocity;
    s16 yVelocity;
    u32 timer;

    timer = gCurrentSprite.work3;
    yVelocity = sUnk_83B37FC[timer][0];
    if (yVelocity == S16_MAX) {
        timer = 0;
        yVelocity = sUnk_83B37FC[0][0];
    }
    xVelocity = sUnk_83B37FC[timer][1];
    gCurrentSprite.work3 = timer + 1;
    gCurrentSprite.yPosition += yVelocity;
    gCurrentSprite.xPosition += xVelocity;
}

void func_802655C(void)
{
    s16 xVelocity;
    s16 yVelocity;
    u32 timer;

    timer = gCurrentSprite.work3;
    yVelocity = sUnk_83B37FC[timer][0];
    if (yVelocity == S16_MAX) {
        timer = 0;
        yVelocity = sUnk_83B37FC[0][0];
    }
    xVelocity = sUnk_83B37FC[timer][1];

    gCurrentSprite.work3 = timer + 1;
    gCurrentSprite.yPosition += yVelocity;
    gCurrentSprite.xPosition += xVelocity;

    if (gCurrentSprite.statusBits & SPRITE_STATUS_12) {
        gWarioData.yPosition += yVelocity;
        gWarioData.xPosition += xVelocity;
    }
}

void func_80265C8(s32 slot)
{
    s32 i;

    u16 yPosition;
    u16 xPosition;
    u16 thisTop;
    u16 thisBottom;
    u16 thisLeft;
    u16 thisRight;

    u16 otherYPosition;
    u16 otherXPosition;
    u16 otherTop;
    u16 otherBottom;
    u16 otherLeft;
    u16 otherRight;

    u16 statusCheck;

    yPosition = gSpriteData[slot].yPosition;
    xPosition = gSpriteData[slot].xPosition;
    thisTop = yPosition - gSpriteData[slot].hitboxExtentUp;
    thisBottom = yPosition + gSpriteData[slot].hitboxExtentDown;
    thisLeft = xPosition - gSpriteData[slot].hitboxExtentLeft;
    thisRight = xPosition + gSpriteData[slot].hitboxExtentRight;

    statusCheck = SPRITE_STATUS_IGNORE_SPRITE_COLLISION | SPRITE_STATUS_MAYBE_DEAD | SPRITE_STATUS_HIDDEN |
                  SPRITE_STATUS_ONSCREEN | SPRITE_STATUS_EXISTS;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (i == slot) {
            continue;
        }

        if ((gSpriteData[i].statusBits & statusCheck) != (SPRITE_STATUS_ONSCREEN | SPRITE_STATUS_EXISTS)) {
            continue;
        }

        otherYPosition = gSpriteData[i].yPosition;
        otherXPosition = gSpriteData[i].xPosition;
        otherTop = otherYPosition - gSpriteData[i].hitboxExtentUp;
        otherBottom = otherYPosition + gSpriteData[i].hitboxExtentDown;
        otherLeft = otherXPosition - gSpriteData[i].hitboxExtentLeft;
        otherRight = otherXPosition + gSpriteData[i].hitboxExtentRight;

        if (!SpriteUtilCheckObjectsTouching(
                thisTop, thisBottom, thisLeft, thisRight, otherTop, otherBottom, otherLeft, otherRight
            )) {
            continue;
        }

        if ((gSpriteData[slot].pose == 0x56) || (gSpriteData[slot].pose == 0x58)) {
            func_801E4B0();
            gCurrentCarriedSprite.state = 0;
            if (xPosition > otherXPosition) {
                gSpriteData[slot].pose = 0x33;
                gSpriteData[i].pose = 0x35;
            } else {
                gSpriteData[slot].pose = 0x35;
                gSpriteData[i].pose = 0x33;
            }
        } else {
            if (gSpriteData[i].pose >= 0x51 && gSpriteData[i].pose < 0x59) {
                func_801E4B0();
                gCurrentCarriedSprite.state = 0;
            }
            if (0x20 & gSpriteData[slot].statusBits) {
                if (0x20 & gSpriteData[i].statusBits) {
                    if (xPosition > otherXPosition) {
                        gSpriteData[slot].pose = 0x6A;
                        gSpriteData[i].pose = 0x69;
                    } else {
                        gSpriteData[slot].pose = 0x69;
                        gSpriteData[i].pose = 0x6A;
                    }
                } else {
                    if (xPosition > otherXPosition) {
                        gSpriteData[slot].pose = 0x33;
                        gSpriteData[i].pose = 0x69;
                    } else {
                        gSpriteData[slot].pose = 0x35;
                        gSpriteData[i].pose = 0x6A;
                    }
                }
            } else {
                if (0x20 & gSpriteData[i].statusBits) {
                    if (xPosition > otherXPosition) {
                        gSpriteData[slot].pose = 0x6A;
                        gSpriteData[i].pose = 0x35;
                    } else {
                        gSpriteData[slot].pose = 0x69;
                        gSpriteData[i].pose = 0x33;
                    }
                } else {
                    if (xPosition > otherXPosition) {
                        gSpriteData[slot].pose = 0x6A;
                        gSpriteData[i].pose = 0x69;
                    } else {
                        gSpriteData[slot].pose = 0x69;
                        gSpriteData[i].pose = 0x6A;
                    }
                }
            }
        }

        gSpriteData[i].statusBits |= SPRITE_STATUS_MAYBE_DEAD;
        gSpriteData[slot].statusBits |= SPRITE_STATUS_MAYBE_DEAD;
        gSpriteData[i].statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
        gSpriteData[slot].statusBits &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
        gSpriteData[i].disableWarioInteraction = 0xF;
        gSpriteData[slot].disableWarioInteraction = 0xF;
        m4aSongNumStart(SOUND_3B);
        return;
    }
}

void func_80267C0(void)
{
    s32 i;
    s32 j;
    u32 found;
    u16 statusCheck;

    found = FALSE;
    statusCheck = SPRITE_STATUS_CAN_HIT_OTHER_SPRITES | SPRITE_STATUS_EXISTS;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if ((gSpriteData[i].statusBits & statusCheck) == statusCheck) {
            found++;
            break;
        }
    }
    if (!found) {
        return;
    }
    func_80265C8(i);

    found = FALSE;
    for (j = 0; j < MAX_SPRITE_COUNT; j++) {
        if ((gSpriteData[j].statusBits & statusCheck) == statusCheck && j != i) {
            found++;
            break;
        }
    }
    if (!found) {
        return;
    }
    func_80265C8(j);
}

void func_8026838(void)
{
    if (!(gCurrentSprite.statusBits & SPRITE_STATUS_EXISTS)) {
        return;
    }

    if (gCurrentSprite.statusBits & SPRITE_STATUS_12) {
        if (gWarioData.unk_1A != 1) {
            gWarioData.unk_1A = 1;
            sUnk_82DECA0[gWarioData.reaction](0xFD);
        }
    } else {
        if (gCurrentSprite.work1 != 1) {
            if (gCurrentSprite.work1 == 2) {
                gCurrentSprite.work1 = 1;
                if (gUnk_30019F4 <= gWarioData.yPosition) {
                    gWarioData.yPosition = (gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp) + 1;
                }
            }
        } else {
            gCurrentSprite.work1 = 0;
            if (gWarioData.unk_1A == 1) {
                gWarioData.unk_1A = 0;
            }
        }
    }
    gCurrentSprite.statusBits &= ~SPRITE_STATUS_12;
}

u32 SpriteUtilDespawnChildWithParent(u8 parentId)
{
    s32 i;
    u8 roomSlot;

    roomSlot = gCurrentSprite.roomSlot;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].roomSlot == roomSlot && gSpriteData[i].globalID == parentId &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            return FALSE;
        }
    }
    gCurrentSprite.statusBits = SPRITE_STATUS_NONE;
    return TRUE;
}

u32 SpriteUtilFindParentSlotOrU8MaxUnused(u8 parentId)
{
    s32 i;
    u8 roomSlot;

    roomSlot = gCurrentSprite.roomSlot;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].roomSlot == roomSlot && gSpriteData[i].globalID == parentId &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            return i;
        }
    }
    return U8_MAX;
}

u32 SpriteUtilDespawnIfSpriteExists(u8 id)
{
    s32 i;
    u8 roomSlot;

    roomSlot = gCurrentSprite.roomSlot;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && gSpriteData[i].roomSlot != roomSlot &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            gCurrentSprite.statusBits = 0;
            return TRUE;
        }
    }
    return FALSE;
}

u32 SpriteUtilCountSpriteType(u8 id)
{
    s32 i;
    u32 count;

    count = 0;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            count++;
        }
    }
    return count;
}

void func_80269EC(void)
{
    u16 xPosition;
    u16 yPosition;

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    gUnk_3000028 = 3;
    func_806D5C0(yPosition, xPosition);
    gUnk_3000028 = 3;
    func_806D5C0(yPosition - PIXEL_SIZE, xPosition);
    gUnk_3000028 = 3;
    func_806D5C0(yPosition - PIXEL_SIZE, xPosition - PIXEL_SIZE);
    gUnk_3000028 = 3;
    func_806D5C0(yPosition, xPosition - PIXEL_SIZE);
}

void func_8026A54(void)
{
    u16 xPosition;
    u16 yPosition;

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    gUnk_3000028 = 2;
    func_806D5C0(yPosition, xPosition);
    gUnk_3000028 = 2;
    func_806D5C0(yPosition - PIXEL_SIZE, xPosition);
    gUnk_3000028 = 2;
    func_806D5C0(yPosition - PIXEL_SIZE, xPosition - PIXEL_SIZE);
    gUnk_3000028 = 2;
    func_806D5C0(yPosition, xPosition - PIXEL_SIZE);
}

void SpriteUtilFindSpriteSlotWork3(u8 id)
{
    s32 i;

    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            break;
        }
    }
    gCurrentSprite.work3 = i;
}

u32 SpriteUtilFindSpriteSlot(u8 id)
{
    s32 i;

    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            break;
        }
    }
    return i;
}

u32 SpriteUtilFindSpriteSlotOrU8Max(u8 id)
{
    u8 i;
    u8 found;

    found = 0;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            found++;
            break;
        }
    }
    if (!found) {
        i = U8_MAX;
    }
    return i;
}

void SpriteUtilFindOwnSlot(u8 roomSlot)
{
    s32 i;

    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == gCurrentSprite.globalID && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) &&
            gSpriteData[i].roomSlot == roomSlot) {
            break;
        }
    }
    gCurrentSprite.work3 = i;
}

void SpriteUtilFindSpriteWork3(u8 id, u8 roomSlot)
{
    s32 i;

    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) &&
            gSpriteData[i].roomSlot == roomSlot) {
            break;
        }
    }
    gCurrentSprite.work3 = i;
}

s32 SpriteUtilFindSprite(u8 id, u8 roomSlot)
{
    s32 i;

    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == id && (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) &&
            gSpriteData[i].roomSlot == roomSlot) {
            break;
        }
    }
    return i;
}

void SpriteUtilFindParentSlotWork3(u8 parentId)
{
    s32 i;
    u8 roomSlot;

    roomSlot = gCurrentSprite.roomSlot;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == parentId && gSpriteData[i].roomSlot == roomSlot &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            break;
        }
    }
    gCurrentSprite.work3 = i;
}

s32 SpriteUtilFindParentSlotOrU8Max(u8 parentId)
{
    s32 i;
    u8 roomSlot;
    u8 found;

    roomSlot = gCurrentSprite.roomSlot;
    found = 0;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == parentId && gSpriteData[i].roomSlot == roomSlot &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS)) {
            return i;
        }
    }
    return U8_MAX;
}

s32 SpriteUtilFindBossTreasureChest(u8 roomSlot)
{
    s32 i;
    u32 slot;

    slot = U8_MAX;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].globalID == PSPRITE_BOSS_TREASURE_CHEST &&
            (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) && gSpriteData[i].roomSlot == roomSlot) {
            slot = i;
            break;
        }
    }
    return slot;
}

void SpriteUtilClearAllSpritesStatus3(void)
{
    s32 i;

    gCurrentSprite.statusBits &= ~SPRITE_STATUS_3;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) {
            gSpriteData[i].statusBits &= ~SPRITE_STATUS_3;
        }
    }
}

void SpriteUtilSetAllSpritesHighPriority(void)
{
    s32 i;

    gCurrentSprite.drawPriority |= 0x80;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) {
            gSpriteData[i].drawPriority |= 0x80;
        }
    }
}

void SpriteUtilUnsetAllSpritesHighPriority(void)
{
    s32 i;

    gCurrentSprite.drawPriority &= 0x7F;
    for (i = 0; i < MAX_SPRITE_COUNT; i++) {
        if (gSpriteData[i].statusBits & SPRITE_STATUS_EXISTS) {
            gSpriteData[i].drawPriority &= 0x7F;
        }
    }
}

void SpriteUtilStartBossTimer(void)
{
    u32 yPosition;
    u32 xPosition;
    u32 xOffset;

    sUnk_82DECA0[gWarioData.reaction](2);
    gWarioPauseTimer = CONVERT_SECONDS(3 + 1 / 3.0);
    gUnk_3000047 = 1;
    gUnk_3000BEC = 0;
    gUnk_3000C01 = 3;
    gUnk_3000C03 = 2;
    SpriteSpawnSecondary(3 * BLOCK_SIZE + EIGHTH_BLOCK_SIZE, 6 * BLOCK_SIZE, SSPRITE_4E);
    yPosition = gWarioData.yPosition - gBg1YPosition;
    xPosition = gWarioData.xPosition;
    xOffset = (gBg1XPosition + BLOCK_SIZE);
    xPosition -= xOffset;
    SpriteSpawnSecondary(yPosition, xPosition, SSPRITE_4F);
    m4aSongNumStart(SOUND_1BC);
    if (gCurrentPassage == PASSAGE_GOLDEN) {
        m4aSongNumStart(BGM_GOLDEN_DIVA);
    } else {
        m4aSongNumStart(BGM_BOSS);
    }
}

void func_8026E78(void)
{
    switch (gCurrentPassage) {
        case PASSAGE_ENTRY:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_BOSS_SPOILED_ROTTEN);
            gSpriteData[gCurrentSprite.work3].pose = 0x74;
            break;

        case PASSAGE_EMERALD:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_D8);
            gSpriteData[gCurrentSprite.work3].pose = 0x7A;
            break;

        case PASSAGE_RUBY:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_BOSS_CUCKOO_CONDOR);
            gSpriteData[gCurrentSprite.work3].pose = 0x7A;
            break;

        case PASSAGE_TOPAZ:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_CB);
            gSpriteData[gCurrentSprite.work3].pose = 0x7A;
            break;

        case PASSAGE_SAPPHIRE:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_BOSS_CATBAT);
            gSpriteData[gCurrentSprite.work3].pose = 0x7A;
            break;

        case PASSAGE_GOLDEN:
            SpriteUtilFindSpriteSlotWork3(PSPRITE_EC);
            gSpriteData[gCurrentSprite.work3].pose = 0x74;
            break;
    }
}

void SpriteUtilFadeBackgroundToBlack(void)
{
    func_8070A84(8, 0, 16);
}

void SpriteUtilSetWarioBossVictoryPose(void)
{
    if ((gWarioData.reaction == REACT_NORMAL) && (gWarioData.unk_1A != 3)) {
        if (gWarioData.unk_1A == 0) {
            sUnk_82DECA0[gWarioData.reaction](0x3E);
        } else {
            sUnk_82DECA0[gWarioData.reaction](0x3D);
        }
    }
}
