#include "gba/input.h"
#include "control.h"
#include "io.h"
#include "types.h"


void key_poll(void) {
    u16 keys_read;

    keys_read = ~read16(REG_KEYINPUT) & KEY_MASK;
    keys_pressed = keys_read & ~keys_held_copy;
    keys_held_copy = keys_held = keys_read;
}
