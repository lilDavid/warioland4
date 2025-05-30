#ifndef CONTROL_H
#define CONTROL_H

#include "gba.h"


#define CHECK_KEYS_ANY(input, combination) ((input) & (combination))
#define CHECK_KEYS_ALL(input, combination) (((input) & (combination)) == (combination))

extern u16 gButtonsHeld;
extern u16 gButtonsHeldCopy;
extern u16 gButtonsPressed;

void PollInput(void);

#endif  // CONTROL_H
