#ifndef SOUND_H
#define SOUND_H

#include "gba.h"


enum SoundID {
    SOUND_3D = 0x3D,
};


void Sound_Init(void);
void func_80022C8(u32);
void Sound_Play(u16);

#endif  // SOUND_H
