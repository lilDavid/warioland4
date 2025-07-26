#ifndef GLOBAL_DATA_H
#define GLOBAL_DATA_H

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


// gUnk_3000000
extern u8 gCurrentPassage;
extern u8 gCurrentStageNumber;
extern s8 gCurrentStageID;
extern u16 gRandomSeed;
// gUnk_3000008
// gUnk_300000A
extern u8 gCurrentPassageTemp;
extern u8 gClearMessage;
extern u8 gHasTemporarySave;
extern u8 gSaveFlag;
extern u8 gUnk_3000014;
extern u8 gTitleScreenStyle;
extern u8 gLanguage;
extern u8 gDifficulty;
extern u8 gResetSaveFile;
// gUnk_3000019
// gUnk_300001A
// gUnk_300001B
// gUnk_300001C
// gUnk_300001D
extern u8 gDisableSoftReset;
extern u8 gUnk_3000020;
// gUnk_3000021
extern u8 gUnk_3000022;
// gUnk_3000023
extern u8 gCurrentRoom;
extern u8 gUnk_3000025;
// gUnk_3000026
// gUnk_3000027
// gUnk_3000028
// gUnk_300002A
// gUnk_300002C
// gUnk_300002E
// gUnk_3000033
// gUnk_3000034
// gUnk_3000035
// gUnk_3000037
// gUnk_300003A
// gUnk_300003C
// gUnk_300003E
// gUnk_3000040
// gUnk_3000044
// gUnk_3000045
// gUnk_3000046
// gUnk_3000047
extern u8 gStageExitType;
// gUnk_300004C
// gBackgroundInfo
// gCurrentRoomHeader
// gUnk_30000A0
// gUnk_30000A8

#endif  // GLOBAL_DATA_H
