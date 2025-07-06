#ifndef GAME_STATE_H
#define GAME_STATE_H

#include "gba.h"


enum Passage {
    PASSAGE_ENTRY,
    PASSAGE_EMERALD,
    PASSAGE_RUBY,
    PASSAGE_TOPAZ,
    PASSAGE_SAPPHIRE,
    PASSAGE_GOLDEN,
    PASSAGE_SOUND_ROOM,
    PASSAGE_MAX
};

#define ENTRY_GOLDEN_STAGE_COUNT (1)
#define NORMAL_STAGE_COUNT (4)
#define STAGE_BOSS (4)
#define STAGE_MINIGAMES (5)
#define STAGE_MAX (6)


enum Difficulty {
    DIFFICULTY_NORMAL,
    DIFFICULTY_HARD,
    DIFFICULTY_SUPER_HARD,
};

enum ClearMessage {
    CLEAR_MESSAGE_TRY_FOR_ALL_TREASURES,
    CLEAR_MESSAGE_ALL_TREASURES,
    CLEAR_MESSAGE_SUPER_HARD_UNLOCKED,
};

enum TitleScreenStyle {
    TITLE_STYLE_NORMAL,
    TITLE_STYLE_S_HARD_UNLOCKED,
};

enum Language {
    LANGUAGE_ENGLISH,
    LANGUAGE_JAPANESE,
};

enum SaveFile {
    SAVE_A,
    SAVE_B,
    SAVE_COUNT
};

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


extern u8 gCurrentPassage;
extern u8 gCurrentStageNumber;

extern u8 gCurrentPassageTemp;
extern u8 gClearMessage;
extern u8 gUnk_3000012;
extern u8 gSaveFlag;
extern u8 gUnk_3000014;
extern u8 gTitleScreenStyle;
extern u8 gLanguage;
extern u8 gDifficulty;
extern u8 gUnk_3000018;
extern u8 gSelectedSaveFile;

extern u8 gDisableSoftReset;

extern u8 gCurrentRoom;

extern s16 gMainGameMode;
extern s16 gSubGameMode;

extern u8 gUnk_3000C41;

#endif  // GAME_STATE_H
