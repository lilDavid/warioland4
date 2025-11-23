#ifndef SPRITE_COLLISION_H
#define SPRITE_COLLISION_H

#include "types.h"

void func_801E4B0(void);
void func_801E4D4(void);
void func_801E518(void);
void SpriteCollisionMakeWarioDropCoins(s32 slot);
void func_801E884(s32 slot);
void func_801E92C(s32 slot);
void SpriteCollisionTransformWarioFlaming(void);
void SpriteCollisionTransformWarioFat(void);
void SpriteCollisionTransformWarioZombie(void);
void SpriteCollisionTransformWarioSnowman(void);
void SpriteCollisionTransformWarioPuffy(void);
void SpriteCollisionTransformWarioBouncy(void);
void SpriteCollisionTransformWarioBat(void);
void SpriteCollisionTransformWarioFrozen(void);
void SpriteCollisionTransformWarioFlat(void);
void SpriteCollisionTransformWarioMask(void);
void func_801EBCC(s32 slot);
void func_801EC30(s32 slot);
void func_801EC74(s32 slot);
void func_801ECB8(s32 slot);
void func_801ECFC(s32 slot);
void func_801ED18(void);
void func_801ED48(s32 slot);
void SpriteCollisionMaybeTransformWarioBubble(s32 slot);
void SpriteCollisionTakeDamageLeft(void);
void SpriteCollisionTakeDamageRight(void);
void SpriteCollisionLandOnEnemyLeft(void);
void SpriteCollisionLandOnEnemyRight(void);
void func_801EE9C(void);
void func_801EEE0(void);
void SpriteCollisionLandOnEnemy(void);
void func_801EF50(void);
void func_801EF94(void);
u8 func_801EFD4(void);
u8 func_801F00C(s32 slot, u16 direction, u8 arg2);
u8 func_801F14C(s32 slot, u8 arg1);
u8 func_801F200(s32 slot, u16 direction);
u8 func_801F43C(s32 slot, u8 arg1);
s32 SpriteCollisionCheckObjectsTouching(
    u16 o1Top,
    u16 o1Bottom,
    u16 o1Left,
    u16 o1Right,
    u16 o2Top,
    u16 o2Bottom,
    u16 o2Left,
    u16 o2Right
);
void SpriteCollisionProcess(void);
void SpriteCollisionTakeDamageUnderwater(s32 slot);
void SpriteCollisionUnderwaterBonk(s32 slot, u16 left, u16 right, u16 xPosition);
void func_80204F4(s32 slot, u16 left, u16 right, u16 xPosition);
void func_80206B8(s32 slot, u16 left, u16 right, u16 xPosition);
void func_80207D8(s32 slot);
void func_8020958(s32 slot, u16 direction);
void func_80209E0(s32 slot, u16 left, u16 right, u16 xPosition);
void func_8020B10(s32 slot, u16 direction);
void func_8020BB8(s32 slot, u16 direction);
void func_8020C78(s32 slot, u16 direction);
void func_8020CEC(s32 slot, u16 direction, u16 left, u16 right, u16 xPosition);
void func_8020E1C(s32 slot, u16 direction);
void func_8020F28(s32 slot, u16 direction);
void func_8020FF4(s32 slot, u16 direction);
void func_80210E8(s32 slot, u16 direction);
void func_80211E0(s32 slot);
void func_802125C(s32 slot, u16 direction);
void func_8021318(s32 slot, u16 direction);
void func_80213F4(s32 slot, u16 currentX, u16 previousX);
void func_8021434(s32 slot, u16 left, u16 right);
void func_8021500(s32 slot);
void func_8021564(s32 slot);
void func_80215C0(void);
void func_80215E8(s32 slot);
void func_8021650(s32 slot);
void func_80216B8(s32 slot);
void func_8021720(s32 slot);
void func_8021734(s32 slot);
void func_8021784(
    s32 slot,
    u16 direction,
    u16 spriteTop,
    u16 spriteBottom,
    u16 spriteLeft,
    u16 spriteRight,
    u16 warioLeft,
    u16 warioRight
);
void func_8021C30(s32 slot, u16 top);
void func_8021CC8(s32 slot, u16 top);
void func_8021D5C(s32 slot, u16 top);
void func_8021DD0(s32 slot, u16 top);
void func_8021E6C(s32 slot, u16 bottom, u16 left, u16 right);
void func_8021F84(s32 slot, u16 left, u16 right, u16 top);
void func_80220F8(s32 slot);
void func_8022118(s32 slot, u16 currentX, u16 previousX);
void func_8022188(s32 slot, u16 direction);
void func_8022220(s32 slot, u16 direction);
void func_80222D8(s32 slot, u16 bottom, u16 left, u16 right);
void func_8022524(s32 slot, u16 spriteTop, u16 spriteBottom, u16 warioTop, u16 warioX);
void func_8022724(s32 slot, u16 direction);
void func_8022948(s32 slot, u16 top);
void func_8022AE8(s32 slot, u16 left, u16 right);
void func_8022C64(s32 slot);
void func_8022CE8(
    s32 slot,
    u16 warioY,
    u16 warioX,
    u16 warioLeft,
    u16 warioRight,
    u16 spriteLeft,
    u16 spriteRight,
    u16 direction
);
void func_8022EF8(s32 slot, u16 left, u16 right);
void func_8022FC8(s32 slot, u16 left, u16 right);
void func_8023110(s32 slot, u16 left, u16 right);
void func_80231F8(s32 slot, u16 direction);
void func_80232C4(s32 slot, u16 direction);
void func_80233B8(s32 slot, u16 direction);
void func_802349C(s32 slot, u16 direction);
void func_80235A0(s32 slot, u16 direction);
void func_80236C4(s32 slot, u16 direction, u16 left, u16 right);
void func_80237E4(s32 slot);

#endif  // SPRITE_COLLISION_H
