#ifndef DEMO_H
#define DEMO_H

#include "gba.h"

#define DEMO_INPUT_SIZE 256

extern u16 gDemoInputs[DEMO_INPUT_SIZE];
extern u16 gDemoInputLengths[DEMO_INPUT_SIZE];
extern u16 gDemoSequenceIndex;
extern u16 gDemoButtonPressTimer;
extern u16 gDemoButtonsPressed;

// func_8072964()
// func_8072B24()
// func_8072B74()
// func_8072B88()
u32 func_8072B98(void);

#endif  // DEMO_H
