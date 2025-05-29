#include "clipdata.h"
#include "in_game.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"


const u8 rock_oam_data[];


static void Rock_Init(void) {
    current_sprite.draw_distance_down = PIXELS_FROM_BLOCKS(1);
    current_sprite.draw_distance_up = 0;
    current_sprite.draw_distance_horizontal = PIXELS_FROM_BLOCKS(1);

    current_sprite.hitbox_extent_up = SUBPIXELS_FROM_PIXELS(13);
    current_sprite.hitbox_extent_down = 0;
    current_sprite.hitbox_extent_left = SUBPIXELS_FROM_PIXELS(7);
    current_sprite.hitbox_extent_right = SUBPIXELS_FROM_PIXELS(6);
}

static void Rock_Pose0F(void) {
    current_sprite.animation_timer = current_sprite.animation_frame = 0;
    current_sprite.oam_data = &rock_oam_data;
    current_sprite.pose = POSE_10;
    current_sprite.wario_interaction = 5;
    current_sprite.status &= ~0x0300;
}

static void Rock_Pose10(void) {
    func_0238E8();
    func_023B88();
    if (!unk_3000A50) {
        if (current_sprite.status & 0x40) {
            func_023BFC(current_sprite.y_position, current_sprite.x_position - current_sprite.hitbox_extent_left);
        } else {
            func_023BFC(current_sprite.y_position, current_sprite.x_position + current_sprite.hitbox_extent_right);
        }
        if (!unk_3000A51) {
            current_sprite.pose = POSE_1B;
        }
    }
}

static void Rock_Pose1B(void) {
    current_sprite.pose = POSE_1E;
    current_sprite.work3 = 0;
}

static void Rock_Pose2B(void) {
    current_sprite.pose = POSE_2C;
    current_sprite.work1 = 0;
}

static void Rock_Pose2D(void) {
    current_sprite.pose = POSE_2E;
    current_sprite.work1 = 0;
}

static void Rock_Pose47(void) {
    current_sprite.pose = POSE_48;
    current_sprite.work2 = 8;
    current_sprite.work3 = 0;
}

static void Rock_Pose49(void) {
    current_sprite.pose = POSE_4A;
    current_sprite.work2 = 8;
    current_sprite.work3 = 0;
}

static void Rock_Pose1F(void) {
    current_sprite.pose = POSE_34;
    current_sprite.work0 = 4;
    current_sprite.work2 = 8;
    current_sprite.work3 = 0;
}

static void Rock_Pose21(void) {
    current_sprite.pose = POSE_36;
    current_sprite.work0 = 4;
    current_sprite.work2 = 8;
    current_sprite.work3 = 0;
}

static void Rock_Pose31(void) {
    if (current_sprite.x_position > wario_data.x_position) {
        Rock_Pose1F();
    } else {
        Rock_Pose21();
    }
}

static void Rock_Pose51(void) {
    current_sprite.pose = POSE_52;
}

static void Rock_Pose53(void) {
    current_sprite.pose = POSE_54;
}

static void Rock_Pose57(void) {
    current_sprite.pose = POSE_58;
    current_sprite.wario_interaction_timeout = 1;
    if (current_sprite.status | 0x200) {
        current_sprite.status &= ~0x0200;
    }
}

static void Rock_Pose55(void) {
    current_sprite.pose = POSE_56;
    current_sprite.wario_interaction_timeout = 1;
    if (current_sprite.status | 0x200) {
        current_sprite.status &= ~0x0200;
    }
}



void SpriteAI_Rock(void) {
    if (current_sprite.status & 0x800 && (unk_3000BEC & 3)) {
        return;
    }
    switch (current_sprite.pose) {
        case POSE_INIT:
            Rock_Init();

        case POSE_0F:
        case POSE_17:
        case POSE_2F:
            Rock_Pose0F();
        case POSE_10:
            Rock_Pose10();
            break;

        case POSE_1B:
        case POSE_1D:
            Rock_Pose1B();
        case POSE_1E:
            current_sprite.status &= ~0x0800;
            func_023EE0();
            break;

        case POSE_2B:
            Rock_Pose2B();
        case POSE_2C:
            func_024478();
            break;

        case POSE_2D:
            Rock_Pose2D();
        case POSE_2E:
            func_02449C();
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
        case POSE_40:
            func_024988();
            break;

        case POSE_21:
        case POSE_25:
        case POSE_35:
        case POSE_50:
        case POSE_69:
            Rock_Pose21();
        case POSE_36:
        case POSE_3A:
            func_02476C();
            break;

        case POSE_37:
            func_024688();
        case POSE_38:
            func_0246B8();
            break;

        case POSE_39:
            func_02473C();
            func_02476C();  // jumps to case POSE_36
            break;

        case POSE_3B:
            func_0247F0();

        case POSE_3C:
            func_024820();
            break;

        case POSE_3D:
            func_0248A4();
        case POSE_3E:
            func_0248D4();
            break;

        case POSE_3F:
            func_024958();
            func_024988();  // jumps to case POSE_34
            break;

        case POSE_41:
            func_024A0C();
        case POSE_42:
            func_024A3C();
            break;

        case POSE_43:
            func_024AC0();
            current_sprite.status &= ~0x0800;  // jumps to case POSE_44
            func_024AD4();
            break;

        case POSE_45:
            func_024BEC();
            current_sprite.status &= ~0x0800;  // jumps to case POSE_46
            func_024C00();
            break;

        case POSE_47:
            Rock_Pose47();
        case POSE_44:
        case POSE_48:
            current_sprite.status &= ~0x0800;
            func_024AD4();
            break;

        case POSE_49:
            Rock_Pose49();
        case POSE_46:
        case POSE_4A:
            current_sprite.status &= ~0x0800;
            func_024C00();
            break;

        case POSE_51:
            Rock_Pose51();
            break;

        case POSE_52:
            func_024D18();
            break;

        case POSE_53:
            Rock_Pose53();
            break;

        case POSE_54:
            func_024E58();
            break;

        case POSE_57:
            Rock_Pose57();
            break;

        case POSE_58:
            current_sprite.status &= ~0x0800;
            func_024F98();
            break;

        case POSE_55:
            Rock_Pose55();
            break;

        case POSE_56:
            current_sprite.status &= ~0x0800;
            func_025240();
            break;

        case POSE_59:
            current_sprite.pose = POSE_5A;
        case POSE_5A:
            current_sprite.status &= ~0x0800;
            func_025634();
            break;

        case POSE_5D:
            current_sprite.pose = POSE_5E;
            current_sprite.unk_1D = (current_sprite.unk_1D & 0xF) | 0x10;
        case POSE_5E:
            current_sprite.status &= ~0x0800;
            func_0256D4();
            break;

        case POSE_61:
            current_sprite.pose = POSE_62;
        case POSE_62:
            current_sprite.status &= ~0x0800;
            func_025774();
            break;

        case POSE_65:
            current_sprite.pose = POSE_66;
            current_sprite.unk_1D = (current_sprite.unk_1D & 0xF) | 0x20;
        case POSE_66:
            current_sprite.status &= ~0x0800;
            func_025814();
            break;

        case POSE_5B:
            current_sprite.pose = POSE_5C;
        case POSE_5C:
            current_sprite.status &= ~0x0800;
            func_025A00();
            break;

        case POSE_5F:
            current_sprite.pose = POSE_60;
            current_sprite.unk_1D = (current_sprite.unk_1D & 0xF) | 0x40;
        case POSE_60:
            current_sprite.status &= ~0x0800;
            func_025AA0();
            break;

        case POSE_63:
            current_sprite.pose = POSE_64;
        case POSE_64:
            current_sprite.status &= ~0x0800;
            func_025B40();
            break;

        case POSE_67:
            current_sprite.pose = POSE_68;
            current_sprite.unk_1D = (current_sprite.unk_1D & 0xF) | 0x80;
        case POSE_68:
            current_sprite.status &= ~0x0800;
            func_025BE0();
            break;

        case POSE_6B:
            if (current_sprite.unk_1D & 0x10) {
                current_sprite.unk_1D &= 0xF;
                current_sprite.work2 = 8;
                func_024BEC();
            } else if (current_sprite.unk_1D & 0x20) {
                current_sprite.unk_1D &= 0xF;
                current_sprite.work2 = 4;
                func_024AC0();
            } else if (current_sprite.unk_1D & 0x40) {
                current_sprite.unk_1D &= 0xF;
                current_sprite.work2 = 8;
                func_024AC0();
            } else if (current_sprite.unk_1D & 0x80) {
                current_sprite.unk_1D &= 0xF;
                current_sprite.work2 = 4;
                func_024BEC();
            } else {
                func_024554();
                break;
            }
            break;

        default:
            func_024554();
            break;
    }

    if ((current_sprite.unk_1D & 0xF) == 1) {
        if (current_sprite.status & 0x800) {
            current_sprite.unk_1D += 1;
            sprite_spawn_secondary(current_sprite.y_position, current_sprite.x_position, SSPRITE_7);
            sound_play(SOUND_3D);
        }
    } else if ((current_sprite.unk_1D & 0xF) == 2) {
        func_023BFC(current_sprite.y_position, current_sprite.x_position);
        if (unk_30000A0.unk_02 == 1) {
            current_sprite.status |= 0x0800;
        }
        if (!(current_sprite.status & 0x0800)) {
            current_sprite.unk_1D -= 1;
        }
    }
}
