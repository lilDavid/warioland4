#include "gba.h"
#include "control.h"
#include "io.h"


void PollInput(void) {
    u16 keys;

    keys = ~read16(REG_KEYINPUT) & KEY_MASK;
    gButtonsPressed = keys & ~gButtonsHeldCopy;
    gButtonsHeldCopy = gButtonsHeld = keys;
}
