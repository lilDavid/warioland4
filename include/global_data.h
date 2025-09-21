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

struct Unk_300002E_Data {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
};

struct DebugInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
};

struct BackgroundInfo {
    u8* pBg0Data;
    u16 bg0Width;
    u16 bg0Height;
    u8* pBg1Data;
    u16 bg1Width;
    u16 bg1Height;
    u8* pBg2Data;
    u16 bg2Width;
    u16 bg2Height;
    u8* pBg3Data;
    u16 bg3Width;
    u16 bg3Height;
};

struct RoomHeader {
    u8 tileset;
    u8 bg0Param;
    u8 bg1Param;
    u8 bg2Param;
    u8 bg3Param;
    u8* pBg0Data;
    u8* pBg1Data;
    u8* pBg2Data;
    u8* pBg3Data;
    u8 cameraControl;
    u8 layer3Scrolling;
    u8 bgPriorityAlpha;
    void* pHardSpriteData;
    void* pNormalSpriteData;
    void* pSHardSpriteData;
    u8 raster;
    u8 water;
    u16 musicVolume;
};

struct BackgroundScroll {
    u16 bg0Horizontal;
    u16 bg0Vertical;
    u16 bg1Horizontal;
    u16 bg1Vertical;
    u16 bg2Horizontal;
    u16 bg2Vertical;
    u16 bg3Horizontal;
    u16 bg3Vertical;
};

struct Window {
    u8 left;
    u8 right;
    u8 top;
    u8 bottom;
    u8 content;
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
extern s8 gUnk_300001A;
extern u8 gUnk_300001B;
// gUnk_300001C
// gUnk_300001D
extern u8 gDisableSoftReset;
extern u8 gUnk_3000020;
extern u8 gUnk_3000021;
extern u8 gUnk_3000022;
// gUnk_3000023
extern u8 gCurrentRoom;
extern u8 gUnk_3000025;
// gUnk_3000026
// gUnk_3000027
// gUnk_3000028
extern u16 gBldAlpha;
extern u16 gBldCnt;
extern struct Unk_300002E_Data gUnk_300002E;
extern u8 gDrawWarioOverBackground;
// gUnk_3000034
// gUnk_3000035
extern u8 gUnk_3000037;
// gUnk_300003A
// gUnk_300003C
// gUnk_300003E
// gUnk_3000040
// gUnk_3000044
// gUnk_3000045
// gUnk_3000046
extern u8 gUnk_3000047;
extern u8 gStageExitType;
extern struct DebugInfo gUnk_300004C;
extern struct BackgroundInfo gBackgroundInfo;
extern struct RoomHeader gCurrentRoomHeader;
// gUnk_30000A0
extern struct BackgroundScroll gBackgroundScroll;
extern struct Window gWindow;

#endif  // GLOBAL_DATA_H
