#include "gba.h"
#include "control.h"


void PollInput(void) {
    u16 keys;

    keys = ~REG_KEYINPUT & KEYS_MASK;
    gButtonsPressed = keys & ~gButtonsHeldCopy;
    gButtonsHeldCopy = gButtonsHeld = keys;
}
