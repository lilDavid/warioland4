#ifndef GBA_INPUT_H
#define GBA_INPUT_H

#include "gba/memory.h"


#define REG_KEYINPUT (REG_BASE + 0x130)

enum KEY {
    KEY_A = 1 << 0,
    KEY_B = 1 << 1,
    KEY_SELECT = 1 << 2,
    KEY_START = 1 << 3,
    KEY_RIGHT = 1 << 4,
    KEY_LEFT = 1 << 5,
    KEY_UP = 1 << 6,
    KEY_DOWN = 1 << 7,
    KEY_R = 1 << 8,
    KEY_L = 1 << 9,

    KEY_MASK = KEY_A | KEY_B | KEY_SELECT | KEY_START | KEY_RIGHT | KEY_LEFT | KEY_UP | KEY_DOWN | KEY_R | KEY_L,
};

#endif /* GBA_INPUT_H */
