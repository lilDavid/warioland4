#ifndef DEMO_H
#define DEMO_H

#include "gba.h"


#define DEMO_INPUT_SIZE 256


extern u16 gDemoInputs[DEMO_INPUT_SIZE];
extern u16 gDemoInputLengths[DEMO_INPUT_SIZE];
extern u16 gDemoSequenceIndex;
extern u16 gDemoButtonPressTimer;
extern u16 gDemoButtonsPressed;

#endif  // DEMO_H