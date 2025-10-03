#ifndef WARIO_H
#define WARIO_H

#include "gba.h"

#include "oam.h"

#define MAX_HEARTS (8)
#define HEART_GAUGE_MAX (8)

typedef void (*WarioInteractionFunc)(u32);

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
    /* 0x01 */ u8 pose;
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
    /* 0x20 */ const u16* pOamData;
    /* 0x24 */ u8* pObjData1;
    /* 0x28 */ u16 objData1Size;
    /* 0x2C */ u8* pObjData2;
    /* 0x30 */ u16 objData2Size;
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

struct WarioAfterimage {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    const u16* unk4;
};

struct WarioEffect {
    u8 type;
    u8 status;
    u8 animationTimer;
    u8 unk_3;
    void* pObjData;
};

struct CarriedSprite {
    u8 state;
    u8 unk1;
    u16 xOffset;
    u16 yOffset;
};

struct WarioDustEffect {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u16 unk4;
    u16 unk6;
    struct AnimationFrameU16* unk8;
};

struct WarioAfterimageData {
    u16 previousXPositions[32];
    u16 previousYPositions[32];
};

struct WarioAnimation {
    struct AnimationFrame* left;
    struct AnimationFrame* right;
};

extern struct WarioData gWarioData;
extern struct WarioData gWarioDataCopy;
extern struct WarioLife gHeartMeter;
extern struct WarioLife gHeartGauge;
extern struct WarioAfterimage gUnk_3001930;
extern struct WarioAfterimage gUnk_3001938;
extern struct WarioEffect gCurrentWarioEffect;
extern struct CarriedSprite gCurrentCarriedSprite;
extern struct WarioDustEffect gWarioDustEffect1;
extern struct WarioDustEffect gWarioDustEffect2;
extern u8 gUnk_30019F0;
extern u16 gUnk_30019F2;
extern u16 gUnk_30019F4;
extern u16 gWarioPauseTimer;
extern u8 gDisableWario;

extern struct WarioAfterimageData gUnk_3003138;
extern s16 gUnk_30031B8;
extern s8 gUnk_30031BA;
extern s8 gUnk_30031BC;
extern u8 gUnk_30031BD;
extern s8 gUnk_30031BE;

extern struct WarioData sStartingWarioData;
extern struct WarioLife sStartingHeartMeter;
extern struct WarioLife sStartingHeartGauge;
extern struct WarioAfterimage sUnk_82DD0EC;
extern struct WarioEffect sStartingWarioEffect;
extern struct CarriedSprite sEmptyCarriedSprite;
extern struct WarioDustEffect sEmptyDustEffect;
extern struct WarioAnimation sUnk_82DDCD0[];
extern u16 sUnk_82DDDA0[];
extern u16 sUnk_82DDDC0[];
extern WarioInteractionFunc sUnk_82DECA0[];
extern u8 sUnk_82DF094[];

void WarioProcessControls();
void WarioProcessCollision();
void func_8010154();
void func_80101D0();
void func_8010154();

#endif  // WARIO_H
