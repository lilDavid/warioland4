#ifndef DEMO_INPUT_H
#define DEMO_INPUT_H

#include "gba.h"


enum DemoState {
    DEMO_STATE_NONE,
    DEMO_STATE_RECORDING,
    DEMO_STATE_PLAYBACK,
};

extern u8 gDemoState;


void func_80102D8(void);
void DemoInput_Record(void);
void DemoInput_Playback(void);
void DemoInput_ReadButtons(void);
void DemoInput_Init(void);

#endif  // DEMO_INPUT_H