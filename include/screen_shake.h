#ifndef SCREEN_SHAKE_H
#define SCREEN_SHAKE_H

u8 RequestXShake(u8 duration, u8 amplitude);
u8 RequestYShake(u8 duration);
u8 RequestYShakeWithAmplitude(u8 duration, u8 amplitude);
s32 TickXShake(void);
s32 TickYShake(void);

#endif  // SCREEN_SHAKE_H
