#ifndef SCORE_H
#define SCORE_H

#include "global_data.h"
#include "oam.h"
#include "types.h"

typedef void (*SecondarySpriteAIFunc)(void);

// Number of points per internal unit of score
#define SCORE_RATIO 10
// Convert an amount of points for storage
#define CONVERT_SCORE(points) ((points) / SCORE_RATIO)

#define MAX_SCORE CONVERT_SCORE(999990)

#define BOSS_REWARD_55_SEC jewelPieceNE
#define BOSS_REWARD_35_SEC jewelPieceSE
#define BOSS_REWARD_15_SEC jewelPieceSW
#define SHOW_BOSS_DOOR_OPENING jewelPieceNW
#define BOSS_DEFEATED keyzer
#define DIVA_DEFEATED cd

#define SCORE_SPRITE_COUNT 8

enum ScoreSpriteID {
    SSPRITE_SCORE_10,
    SSPRITE_SCORE_50,
    SSPRITE_SCORE_100,
    SSPRITE_SCORE_500,
    SSPRITE_SCORE_1000,
    SSPRITE_ENEMY_KILLED_EFFECT,
    SSPRITE_06,
    SSPRITE_07,
    SSPRITE_08,
    SSPRITE_09,
    SSPRITE_0A,
    SSPRITE_0B,
    SSPRITE_0C,
    SSPRITE_0D,
    SSPRITE_0E,
    SSPRITE_0F,
    SSPRITE_10,
    SSPRITE_11,
    SSPRITE_12,
    SSPRITE_13,
    SSPRITE_14,
    SSPRITE_15,
    SSPRITE_16,
    SSPRITE_17,
    SSPRITE_18,
    SSPRITE_19,
    SSPRITE_1A,
    SSPRITE_1B,
    SSPRITE_1C,
    SSPRITE_1D,
    SSPRITE_1E,
    SSPRITE_1F,
    SSPRITE_20,
    SSPRITE_21,
    SSPRITE_22,
    SSPRITE_23,
    SSPRITE_24,
    SSPRITE_25,
    SSPRITE_26,
    SSPRITE_27,
    SSPRITE_28,
    SSPRITE_29,
    SSPRITE_2A,
    SSPRITE_2B,
    SSPRITE_2C,
    SSPRITE_2D,
    SSPRITE_TIME_UP_COIN,
    SSPRITE_2F,
    SSPRITE_30,
    SSPRITE_31,
    SSPRITE_32,
    SSPRITE_33,
    SSPRITE_34,
    SSPRITE_35,
    SSPRITE_36,
    SSPRITE_37,
    SSPRITE_38,
    SSPRITE_39,
    SSPRITE_3A,
    SSPRITE_3B,
    SSPRITE_3C,
    SSPRITE_3D,
    SSPRITE_3E,
    SSPRITE_3F,
    SSPRITE_40,
    SSPRITE_JEWEL_PIECE_ICONS,
    SSPRITE_CD_ICON,
    SSPRITE_43,
    SSPRITE_44,
    SSPRITE_45,
    SSPRITE_46,
    SSPRITE_47,
    SSPRITE_48,
    SSPRITE_49,
    SSPRITE_4A,
    SSPRITE_KEYZER,
    SSPRITE_WARIO_TIME_UP,
    SSPRITE_WARIO_DYING,
    SSPRITE_TIMER,
    SSPRITE_4F,
    SSPRITE_50,
    SSPRITE_51,
    SSPRITE_52,
    SSPRITE_53,
    SSPRITE_54,
    SSPRITE_55,
    SSPRITE_56,
    SSPRITE_57,
    SSPRITE_58,
    SSPRITE_59,
    SSPRITE_COUNT = 90
};

enum TimerDigitUpdate {
    TIMER_DIGIT_NO_UPDATE,
    TIMER_DIGIT_SECONDS_ONES,
    TIMER_DIGIT_SECONDS_TENS,
    TIMER_DIGIT_MINUTES,
};

enum TimerSeparatorUpdate {
    TIMER_SEPARATOR_NO_UPDATE,
    TIMER_SEPARATOR_HIDE,
    TIMER_SEPARATOR_SHOW,
};

enum TimerColor {
    TIMER_COLOR_WHITE = 0x00,
    TIMER_COLOR_YELLOW = 0x10,
    TIMER_COLOR_RED = 0x20,
};

enum ItemStatus {
    ITEM_STATUS_NOT_COLLECTED,
    ITEM_STATUS_1,
    ITEM_STATUS_2,
    ITEM_STATUS_OWNED
};

struct ItemCollection {
    u8 jewelPieceNE : 1;
    u8 jewelPieceSE : 1;
    u8 jewelPieceSW : 1;
    u8 jewelPieceNW : 1;
    u8 cd : 1;
    u8 keyzer : 1;
};

struct SecondarySpriteData {
    u8 status;
    u8 currentAnimationFrame;
    u8 globalID;
    u8 pose;
    u8 work0;
    u8 work1;
    u16 animationTimer;
    u16 yPosition;
    u16 xPosition;
};

struct Timer {
    s8 secondsOnes;
    s8 secondsTens;
    s8 minutes;
};

extern u16 gUnk_3000A64;
extern struct ItemCollection gCurrentCollection[PASSAGE_MAX][STAGE_MAX];
extern s32 gHighScoreTable[PASSAGE_MAX][NORMAL_STAGE_COUNT];
extern struct SecondarySpriteData gSecondarySpriteData[SCORE_SPRITE_COUNT];
extern struct SecondarySpriteData gCurrentSecondarySprite;
extern s32 gInGameTimerFrames;
extern struct Timer gInGameTimer;
extern s32 gTotalScore;
extern s32 gStageScore;
extern s8 gScoreDigits[5];
extern u8 gLastTimerDigitChanged;
extern u8 gScoreUpdated;
extern u8 gTimerSeparatorUpdate;
extern u8 gUnk_3000C04;
extern u8 gUnk_3000C05;
extern u8 gUnk_3000C06;
extern u8 gCollectedNEJewelPiece;
extern u8 gCollectedSEJewelPiece;
extern u8 gCollectedSWJewelPiece;
extern u8 gCollectedNWJewelPiece;
extern u8 gCollectedCD;
extern u8 gCollectedKeyzer;
extern u8 gSwitchPressed;
extern u8 gUnk_3000C0E;
extern const u16* gCurrentSecondarySpriteOamData;
extern u16 gUnk_3000C14;
extern u16 gUnk_3000C16;
extern u16 gUnk_3000C18;
extern u16 gUnk_3000C1A;
extern u8* gCurrentHeartMeterGfx;
extern u8* gCurrentHeartGaugeGfx;
extern u8 gVortexGfxSlot;
extern u16 gVortexYPosition;
extern u16 gVortexXPosition;
extern u8 gUnk_3000C2A;
extern u8 gUnk_3000C2B;
#define gHasBossChest55sec gCollectedNEJewelPiece
#define gHasBossChest35sec gCollectedSEJewelPiece
#define gHasBossChest15sec gCollectedSWJewelPiece
#define gHasGoldenDivaChest1 gCollectedNEJewelPiece
#define gHasGoldenDivaChest2 gCollectedSEJewelPiece
#define gHasGoldenDivaChest3 gCollectedSWJewelPiece
#define gHasGoldenDivaChest4 gCollectedNWJewelPiece
extern u8 gHasGoldenDivaChest5;
extern u8 gHasGoldenDivaChest6;
extern u8 gHasGoldenDivaChest7;
extern u8 gHasGoldenDivaChest8;
extern u8 gHasGoldenDivaChest9;
extern u8 gHasGoldenDivaChest10;
extern u8 gHasGoldenDivaChest11;
extern u8 gHasGoldenDivaChest12;
extern u8 gGoldenTreasureCount;

void ProcessSecondarySprites(void);
void ScoreLoadDigitsGfx(void);
void ScoreLoadTimerDigitsGfx(void);
void ScoreLoadTimerColonGfx(void);
void ScoreKillWario(void);
void ScorePlayTimeUpSound(void);
void ScoreCountTimer(void);
u32 ScoreLoadStageState(void);
void ScoreInit(void);
void DrawSecondarySprites(s32 slot);
void ScoreGivePoints(s32 amount);
// I can only assume something went horribly wrong when updating this header during development
// because not even implicit declarations explain the need to do this
#ifdef SPRITE_SPAWN_SECONDARY_U16
void SpriteSpawnSecondary(u16 y, u16 x, u8 id);
#else
void SpriteSpawnSecondary(u32 y, u32 x, u8 id);
#endif
void func_8076784(void);
void func_80767B0(void);
void ScoreSpawnCoins(u16 yPosition, u16 xPosition, s32 amount);
void ScoreDropCoinsFromEnemy(u16 id, u16 yPosition, u16 xPosition, s32 amount);
void ScoreDropCoinsFromWario(s32 scoreChange);
void ScoreCollectBlueCrystal(u16 yPosition, u16 xPosition);
void ScoreCollectRedCrystal(u16 yPosition, u16 xPosition);
void func_8076998(u16 yPosition, u16 xPosition, u8 arg2, u8 arg3, u8 arg4);
void ScoreSpriteAnimate(const struct AnimationFrame* pOamData);

#endif  // SCORE_H
