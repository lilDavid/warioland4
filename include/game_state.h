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


extern u8 gCurrentRoom;

extern s16 gMainGameMode;
extern s16 gSubGameMode;

extern u8 gDisableSoftReset;

extern u8 gUnk_3000C41;

#endif  // GAME_STATE_H
