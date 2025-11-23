#include "global_data.h"
#include "oam.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"

const u16 sRockOam_Frame1[] = {
    2,
    OAM_ENTRY(-10, -16, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(6, -16, SPRITE_SIZE_8x16, 0, 514, 8, 0),
};

const u16 sRockOam_UnusedFrame1[] = {
    1,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 515, 8, 0),
};
const u16 sRockOam_UnusedFrame2[] = {
    1,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 547, 8, 0),
};
const u16 sRockOam_UnusedFrame3[] = {
    1,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 516, 8, 0),
};
const u16 sRockOam_UnusedFrame4[] = {
    1,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 548, 8, 0),
};

const struct AnimationFrame sRockOamData[] = {{sRockOam_Frame1, 0xC8}, ANIMATION_TERMINATOR};

void RockInit(void)
{
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;

    gCurrentSprite.hitboxExtentUp = SUBPIXELS_FROM_PIXELS(13);
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = SUBPIXELS_FROM_PIXELS(7);
    gCurrentSprite.hitboxExtentRight = SUBPIXELS_FROM_PIXELS(6);
}

void RockIdleInit(void)
{
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pOamData = sRockOamData;
    gCurrentSprite.pose = POSE_IDLE;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.statusBits &= ~(SPRITE_STATUS_CAN_HIT_OTHER_SPRITES | SPRITE_STATUS_MAYBE_DEAD);
}

void RockIdle(void)
{
    func_80238E8();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = POSE_1B;
        }
    }
}

void RockPose1B(void)
{
    gCurrentSprite.pose = POSE_1E;
    gCurrentSprite.work3 = 0;
}

void RockPose2B(void)
{
    gCurrentSprite.pose = POSE_2C;
    gCurrentSprite.work1 = 0;
}

void RockPose2D(void)
{
    gCurrentSprite.pose = POSE_2E;
    gCurrentSprite.work1 = 0;
}

void RockPose47(void)
{
    gCurrentSprite.pose = POSE_48;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

void RockPose49(void)
{
    gCurrentSprite.pose = POSE_4A;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

void RockBumpedRightInit(void)
{
    gCurrentSprite.pose = POSE_34;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

void RockBumpedLeftInit(void)
{
    gCurrentSprite.pose = POSE_36;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

void RockGroundPounded(void)
{
    if (gCurrentSprite.xPosition > gWarioData.xPosition) {
        RockBumpedRightInit();
    } else {
        RockBumpedLeftInit();
    }
}

void RockLiftedRightInit(void)
{
    gCurrentSprite.pose = POSE_BEING_LIFTED_RIGHT;
}

void RockLiftedLeftInit(void)
{
    gCurrentSprite.pose = POSE_BEING_LIFTED_LEFT;
}

void RockCarriedRightInit(void)
{
    gCurrentSprite.pose = POSE_CARRIED_RIGHT;
    gCurrentSprite.disableWarioCollisionTimer = DELTA_TIME;
    if (gCurrentSprite.statusBits | SPRITE_STATUS_MAYBE_DEAD) {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_DEAD;
    }
}

void RockCarriedLeftInit(void)
{
    gCurrentSprite.pose = POSE_CARRIED_LEFT;
    gCurrentSprite.disableWarioCollisionTimer = DELTA_TIME;
    if (gCurrentSprite.statusBits | SPRITE_STATUS_MAYBE_DEAD) {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_DEAD;
    }
}

void SpriteRock(void)
{
    if (gCurrentSprite.statusBits & SPRITE_STATUS_UNDERWATER && (gUnk_3000BEC & 3)) {
        return;
    }
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            RockInit();

        case POSE_IDLE_INIT:
        case POSE_17:
        case POSE_2F:
            RockIdleInit();
        case POSE_IDLE:
            RockIdle();
            break;

        case POSE_1B:
        case POSE_1D:
            RockPose1B();
        case POSE_1E:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            func_8023EE0();
            break;

        case POSE_2B:
            RockPose2B();
        case POSE_2C:
            func_8024478();
            break;

        case POSE_2D:
            RockPose2D();
        case POSE_2E:
            func_802449C();
            break;

        case POSE_CRUSHED_OR_COLLECTED_INIT:
            RockGroundPounded();
            break;

        case POSE_TACKLED_RIGHT_INIT:
        case POSE_PUSHED_RIGHT_INIT:
        case POSE_33:
        case POSE_4F:
        case POSE_6A:
            RockBumpedRightInit();
        case POSE_34:
            func_8024988();
            break;

        case POSE_TACKLED_LEFT_INIT:
        case POSE_PUSHED_LEFT_INIT:
        case POSE_35:
        case POSE_50:
        case POSE_69:
            RockBumpedLeftInit();
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
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            func_8024AD4();
            break;

        case POSE_45:
            func_8024BEC();
        case POSE_46:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            func_8024C00();
            break;

        case POSE_47:
            RockPose47();
        case POSE_48:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            func_8024AD4();
            break;

        case POSE_49:
            RockPose49();
        case POSE_4A:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            func_8024C00();
            break;

        case POSE_BEING_LIFTED_RIGHT_INIT:
            RockLiftedRightInit();
            break;

        case POSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;

        case POSE_BEING_LIFTED_LEFT_INIT:
            RockLiftedLeftInit();
            break;

        case POSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;

        case POSE_CARRIED_RIGHT_INIT:
            RockCarriedRightInit();
            break;

        case POSE_CARRIED_RIGHT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilCarryingSpriteRight();
            break;

        case POSE_CARRIED_LEFT_INIT:
            RockCarriedLeftInit();
            break;

        case POSE_CARRIED_LEFT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilCarryingSpriteLeft();
            break;

        case POSE_THROWN_LEFT_SOFT_INIT:
            gCurrentSprite.pose = POSE_THROWN_LEFT_SOFT;
        case POSE_THROWN_LEFT_SOFT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownLeftSoft();
            break;

        case POSE_THROWN_LEFT_HARD_INIT:
            gCurrentSprite.pose = POSE_THROWN_LEFT_HARD;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x10;
        case POSE_THROWN_LEFT_HARD:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownLeftHard();
            break;

        case POSE_THROWN_UP_LEFT_SOFT_INIT:
            gCurrentSprite.pose = POSE_THROWN_UP_LEFT_SOFT;
        case POSE_THROWN_UP_LEFT_SOFT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownUpLeftSoft();
            break;

        case POSE_THROWN_UP_LEFT_HARD_INIT:
            gCurrentSprite.pose = POSE_THROWN_UP_LEFT_HARD;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x20;
        case POSE_THROWN_UP_LEFT_HARD:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownUpLeftHard();
            break;

        case POSE_THROWN_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = POSE_THROWN_RIGHT_SOFT;
        case POSE_THROWN_RIGHT_SOFT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownRightSoft();
            break;

        case POSE_THROWN_RIGHT_HARD_INIT:
            gCurrentSprite.pose = POSE_THROWN_RIGHT_HARD;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x40;
        case POSE_THROWN_RIGHT_HARD:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownRightHard();
            break;

        case POSE_THROWN_UP_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = POSE_THROWN_UP_RIGHT_SOFT;
        case POSE_THROWN_UP_RIGHT_SOFT:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownUpRightSoft();
            break;

        case POSE_THROWN_UP_RIGHT_HARD_INIT:
            gCurrentSprite.pose = POSE_THROWN_UP_RIGHT_HARD;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x80;
        case POSE_THROWN_UP_RIGHT_HARD:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_UNDERWATER;
            SpriteUtilThrownUpRightHard();
            break;

        case POSE_6B:
            if (gCurrentSprite.health & 0x10) {
                gCurrentSprite.health &= 0xF;
                gCurrentSprite.work2 = 8;
                func_8024BEC();
            } else if (gCurrentSprite.health & 0x20) {
                gCurrentSprite.health &= 0xF;
                gCurrentSprite.work2 = 4;
                func_8024AC0();
            } else if (gCurrentSprite.health & 0x40) {
                gCurrentSprite.health &= 0xF;
                gCurrentSprite.work2 = 8;
                func_8024AC0();
            } else if (gCurrentSprite.health & 0x80) {
                gCurrentSprite.health &= 0xF;
                gCurrentSprite.work2 = 4;
                func_8024BEC();
            } else {
                SpriteUtilDie();
                break;
            }
            break;

        default:
            SpriteUtilDie();
            break;
    }

    if ((gCurrentSprite.health & 0xF) == 1) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_UNDERWATER) {
            gCurrentSprite.health += 1;
            SpriteSpawnSecondary(gCurrentSprite.yPosition, gCurrentSprite.xPosition, SSPRITE_07);
            m4aSongNumStart(SOUND_3D);
        }
    } else if ((gCurrentSprite.health & 0xF) == 2) {
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1) {
            gCurrentSprite.statusBits |= SPRITE_STATUS_UNDERWATER;
        }
        if (!(gCurrentSprite.statusBits & SPRITE_STATUS_UNDERWATER)) {
            gCurrentSprite.health -= 1;
        }
    }
}
