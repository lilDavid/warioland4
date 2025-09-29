#ifndef SPRITE_UTIL_H
#define SPRITE_UTIL_H

#include "gba.h"

#define SPRITE_UTIL_LOOKUP_GRAVITY(table)                                       \
    yVelocity = table[timer];                                                   \
    if (yVelocity == S16_MAX) {                                                 \
        yVelocity = table[timer - 1];                                           \
        gCurrentSprite.yPosition += yVelocity;                                  \
    } else {                                                                    \
        gCurrentSprite.work3++;                                                 \
        gCurrentSprite.yPosition += yVelocity;                                  \
    }

#define SPRITE_UTIL_LOOKUP_GRAVITY_BY_STATUS_5(tableIfSet, tableIfClear)        \
    timer = gCurrentSprite.work3;                                               \
    if (gCurrentSprite.statusBits & SPRITE_STATUS_5) {                          \
        SPRITE_UTIL_LOOKUP_GRAVITY(tableIfSet);                                 \
    } else {                                                                    \
        SPRITE_UTIL_LOOKUP_GRAVITY(tableIfClear);                               \
    }

#define SpriteUtilLookupGravity(table)                                          \
{                                                                               \
    s16 yVelocity;                                                              \
    u32 timer;                                                                  \
    timer = gCurrentSprite.work3;                                               \
    SPRITE_UTIL_LOOKUP_GRAVITY(table);                                          \
}

#define SpriteUtilLookupGravityByStatus5(tableIfSet, tableIfClear)              \
{                                                                               \
    s16 yVelocity;                                                              \
    u32 timer;                                                                  \
    SPRITE_UTIL_LOOKUP_GRAVITY_BY_STATUS_5(tableIfSet, tableIfClear);           \
}

#define SpriteUtilLookupFloatingAnimation(table)                                \
{                                                                               \
    s16 yVelocity;                                                              \
    u8 timer;                                                                   \
    timer = gCurrentSprite.work3;                                               \
    yVelocity = table[timer];                                                   \
    if (yVelocity == S16_MAX) {                                                 \
        yVelocity = table[0];                                                   \
        timer = 0;                                                              \
    }                                                                           \
    gCurrentSprite.work3 = timer + DELTA_TIME;                                  \
    gCurrentSprite.yPosition += yVelocity;                                      \
}

enum NearSprite {
    NS_OUT_OF_RANGE = 0,
    NS_ABOVE = 1,
    NS_BELOW = 2,
    NS_LEFT = 4,
    NS_RIGHT = 8,
};

extern u8 gUnk_3000A50;
extern u8 gUnk_3000A51;

extern const s16 sUnk_83529A8[];
extern const s16 sUnk_83529E8[];
extern const s16 sUnk_8352A28[];
extern const s16 sUnk_8352A68[];
extern const s16 sUnk_8352AA2[];
extern const s16 sUnk_8352AAC[];
extern const u16 sUnk_8352AB2[];
extern const u16 sUnk_8352ABE[];
extern const u16 sUnk_8352AC6[];
extern const u16 sUnk_8352AD4[];
extern const s16 sUnk_8352ADC[];
extern const s16 sUnk_8352AFC[];
extern const s16 sUnk_8352B18[];
extern const s16 sUnk_8352B40[];
extern const s16 sUnk_8352B58[];
extern const s16 sUnk_8352B78[];
extern const u16 sUnk_8352B90[];
extern const u16 sUnk_8352BD0[];
extern const u16 sUnk_8352BFC[];
extern const u16 sUnk_8352C3C[];
extern const u16 sUnk_8352C70[];
extern const u16 sUnk_8352CB0[];

void func_80238A4(void);
void func_80238E8(void);
void func_802391C(void);
u32 func_8023944(u16 y, u16 x);
u32 func_8023A60(u16 y, u16 x);
void func_8023B88(void);
void func_8023BFC(u16 y, u16 x);
void func_8023C94(void);
void func_8023CD8(void);
void func_8023D48(void);
void func_8023EE0(void);
void func_8024060(void);
void func_80240F0(void);
void func_8024180(void);
void func_80242C8(void);
void func_8024410(void);
void func_8024444(void);
void func_8024478(void);
void func_802449C(void);
void func_80244C0(void);
void func_80244E0(void);
void SpriteUtilDieAfterDelay(void);
void SpriteUtilDie(void);
void func_8024570(void);
void func_80245FC(void);
void func_8024688(void);
void func_80246B8(void);
void func_802473C(void);
void func_802476C(void);
void func_80247F0(void);
void func_8024820(void);
void func_80248A4(void);
void func_80248D4(void);
void func_8024958(void);
void func_8024988(void);
void func_8024A0C(void);
void func_8024A3C(void);
void func_8024AC0(void);
void func_8024AD4(void);
void func_8024BEC(void);
void func_8024C00(void);
void func_8024D18(void);
void func_8024E58(void);
void func_8024F98(void);
void func_8025240(void);
void func_80254E8(void);
void func_8025634(void);
void func_80256D4(void);
void func_8025774(void);
void func_8025814(void);
void func_80258B4(void);
void func_8025A00(void);
void func_8025AA0(void);
void func_8025B40(void);
void func_8025BE0(void);
void func_8025C80(void);
void func_8025D34(void);
void func_8025DE8(void);
void func_8025E98(void);
void func_8025F48(void);
void func_802608C(void);
u32 SpriteUtilFindParentSlot(u8 parentId);
u32 SpriteUtilWaitCheckWarioNearbyLeftRight(s32 maxDY, s32 maxDX);
u32 SpriteUtilCheckWarioNearbyLeftRight(s32 maxDY, s32 maxDX);
u32 SpriteUtilCheckWarioNearbyAboveBelow(s32 maxDY, s32 maxDX);
void SpriteUtilTurnTowardWario(void);
void SpriteUtilMoveForward1Subpixel(void);
void SpriteUtilMoveForward1HalfPixel(void);
void func_8026374(void);
void func_80263AC(void);
void func_80263E0(void);
void func_8026418(void);
void func_8026838(void);
void func_8026450(void);
void func_80264A0(void);
void func_802650C(void);
void func_802655C(void);
void func_80265C8(s32 slot);
void func_80267C0(void);
void func_8026838(void);
u32 SpriteUtilDespawnChildWithParent(u8 parentId);
u32 SpriteUtilFindParentSlotOrU8MaxUnused(u8 parentId);
u32 SpriteUtilDespawnIfSpriteExists(u8 id);
u32 SpriteUtilCountSpriteType(u8 id);
void func_80269EC(void);
void func_8026A54(void);
void SpriteUtilFindSpriteSlotWork3(u8 id);
u32 SpriteUtilFindSpriteSlot(u8 id);
u32 SpriteUtilFindSpriteSlotOrU8Max(u8 id);
void SpriteUtilFindOwnSlot(u8 roomSlot);
void SpriteUtilFindSpriteWork3(u8 id, u8 roomSlot);
s32 SpriteUtilFindSprite(u8 id, u8 roomSlot);
void SpriteUtilFindParentSlotWork3(u8 parentId);
s32 SpriteUtilFindParentSlotOrU8Max(u8 parentId);
s32 SpriteUtilFindSprite14(u8 roomSlot);
void SpriteUtilClearAllSpritesStatus3(void);
void SpriteUtilSetAllSpritesHighPriority(void);
void SpriteUtilUnsetAllSpritesHighPriority(void);
void SpriteUtilStartBossTimer(void);
void func_8026E78(void);
void SpriteUtilFadeBackgroundToBlack(void);
void SpriteUtilSetWarioBossVictoryPose(void);

#endif  // SPRITE_UTIL_H
