#ifndef SPRITE_UTIL_H
#define SPRITE_UTIL_H

#include "gba.h"


extern u8 gUnk_3000A50;
extern u8 gUnk_3000A51;


extern const s16 sUnk_8352ADC[];
extern const s16 sUnk_8352AFC[];
extern const s16 sUnk_8352B18[];
extern const s16 sUnk_8352B40[];


void func_80238A4(void);
void func_80238E8(void);
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
void func_8024524(void);
void func_8024554(void);
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
void func_8025634(void);
void func_80256D4(void);
void func_8025774(void);
void func_8025814(void);
void func_8025A00(void);
void func_8025AA0(void);
void func_8024AC0(void);
void func_8025B40(void);
void func_8025BE0(void);
u32 func_8026210(u32, u32);
void func_8026374(void);
void func_80263E0(void);
void func_8026838(void);
u32 SpriteUtil_DespawnChildWithParent(u32 parentId);
void SpriteUtil_TurnTowardWario(void);

#endif  // SPRITE_UTIL_H
