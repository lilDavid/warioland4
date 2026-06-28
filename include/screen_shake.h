#ifndef SCREEN_SHAKE_H
#define SCREEN_SHAKE_H

#include "types.h"

u8 ScreenShakeRequestY(u8 duration, u8 amplitude);
u8 ScreenShakeRequestX(u8 duration);
u8 ScreenShakeRequestXWithAmplitude(u8 duration, u8 amplitude);
s32 ScreenShakeUpdateY(void);
s32 ScreenShakeUpdateX(void);

#endif  // SCREEN_SHAKE_H
