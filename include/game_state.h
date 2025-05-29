#ifndef GAME_STATE_H
#define GAME_STATE_H

#include "gba.h"


enum GameMode {
    GM_TITLE = 0,
    GM_LEVEL_SELECT = 1,
    GM_IN_GAME = 2,
    GM_SOFT_RESET = 3,
    GM_PAUSE = 4,
    GM_5 = 5,
    GM_6 = 6,  // Minigames?
    GM_7 = 7,  // Item shop?
    GM_DEMO = 8,
    GM_9 = 9,
    GM_SAVE_RESET = 10,
    GM_11 = 11,
    GM_ENDING = 12,
    GM_MAX = 13
};


s16 main_game_mode;
s16 secondary_game_mode;

u8 disable_soft_reset;

#endif  // GAME_STATE_H
