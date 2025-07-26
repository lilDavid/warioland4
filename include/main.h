#ifndef MAIN_H
#define MAIN_H

#include "types.h"


enum GameMode {
    GM_CUTSCENE = 0,
    GM_STAGE_SELECT = 1,
    GM_GAME_SCREEN = 2,
    GM_SOFT_RESET = 3,
    GM_PAUSE = 4,
    GM_QUIT = 5,
    GM_MINIGAMES = 6,
    GM_ITEM_SHOP = 7,
    GM_DEMO = 8,
    GM_FILE_SELECT = 9,
    GM_SAVE_RESET = 10,
    GM_11 = 11,
    GM_CREDITS = 12,
    GM_MAX = 13
};

extern s16 gMainGameMode;
extern s16 gSubGameMode;
extern s8 gUnk_3000C3E;
extern s8 gUnk_3000C3F;
extern s8 gUnk_3000C40;
extern u8 gMainTimer;

void AgbMain(void);
void InitializeGame(void);
void EmptyFunction(void);
void CheckSoftReset(void);
void ClearSRAM(void);

#endif  // MAIN_H