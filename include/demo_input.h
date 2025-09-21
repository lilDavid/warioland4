#ifndef DEMO_INPUT_H
#define DEMO_INPUT_H

#include "gba.h"

enum DemoState {
    DEMO_STATE_NONE,
    DEMO_STATE_RECORDING,
    DEMO_STATE_PLAYBACK,
};

extern u8 gDemoState;

void DemoInputSubroutine(void);
void DemoInputRecord(void);
void DemoInputPlayback(void);
void DemoInputReadButtons(void);
void DemoInputInit(void);

#endif  // DEMO_INPUT_H
