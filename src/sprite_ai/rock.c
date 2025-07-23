#include "bg_clip.h"
#include "game_screen.h"
#include "oam.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "types.h"
#include "score.h"
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

const struct AnimationFrame sRockOamData[] = {
    { sRockOam_Frame1, 0xC8 },
    ANIMATION_TERMINATOR
};


static void Rock_Init(void) {
    gCurrentSprite.drawDistanceDown = BLOCK_SIZE_PIXELS;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = BLOCK_SIZE_PIXELS;

    gCurrentSprite.hitboxExtentUp = SUBPIXELS_FROM_PIXELS(13);
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = SUBPIXELS_FROM_PIXELS(7);
    gCurrentSprite.hitboxExtentRight = SUBPIXELS_FROM_PIXELS(6);
}

static void Rock_IdleInit(void) {
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pOamData = &sRockOamData;
    gCurrentSprite.pose = POSE_IDLE;
    gCurrentSprite.warioInteractionFlags = 5;
    gCurrentSprite.statusBits &= ~(SPRITE_STATUS_8 | SPRITE_STATUS_9);
}

static void Rock_Idle(void) {
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

static void Rock_Pose1B(void) {
    gCurrentSprite.pose = POSE_1E;
    gCurrentSprite.work3 = 0;
}

static void Rock_Pose2B(void) {
    gCurrentSprite.pose = POSE_2C;
    gCurrentSprite.work1 = 0;
}

static void Rock_Pose2D(void) {
    gCurrentSprite.pose = POSE_2E;
    gCurrentSprite.work1 = 0;
}

static void Rock_Pose47(void) {
    gCurrentSprite.pose = POSE_48;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

static void Rock_Pose49(void) {
    gCurrentSprite.pose = POSE_4A;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

static void Rock_Pose1F(void) {
    gCurrentSprite.pose = POSE_34;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

static void Rock_Pose21(void) {
    gCurrentSprite.pose = POSE_36;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

static void Rock_Pose31(void) {
    if (gCurrentSprite.xPosition > gWarioData.xPosition) {
        Rock_Pose1F();
    } else {
        Rock_Pose21();
    }
}

static void Rock_Pose51(void) {
    gCurrentSprite.pose = POSE_52;
}

static void Rock_Pose53(void) {
    gCurrentSprite.pose = POSE_54;
}

static void Rock_Pose57(void) {
    gCurrentSprite.pose = POSE_58;
    gCurrentSprite.disableWarioInteraction = 1;
    if (gCurrentSprite.statusBits | SPRITE_STATUS_9) {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_9;
    }
}

static void Rock_Pose55(void) {
    gCurrentSprite.pose = POSE_56;
    gCurrentSprite.disableWarioInteraction = 1;
    if (gCurrentSprite.statusBits | SPRITE_STATUS_9) {
        gCurrentSprite.statusBits &= ~SPRITE_STATUS_9;
    }
}



void SpriteAI_Rock(void) {
    if (gCurrentSprite.statusBits & SPRITE_STATUS_MAYBE_UNDERWATER && (gUnk_3000BEC & 3)) {
        return;
    }
    switch (gCurrentSprite.pose) {
        case POSE_INIT:
            Rock_Init();

        case POSE_IDLE_INIT:
        case POSE_17:
        case POSE_2F:
            Rock_IdleInit();
        case POSE_IDLE:
            Rock_Idle();
            break;

        case POSE_1B:
        case POSE_1D:
            Rock_Pose1B();
        case POSE_1E:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8023EE0();
            break;

        case POSE_2B:
            Rock_Pose2B();
        case POSE_2C:
            func_8024478();
            break;

        case POSE_2D:
            Rock_Pose2D();
        case POSE_2E:
            func_802449C();
            break;

        case POSE_31:
            Rock_Pose31();
            break;

        case POSE_1F:
        case POSE_23:
        case POSE_33:
        case POSE_4F:
        case POSE_6A:
            Rock_Pose1F();
        case POSE_34:
            func_8024988();
            break;

        case POSE_21:
        case POSE_25:
        case POSE_35:
        case POSE_50:
        case POSE_69:
            Rock_Pose21();
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
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8024AD4();
            break;

        case POSE_45:
            func_8024BEC();
        case POSE_46:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8024C00();
            break;

        case POSE_47:
            Rock_Pose47();
        case POSE_48:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8024AD4();
            break;

        case POSE_49:
            Rock_Pose49();
        case POSE_4A:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8024C00();
            break;

        case POSE_51:
            Rock_Pose51();
            break;

        case POSE_52:
            func_8024D18();
            break;

        case POSE_53:
            Rock_Pose53();
            break;

        case POSE_54:
            func_8024E58();
            break;

        case POSE_57:
            Rock_Pose57();
            break;

        case POSE_58:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8024F98();
            break;

        case POSE_55:
            Rock_Pose55();
            break;

        case POSE_56:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025240();
            break;

        case POSE_59:
            gCurrentSprite.pose = POSE_5A;
        case POSE_5A:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025634();
            break;

        case POSE_5D:
            gCurrentSprite.pose = POSE_5E;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x10;
        case POSE_5E:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_80256D4();
            break;

        case POSE_61:
            gCurrentSprite.pose = POSE_62;
        case POSE_62:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025774();
            break;

        case POSE_65:
            gCurrentSprite.pose = POSE_66;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x20;
        case POSE_66:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025814();
            break;

        case POSE_5B:
            gCurrentSprite.pose = POSE_5C;
        case POSE_5C:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025A00();
            break;

        case POSE_5F:
            gCurrentSprite.pose = POSE_60;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x40;
        case POSE_60:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025AA0();
            break;

        case POSE_63:
            gCurrentSprite.pose = POSE_64;
        case POSE_64:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025B40();
            break;

        case POSE_67:
            gCurrentSprite.pose = POSE_68;
            gCurrentSprite.health = (gCurrentSprite.health & 0xF) | 0x80;
        case POSE_68:
            gCurrentSprite.statusBits &= ~SPRITE_STATUS_MAYBE_UNDERWATER;
            func_8025BE0();
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
                func_8024554();
                break;
            }
            break;

        default:
            func_8024554();
            break;
    }

    if ((gCurrentSprite.health & 0xF) == 1) {
        if (gCurrentSprite.statusBits & SPRITE_STATUS_MAYBE_UNDERWATER) {
            gCurrentSprite.health += 1;
            Sprite_SpawnSecondary(gCurrentSprite.yPosition, gCurrentSprite.xPosition, SSPRITE_07);
            m4aSongNumStart(SOUND_3D);
        }
    } else if ((gCurrentSprite.health & 0xF) == 2) {
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1) {
            gCurrentSprite.statusBits |= SPRITE_STATUS_MAYBE_UNDERWATER;
        }
        if (!(gCurrentSprite.statusBits & SPRITE_STATUS_MAYBE_UNDERWATER)) {
            gCurrentSprite.health -= 1;
        }
    }
}
