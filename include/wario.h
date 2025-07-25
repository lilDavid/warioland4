#ifndef WARIO_H
#define WARIO_H

#include "gba.h"


#define MAX_HEARTS (8)
#define HEART_GAUGE_MAX (8)


enum WarioReaction {
    REACT_NORMAL,
    REACT_WATER,
    REACT_FIRE,
    REACT_FAT,
    REACT_FROZEN,
    REACT_ZOMBIE,
    REACT_SNOWMAN,
    REACT_BOUNCY,
    REACT_PUFFY,
    REACT_BAT,
    REACT_FLAT,
    REACT_MASK,
    REACT_MAX
};


struct WarioData {
    /* 0x00 */ u8 reaction;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u8 damageTimer;
    /* 0x05 */ u8 unk_05;
    /* 0x06 */ u8 unk_06;
    /* 0x07 */ u8 unk_07;
    /* 0x08 */ u8 unk_08;
    /* 0x09 */ u8 unk_09;
    /* 0x0A */ u8 unk_0A;
    /* 0x0C */ u16 unk_0C;
    /* 0x0E */ u16 horizontalDirection;
    /* 0x10 */ u16 verticalDirection;
    /* 0x12 */ u16 xPosition;
    /* 0x14 */ u16 yPosition;
    /* 0x16 */ s16 xVelocity;
    /* 0x18 */ s16 yVelocity;
    /* 0x1A */ u8 unk_1A;
    /* 0x1C */ s16 unk_1C;
    /* 0x1E */ u8 unk_1E;
    /* 0x1F */ u8 unk_1F;
    /* 0x20 */ void* unk_20;
    /* 0x24 */ void* unk_24;
    /* 0x28 */ u16 unk_28;
    /* 0x2C */ void* unk_2C;
    /* 0x30 */ u16 unk_30;
    /* 0x32 */ s16 unk_32;
    /* 0x34 */ s16 unk_34;
    /* 0x36 */ s16 unk_36;
    /* 0x38 */ s16 unk_38;
    /* 0x3A */ u8 unk_3A;
    /* 0x3B */ u8 unk_3B;
}; /* size: 0x3C */


struct WarioLife {
    u8 current;
    u8 filling;
    u8 unk_2;
    u8 unk_3;
};


extern struct WarioData gWarioData;

extern struct WarioLife gHeartMeter;
extern struct WarioLife gHeartGauge;

extern u16 gWarioPauseTimer;
extern u8 gDisableWario;

#endif  // WARIO_H