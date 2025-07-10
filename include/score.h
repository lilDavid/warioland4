#ifndef SCORE_H
#define SCORE_H

#include "gba/types.h"


// Number of points per internal unit of score
#define SCORE_RATIO 10
// Convert an amount of points for storage
#define CONVERT_SCORE(points) ((points) / SCORE_RATIO)

#define MAX_SCORE CONVERT_SCORE(999990)


enum ScoreSpriteID {
    SSPRITE_SCORE_10,
    SSPRITE_SCORE_50,
    SSPRITE_SCORE_100,
    SSPRITE_SCORE_500,
    SSPRITE_SCORE_1000,
    SSPRITE_05,
    SSPRITE_06,
    SSPRITE_07,
    SSPRITE_08,
    SSPRITE_09,
    SSPRITE_0A,
    SSPRITE_0B,
    SSPRITE_0C,
    SSPRITE_0D,
    SSPRITE_0E,
    SSPRITE_0F,
    SSPRITE_10,
    SSPRITE_11,
    SSPRITE_12,
    SSPRITE_13,
    SSPRITE_14,
    SSPRITE_15,
    SSPRITE_16,
    SSPRITE_17,
    SSPRITE_18,
    SSPRITE_19,
    SSPRITE_1A,
    SSPRITE_1B,
    SSPRITE_1C,
    SSPRITE_1D,
    SSPRITE_1E,
    SSPRITE_1F,
    SSPRITE_20,
    SSPRITE_21,
    SSPRITE_22,
    SSPRITE_23,
    SSPRITE_24,
    SSPRITE_25,
    SSPRITE_26,
    SSPRITE_27,
    SSPRITE_28,
    SSPRITE_29,
    SSPRITE_2A,
    SSPRITE_2B,
    SSPRITE_2C,
    SSPRITE_2D,
    SSPRITE_2E,
    SSPRITE_2F,
    SSPRITE_30,
    SSPRITE_31,
    SSPRITE_32,
    SSPRITE_33,
    SSPRITE_34,
    SSPRITE_35,
    SSPRITE_36,
    SSPRITE_37,
    SSPRITE_38,
    SSPRITE_39,
    SSPRITE_3A,
    SSPRITE_3B,
    SSPRITE_3C,
    SSPRITE_3D,
    SSPRITE_3E,
    SSPRITE_3F,
    SSPRITE_40,
    SSPRITE_JEWEL_PIECE_ICONS,
    SSPRITE_CD_ICON,
    SSPRITE_43,
    SSPRITE_44,
    SSPRITE_45,
    SSPRITE_46,
    SSPRITE_47,
    SSPRITE_48,
    SSPRITE_49,
    SSPRITE_4A,
    SSPRITE_KEYZER,
    SSPRITE_WARIO_TIME_UP,
    SSPRITE_WARIO_DYING,
    SSPRITE_4E,
    SSPRITE_4F,
    SSPRITE_50,
    SSPRITE_51,
    SSPRITE_52,
    SSPRITE_53,
    SSPRITE_54,
    SSPRITE_55,
    SSPRITE_56,
    SSPRITE_57,
    SSPRITE_58,
    SSPRITE_59,
    SSPRITE_MAX = 90
};


extern s32 gTotalScore;
extern s32 gStageScore;


void Score_GivePoints(s32);
void Sprite_SpawnSecondary(u32 y, u32 x, u8 id);
void func_807687C(u32 id, u32 y, u32 x, u32 amount);

#endif  // SCORE_H