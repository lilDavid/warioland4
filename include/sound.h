#ifndef SOUND_H
#define SOUND_H

#include "gba.h"


enum {
    SOUND_3D = 0x3D,
} SoundID;


void sound_init(void);
void func_0022C8(u32);
void sound_play(u16);

#endif  // SOUND_H
