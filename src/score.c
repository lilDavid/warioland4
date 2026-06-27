#define SPRITE_SPAWN_SECONDARY_U16
#include "score.h"

#include "autosave.h"
#include "fixed_point.h"
#include "gba.h"
#include "hud.h"
#include "main.h"
#include "screen_shake.h"
#include "secondary_sprite_ai.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_collision.h"
#include "wario.h"

extern const struct AnimationFrame sUnk_840FB94[];
extern const u16 sStageEntryPassagePal[16];
extern const u16 sStageEmeraldPassagePal[16];
extern const u16 sStageRubyPassagePal[16];
extern const u16 sStageTopazPassagePal[16];
extern const u16 sStageSapphirePassagePal[16];
extern const u16 sStageGoldenPyramidPal[16];

SecondarySpriteAIFunc sSecondarySpriteAITable[SSPRITE_COUNT] = {
    [SSPRITE_SCORE_10] = func_8076E68,
    [SSPRITE_SCORE_50] = func_8076E7C,
    [SSPRITE_SCORE_100] = func_8076E90,
    [SSPRITE_SCORE_500] = func_8076EA4,
    [SSPRITE_SCORE_1000] = func_8076EB8,
    [SSPRITE_ENEMY_KILLED_EFFECT] = func_8076EF8,
    [SSPRITE_06] = func_8076F68,
    [SSPRITE_07] = func_8077044,
    [SSPRITE_08] = func_80776C8,
    [SSPRITE_09] = func_8077720,
    [SSPRITE_0A] = func_8077778,
    [SSPRITE_0B] = func_80777D0,
    [SSPRITE_0C] = func_8077828,
    [SSPRITE_0D] = func_8077880,
    [SSPRITE_0E] = func_80776F4,
    [SSPRITE_0F] = func_807774C,
    [SSPRITE_10] = func_80777A4,
    [SSPRITE_11] = func_80777FC,
    [SSPRITE_12] = func_8077854,
    [SSPRITE_13] = func_80778AC,
    [SSPRITE_14] = func_80778D8,
    [SSPRITE_15] = func_8077930,
    [SSPRITE_16] = func_8077988,
    [SSPRITE_17] = func_80779E0,
    [SSPRITE_18] = func_8077A38,
    [SSPRITE_19] = func_8077A90,
    [SSPRITE_1A] = func_8077904,
    [SSPRITE_1B] = func_807795C,
    [SSPRITE_1C] = func_80779B4,
    [SSPRITE_1D] = func_8077A0C,
    [SSPRITE_1E] = func_8077A64,
    [SSPRITE_1F] = func_8077ABC,
    [SSPRITE_20] = func_8077AE8,
    [SSPRITE_21] = func_8077B40,
    [SSPRITE_22] = func_8077B98,
    [SSPRITE_23] = func_8077BF0,
    [SSPRITE_24] = func_8077C48,
    [SSPRITE_25] = func_8077CA0,
    [SSPRITE_26] = func_8077B14,
    [SSPRITE_27] = func_8077B6C,
    [SSPRITE_28] = func_8077BC4,
    [SSPRITE_29] = func_8077C1C,
    [SSPRITE_2A] = func_8077C74,
    [SSPRITE_2B] = func_8077CCC,
    [SSPRITE_2C] = func_8077CF8,
    [SSPRITE_2D] = func_8077D24,
    [SSPRITE_TIME_UP_COIN] = func_80781FC,
    [SSPRITE_2F] = func_8076F38,
    [SSPRITE_30] = func_8076C00,
    [SSPRITE_31] = func_8077070,
    [SSPRITE_32] = func_807709C,
    [SSPRITE_33] = func_8076F68,
    [SSPRITE_34] = func_80773F8,
    [SSPRITE_35] = func_8077440,
    [SSPRITE_36] = func_8077488,
    [SSPRITE_37] = func_80774D0,
    [SSPRITE_38] = func_8077518,
    [SSPRITE_39] = func_8077560,
    [SSPRITE_3A] = func_80775A8,
    [SSPRITE_3B] = func_80775F0,
    [SSPRITE_3C] = func_8077638,
    [SSPRITE_3D] = func_8077680,
    [SSPRITE_3E] = func_8076CD8,
    [SSPRITE_3F] = func_8076DA0,
    [SSPRITE_40] = func_8076F94,
    [SSPRITE_JEWEL_PIECE_ICONS] = func_8078E30,
    [SSPRITE_CD_ICON] = func_807907C,
    [SSPRITE_43] = func_8076FC0,
    [SSPRITE_44] = func_8076FEC,
    [SSPRITE_45] = func_8077018,
    [SSPRITE_46] = func_8076ECC,
    [SSPRITE_47] = func_8077120,
    [SSPRITE_48] = func_80770C8,
    [SSPRITE_49] = func_80770F4,
    [SSPRITE_4A] = func_8077D50,
    [SSPRITE_KEYZER] = func_8077D5C,
    [SSPRITE_WARIO_TIME_UP] = func_807915C,
    [SSPRITE_WARIO_DYING] = func_8079574,
    [SSPRITE_TIMER] = func_80782A4,
    [SSPRITE_4F] = func_8078A80,
    [SSPRITE_50] = func_8076F38,
    [SSPRITE_51] = func_8074D9C,
    [SSPRITE_52] = func_8079868,
    [SSPRITE_53] = func_8079908,
    [SSPRITE_54] = func_8079930,
    [SSPRITE_55] = func_8079958,
    [SSPRITE_56] = func_8079980,
    [SSPRITE_57] = func_8079868,
    [SSPRITE_58] = func_8079868,
    [SSPRITE_59] = func_8079868,
};

IWRAM_DATA u16 gUnk_3000A64 = 0;
IWRAM_DATA struct ItemCollection gCurrentCollection[PASSAGE_MAX][STAGE_MAX] = {};
IWRAM_DATA s32 gHighScoreTable[PASSAGE_MAX][NORMAL_STAGE_COUNT] = {};
IWRAM_DATA struct SecondarySpriteData gSecondarySpriteData[SCORE_SPRITE_COUNT] = {};
IWRAM_DATA struct SecondarySpriteData gCurrentSecondarySprite = {};
IWRAM_DATA s32 gInGameTimerFrames = 0;
IWRAM_DATA struct Timer gInGameTimer = {};
IWRAM_DATA s32 gTotalScore = 0;
IWRAM_DATA s32 gStageScore = 0;
IWRAM_DATA s8 gScoreDigits[5] = {};
IWRAM_DATA u8 gLastTimerDigitChanged = 0;
IWRAM_DATA u8 gScoreUpdated = 0;
IWRAM_DATA u8 gTimerSeparatorUpdate = 0;
IWRAM_DATA u8 gUnk_3000C04 = 0;
IWRAM_DATA u8 gUnk_3000C05 = 0;
IWRAM_DATA u8 gUnk_3000C06 = 0;
IWRAM_DATA u8 gCollectedNEJewelPiece = 0;
IWRAM_DATA u8 gCollectedSEJewelPiece = 0;
IWRAM_DATA u8 gCollectedSWJewelPiece = 0;
IWRAM_DATA u8 gCollectedNWJewelPiece = 0;
IWRAM_DATA u8 gCollectedCD = 0;
IWRAM_DATA u8 gCollectedKeyzer = 0;
IWRAM_DATA u8 gSwitchPressed = 0;
IWRAM_DATA u8 gUnk_3000C0E = 0;
IWRAM_DATA const u16* gCurrentSecondarySpriteOamData = NULL;
IWRAM_DATA u16 gUnk_3000C14 = 0;
IWRAM_DATA u16 gUnk_3000C16 = 0;
IWRAM_DATA u16 gUnk_3000C18 = 0;
IWRAM_DATA u16 gUnk_3000C1A = 0;
IWRAM_DATA u8* gCurrentHeartMeterGfx = 0;
IWRAM_DATA u8* gCurrentHeartGaugeGfx = 0;
IWRAM_DATA u8 gVortexGfxSlot = 0;
IWRAM_DATA u16 gVortexYPosition = 0;
IWRAM_DATA u16 gVortexXPosition = 0;
IWRAM_DATA u8 gUnk_3000C2A = 0;
IWRAM_DATA u8 gUnk_3000C2B = 0;
IWRAM_DATA u8 gHasGoldenDivaChest5 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest6 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest7 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest8 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest9 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest10 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest11 = 0;
IWRAM_DATA u8 gHasGoldenDivaChest12 = 0;

void ProcessSecondarySprites(void)
{
    s32 i;

    for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
        if ((gSecondarySpriteData[i].status & 5) == 5) {
            gCurrentSecondarySprite = gSecondarySpriteData[i];
            sSecondarySpriteAITable[gCurrentSecondarySprite.globalID]();
            if (1 & gCurrentSecondarySprite.status) {
                DrawSecondarySprites(i);
            }
            gSecondarySpriteData[i] = gCurrentSecondarySprite;
        }
    }

    for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
        if ((gSecondarySpriteData[i].status & 5) == 1) {
            gCurrentSecondarySprite = gSecondarySpriteData[i];
            sSecondarySpriteAITable[gCurrentSecondarySprite.globalID]();
            if (1 & gCurrentSecondarySprite.status) {
                DrawSecondarySprites(i);
            }
            gSecondarySpriteData[i] = gCurrentSecondarySprite;
        }
    }

    ScoreCountTimer();
    if (gScoreUpdated) {
        ScoreLoadDigitsGfx();
    }
    if (gLastTimerDigitChanged) {
        ScoreLoadTimerDigitsGfx();
    }
    if (gTimerSeparatorUpdate) {
        ScoreLoadTimerColonGfx();
    }
}

void ScoreLoadDigitsGfx(void)
{
    DmaCopy16(3, sScoreDigitsGfx + TILE_SIZE_4BPP * gScoreDigits[4], 0x6011080, TILE_SIZE_4BPP);
    DmaCopy16(3, sScoreDigitsGfx + TILE_SIZE_4BPP * gScoreDigits[3], 0x60110A0, TILE_SIZE_4BPP);
    DmaCopy16(3, sScoreDigitsGfx + TILE_SIZE_4BPP * gScoreDigits[2], 0x60110C0, TILE_SIZE_4BPP);
    DmaCopy16(3, sScoreDigitsGfx + TILE_SIZE_4BPP * gScoreDigits[1], 0x60110E0, TILE_SIZE_4BPP);
    DmaCopy16(3, sScoreDigitsGfx + TILE_SIZE_4BPP * gScoreDigits[0], 0x6011100, TILE_SIZE_4BPP);
    gScoreUpdated = FALSE;
}

void ScoreLoadTimerDigitsGfx(void)
{
    u8 update;
    s8 seconds;

    update = gLastTimerDigitChanged;
    if (gInGameTimer.minutes == 0) {
        seconds = gInGameTimer.secondsTens * 10 + gInGameTimer.secondsOnes;
        if (seconds == 10) {
            update = TIMER_COLOR_RED | TIMER_DIGIT_MINUTES;
            m4aSongNumStart(SOUND_1C2);
        } else if (seconds == 30) {
            update = TIMER_COLOR_YELLOW | TIMER_DIGIT_MINUTES;
        } else if (seconds < 10) {
            update |= TIMER_COLOR_RED;
        } else if (seconds < 30) {
            update |= TIMER_COLOR_YELLOW;
        }
    }
    switch (update) {
        case TIMER_COLOR_WHITE | TIMER_DIGIT_MINUTES:
            DmaCopy16(3, sTimeDigitsUpperGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011000, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsLowerGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011400, TILE_SIZE_4BPP);
            // fallthrough
        case TIMER_COLOR_WHITE | TIMER_DIGIT_SECONDS_TENS:
            DmaCopy16(3, sTimeDigitsUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011040, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011440, TILE_SIZE_4BPP);
            // fallthrough
        case TIMER_COLOR_WHITE | TIMER_DIGIT_SECONDS_ONES:
            DmaCopy16(3, sTimeDigitsUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011060, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011460, TILE_SIZE_4BPP);
            break;

        case TIMER_COLOR_YELLOW | TIMER_DIGIT_MINUTES:
            DmaCopy16(3, sTimeDigitsYellowUpperGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011000, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsYellowLowerGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011400, TILE_SIZE_4BPP);
            // fallthrough
        case TIMER_COLOR_YELLOW | TIMER_DIGIT_SECONDS_TENS:
            DmaCopy16(
                3, sTimeDigitsYellowUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011040, TILE_SIZE_4BPP
            );
            DmaCopy16(
                3, sTimeDigitsYellowLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011440, TILE_SIZE_4BPP
            );
            // fallthrough
        case TIMER_COLOR_YELLOW | TIMER_DIGIT_SECONDS_ONES:
            DmaCopy16(
                3, sTimeDigitsYellowUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011060, TILE_SIZE_4BPP
            );
            DmaCopy16(
                3, sTimeDigitsYellowLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011460, TILE_SIZE_4BPP
            );
            break;

        case TIMER_COLOR_RED | TIMER_DIGIT_MINUTES:
            DmaCopy16(3, sTimeDigitsRedUpperGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011000, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsRedLowerGfx + TILE_SIZE_4BPP * gInGameTimer.minutes, 0x6011400, TILE_SIZE_4BPP);
            // fallthrough
        case TIMER_COLOR_RED | TIMER_DIGIT_SECONDS_TENS:
            DmaCopy16(3, sTimeDigitsRedUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011040, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsRedLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsTens, 0x6011440, TILE_SIZE_4BPP);
            // fallthrough
        case TIMER_COLOR_RED | TIMER_DIGIT_SECONDS_ONES:
            DmaCopy16(3, sTimeDigitsRedUpperGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011060, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeDigitsRedLowerGfx + TILE_SIZE_4BPP * gInGameTimer.secondsOnes, 0x6011460, TILE_SIZE_4BPP);
            break;
    }
    gLastTimerDigitChanged = TIMER_DIGIT_NO_UPDATE;
}

void ScoreLoadTimerColonGfx(void)
{
    u8 update;
    s8 seconds;

    update = gTimerSeparatorUpdate;
    if (gInGameTimer.minutes == 0) {
        seconds = gInGameTimer.secondsTens * 10 + gInGameTimer.secondsOnes;
        if (seconds <= 10) {
            update |= TIMER_COLOR_RED;
        } else if (seconds <= 30) {
            update |= TIMER_COLOR_YELLOW;
        }
    }
    switch (update) {
        case TIMER_COLOR_WHITE | TIMER_SEPARATOR_SHOW:
            DmaCopy16(3, sTimeColonUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;
        case TIMER_COLOR_WHITE | TIMER_SEPARATOR_HIDE:
            DmaCopy16(3, sTimeColonEmptyUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonEmptyLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;

        case TIMER_COLOR_YELLOW | TIMER_SEPARATOR_SHOW:
            DmaCopy16(3, sTimeColonYellowUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonYellowLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;
        case TIMER_COLOR_YELLOW | TIMER_SEPARATOR_HIDE:
            DmaCopy16(3, sTimeColonEmptyYellowUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonEmptyYellowLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;

        case TIMER_COLOR_RED | TIMER_SEPARATOR_SHOW:
            DmaCopy16(3, sTimeColonRedUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonRedLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;
        case TIMER_COLOR_RED | TIMER_SEPARATOR_HIDE:
            DmaCopy16(3, sTimeColonEmptyRedUpperGfx, 0x6011020, TILE_SIZE_4BPP);
            DmaCopy16(3, sTimeColonEmptyRedLowerGfx, 0x6011420, TILE_SIZE_4BPP);
            break;
    }
    gTimerSeparatorUpdate = TIMER_SEPARATOR_NO_UPDATE;
}

void ScoreKillWario(void)
{
    gWarioPauseTimer = CONVERT_SECONDS(1000 / 60.0);
    gDisableWario = TRUE;
    gTimerSeparatorUpdate = TIMER_SEPARATOR_SHOW;
    gUnk_3000046 = TRUE;

    DmaCopy16(3, sTimeUpTextPal, OBJ_PLTT + 2 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
    DmaCopy16(3, sTimeUpRow1Gfx + 0x300, 0x6010380, 0x100);
    DmaCopy16(3, sTimeUpRow2Gfx + 0x300, 0x6010780, 0x100);
    DmaCopy16(3, sTimeUpRow1Gfx, 0x6010800, 0x400);
    DmaCopy16(3, sTimeUpRow2Gfx, 0x6010C00, 0x400);
    DmaCopy16(3, sTimeUpWarioPal, OBJ_PLTT, PLTT_ROW_SIZE);
    SpriteSpawnSecondary(gWarioData.yPosition, gWarioData.xPosition, SSPRITE_WARIO_DYING);

    if (gCurrentStageNumber == STAGE_BOSS) {
        AutosaveDefeat();
    }
    SpriteCollisionPlayStageEndSound();
    m4aSongNumStart(SOUND_16);
}

void ScorePlayTimeUpSound(void)
{
    SpriteCollisionPlayStageEndSound();
    m4aSongNumStart(SOUND_1C5);
}

void ScoreCountTimer(void)
{
    s32 timer;
    s8 digitChanged;

    if (gSubGameMode != 2) {
        return;
    }
    if (gTimerState > TIMER_STATE_3) {
        return;
    }
    if (gWarioPauseTimer != 0) {
        return;
    }
    if ((gHeartMeter.current == 0) && (gUnk_3000022 == 0)) {
        ScoreKillWario();
        return;
    }

    TIMER_COUNT_UP(gInGameTimerFrames);
    timer = gInGameTimerFrames;
    if (gTimerState > TIMER_STATE_ACTIVE) {
        if (MOD_AND(timer, CONVERT_SECONDS_SIMULATED(0.125)) == 0) {
            ScoreGivePoints(CONVERT_SCORE(-10));
            SpriteSpawnSecondary(gWarioData.yPosition, gWarioData.xPosition, SSPRITE_TIME_UP_COIN);
            if (gStageScore == CONVERT_SCORE(0)) {
                gTimerState = TIMER_STATE_TIME_UP;
                gWarioPauseTimer = CONVERT_SECONDS(1000 / 60.0);
                gUnk_3000046 = TRUE;
                ScorePlayTimeUpSound();
            }
        }
    } else if (MOD_AND(timer, CONVERT_SECONDS_SIMULATED(0.5)) == 0) {
        if (MOD_BLOCK_AND(timer, CONVERT_SECONDS_SIMULATED(0.5))) {
            gTimerSeparatorUpdate = TIMER_SEPARATOR_HIDE;
        } else {
            gTimerSeparatorUpdate = TIMER_SEPARATOR_SHOW;
        }
    }

    if (MOD_AND(timer, CONVERT_SECONDS_SIMULATED(1)) == 0) {
        if (gSwitchPressed) {
            ScreenShakeRequestX(CONVERT_SECONDS_SIMULATED(1));
        }

        if (gTimerState == TIMER_STATE_ACTIVE) {
            digitChanged = TIMER_DIGIT_SECONDS_ONES;
            if (gInGameTimer.secondsOnes > 0) {
                gInGameTimer.secondsOnes -= 1;
                if (gInGameTimer.secondsOnes == 0 && (gInGameTimer.secondsTens | gInGameTimer.minutes) == 0) {
                    m4aSongNumStart(SOUND_TIME_UP_COIN_DRAIN);
                    if (gStageScore != CONVERT_SCORE(0)) {
                        gTimerState = TIMER_STATE_DRAINING_COINS;
                    } else {
                        gTimerState = TIMER_STATE_TIME_UP;
                        gWarioPauseTimer = CONVERT_SECONDS(1000 / 60.0);
                        gUnk_3000046 = TRUE;
                        ScorePlayTimeUpSound();
                    }
                }
            } else {
                digitChanged = TIMER_DIGIT_SECONDS_TENS;
                gInGameTimer.secondsOnes = 9;
                if (gInGameTimer.secondsTens > 0) {
                    gInGameTimer.secondsTens--;
                } else {
                    digitChanged = TIMER_DIGIT_MINUTES;
                    gInGameTimer.secondsTens = 5;
                    if (gInGameTimer.minutes > 0) {
                        gInGameTimer.minutes--;
                    } else {
                        gInGameTimer.minutes = 9;
                    }
                }
            }
            gLastTimerDigitChanged = digitChanged;
        }

        if ((gCurrentStageNumber == STAGE_BOSS) && (gCurrentPassage != PASSAGE_ENTRY)) {
            if (gCurrentPassage == PASSAGE_GOLDEN) {
                func_807507C();
            } else {
                func_8074F44();
            }
        }
    }
}

u32 ScoreLoadStageState(void)
{
    s32 passage;
    s32 stageNumber;

    passage = gCurrentPassage;
    stageNumber = gCurrentStageNumber;
    if (stageNumber == STAGE_BOSS) {
        switch (passage) {
            case PASSAGE_EMERALD:
            case PASSAGE_RUBY:
            case PASSAGE_TOPAZ:
            case PASSAGE_SAPPHIRE:
                gHasBossChest55sec = ITEM_STATUS_2;
                gHasBossChest35sec = ITEM_STATUS_2;
                gHasBossChest15sec = ITEM_STATUS_2;
                gCollectedNWJewelPiece = ITEM_STATUS_NOT_COLLECTED;
                gCollectedCD = ITEM_STATUS_NOT_COLLECTED;
                gCollectedKeyzer = ITEM_STATUS_NOT_COLLECTED;
                break;

            case PASSAGE_GOLDEN:
                if (gCurrentCollection[PASSAGE_EMERALD][STAGE_BOSS].BOSS_REWARD_55_SEC) {
                    gHasGoldenDivaChest1 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest1 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_EMERALD][STAGE_BOSS].BOSS_REWARD_35_SEC) {
                    gHasGoldenDivaChest2 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest2 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_EMERALD][STAGE_BOSS].BOSS_REWARD_15_SEC) {
                    gHasGoldenDivaChest3 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest3 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_RUBY][STAGE_BOSS].BOSS_REWARD_55_SEC) {
                    gHasGoldenDivaChest4 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest4 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_RUBY][STAGE_BOSS].BOSS_REWARD_35_SEC) {
                    gHasGoldenDivaChest5 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest5 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_RUBY][STAGE_BOSS].BOSS_REWARD_15_SEC) {
                    gHasGoldenDivaChest6 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest6 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_TOPAZ][STAGE_BOSS].BOSS_REWARD_55_SEC) {
                    gHasGoldenDivaChest7 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest7 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_TOPAZ][STAGE_BOSS].BOSS_REWARD_35_SEC) {
                    gHasGoldenDivaChest8 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest8 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_TOPAZ][STAGE_BOSS].BOSS_REWARD_15_SEC) {
                    gHasGoldenDivaChest9 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest9 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_SAPPHIRE][STAGE_BOSS].BOSS_REWARD_55_SEC) {
                    gHasGoldenDivaChest10 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest10 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_SAPPHIRE][STAGE_BOSS].BOSS_REWARD_35_SEC) {
                    gHasGoldenDivaChest11 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest11 = ITEM_STATUS_NOT_COLLECTED;
                }
                if (gCurrentCollection[PASSAGE_SAPPHIRE][STAGE_BOSS].BOSS_REWARD_15_SEC) {
                    gHasGoldenDivaChest12 = ITEM_STATUS_2;
                    gGoldenTreasureCount += 1;
                } else {
                    gHasGoldenDivaChest12 = ITEM_STATUS_NOT_COLLECTED;
                }
                gCollectedCD = ITEM_STATUS_NOT_COLLECTED;
                gCollectedKeyzer = ITEM_STATUS_NOT_COLLECTED;
                break;

            default:
                gHasBossChest55sec = ITEM_STATUS_NOT_COLLECTED;
                gHasBossChest35sec = ITEM_STATUS_NOT_COLLECTED;
                gHasBossChest15sec = ITEM_STATUS_NOT_COLLECTED;
                gCollectedNWJewelPiece = ITEM_STATUS_NOT_COLLECTED;
                gCollectedCD = ITEM_STATUS_NOT_COLLECTED;
                gCollectedKeyzer = ITEM_STATUS_NOT_COLLECTED;
                break;
        }
    } else {
        if (gCurrentCollection[passage][stageNumber].jewelPieceNE) {
            gCollectedNEJewelPiece = ITEM_STATUS_OWNED;
        } else {
            gCollectedNEJewelPiece = ITEM_STATUS_NOT_COLLECTED;
        }
        if (gCurrentCollection[passage][stageNumber].jewelPieceSE) {
            gCollectedSEJewelPiece = ITEM_STATUS_OWNED;
        } else {
            gCollectedSEJewelPiece = ITEM_STATUS_NOT_COLLECTED;
        }
        if (gCurrentCollection[passage][stageNumber].jewelPieceSW) {
            gCollectedSWJewelPiece = ITEM_STATUS_OWNED;
        } else {
            gCollectedSWJewelPiece = ITEM_STATUS_NOT_COLLECTED;
        }
        if (gCurrentCollection[passage][stageNumber].jewelPieceNW) {
            gCollectedNWJewelPiece = ITEM_STATUS_OWNED;
        } else {
            gCollectedNWJewelPiece = ITEM_STATUS_NOT_COLLECTED;
        }
        if (gCurrentCollection[passage][stageNumber].cd) {
            gCollectedCD = ITEM_STATUS_OWNED;
        } else {
            gCollectedCD = ITEM_STATUS_NOT_COLLECTED;
        }
        if (gCurrentCollection[passage][stageNumber].keyzer) {
            gCollectedKeyzer = ITEM_STATUS_2;
        } else {
            gCollectedKeyzer = ITEM_STATUS_NOT_COLLECTED;
        }
    }
}

void ScoreInit(void)
{
    s32 i;

    gUnk_3000C2A = gCurrentPassage;
    gUnk_3000C2B = gCurrentStageNumber;
    if (gUnk_3000C3F || gHasTemporarySave) {
        for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
            if (gSecondarySpriteData[i].globalID < SSPRITE_4A) {
                gSecondarySpriteData[i].status = 0;
            } else if (gSecondarySpriteData[i].globalID == SSPRITE_KEYZER && (gSecondarySpriteData[i].status & 1)) {
                gSecondarySpriteData[i].yPosition = gWarioData.yPosition - BLOCK_SIZE * 3 / 2;
                if (gWarioData.horizontalDirection & DPAD_LEFT) {
                    gSecondarySpriteData[i].xPosition = gWarioData.xPosition + BLOCK_SIZE;
                    gSecondarySpriteData[i].pose = 1;
                } else {
                    gSecondarySpriteData[i].xPosition = gWarioData.xPosition - BLOCK_SIZE;
                    gSecondarySpriteData[i].pose = 3;
                }
            }
        }
    } else {
        for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
            gSecondarySpriteData[i].status = 0;
        }
    }

    if (gUnk_3000C3F == 0 && !gHasTemporarySave) {
        gCurrentShopItem = SHOP_ITEM_NONE;
        gScoreDigits[0] = 0;
        gScoreDigits[1] = 0;
        gScoreDigits[2] = 0;
        gScoreDigits[3] = 0;
        gScoreDigits[4] = 0;
        gStageScore = 0;
        gInGameTimerFrames = 0;
        gUnk_3000C06 = 0;
        gSwitchPressed = 0;
        gGoldenTreasureCount = 0;
        ScoreLoadStageState();
        gUnk_3000A58 = 0;
        gUnk_3000A59 = 0;
        gUnk_3000A5A = 0;
        gUnk_3000A5B = 0;
        gUnk_3000A5C = 0;
        gUnk_3000A5D = 0;
        gUnk_3000A5E = 0;
        gUnk_3000A5F = 0;
        gUnk_3000A60 = 0;
        gUnk_3000A61 = 0;
        gUnk_3000A62 = 0;
        gUnk_3000A64 = 0;
    }

    gUnk_3000C04 = 0;
    gUnk_3000C0E = 0;
    gVortexYPosition = 0;
    gVortexXPosition = 0;
    gVortexGfxSlot = 0;
    gScoreUpdated = TRUE;
    gLastTimerDigitChanged = TIMER_DIGIT_MINUTES;
    gTimerSeparatorUpdate = TIMER_SEPARATOR_SHOW;
    ScoreLoadDigitsGfx();
    ScoreLoadTimerDigitsGfx();
    ScoreLoadTimerColonGfx();

    switch (gCurrentPassage) {
        case PASSAGE_ENTRY:
            DmaCopy16(3, sStageEntryPassagePal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
        case PASSAGE_EMERALD:
            DmaCopy16(3, sStageEmeraldPassagePal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
        case PASSAGE_RUBY:
            DmaCopy16(3, sStageRubyPassagePal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
        case PASSAGE_TOPAZ:
            DmaCopy16(3, sStageTopazPassagePal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
        case PASSAGE_SAPPHIRE:
            DmaCopy16(3, sStageSapphirePassagePal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
        case PASSAGE_GOLDEN:
            DmaCopy16(3, sStageGoldenPyramidPal, OBJ_PLTT + 4 * PLTT_ROW_SIZE, PLTT_ROW_SIZE);
            break;
    }

    if (gCurrentStageNumber == STAGE_BOSS) {
        return;
    }
    if (gCollectedNEJewelPiece == ITEM_STATUS_OWNED) {
        DmaCopy16(3, sJewelPieceIconNEGfx, 0x6011C20, TILE_SIZE_4BPP);
    } else if (gCollectedNEJewelPiece != ITEM_STATUS_NOT_COLLECTED) {
        DmaCopy16(3, sJewelPieceIconPartialNEGfx, 0x6011C20, TILE_SIZE_4BPP);
    }
    if (gCollectedSEJewelPiece == ITEM_STATUS_OWNED) {
        DmaCopy16(3, sJewelPieceIconSEGfx, 0x6012020, TILE_SIZE_4BPP);
    } else if (gCollectedSEJewelPiece != ITEM_STATUS_NOT_COLLECTED) {
        DmaCopy16(3, sJewelPieceIconPartialSEGfx, 0x6012020, TILE_SIZE_4BPP);
    }
    if (gCollectedSWJewelPiece == ITEM_STATUS_OWNED) {
        DmaCopy16(3, sJewelPieceIconSWGfx, 0x6012000, TILE_SIZE_4BPP);
    } else if (gCollectedSWJewelPiece != ITEM_STATUS_NOT_COLLECTED) {
        DmaCopy16(3, sJewelPieceIconPartialSWGfx, 0x6012000, TILE_SIZE_4BPP);
    }
    if (gCollectedNWJewelPiece == ITEM_STATUS_OWNED) {
        DmaCopy16(3, sJewelPieceIconNWGfx, 0x6011C00, TILE_SIZE_4BPP);
    } else if (gCollectedNWJewelPiece != ITEM_STATUS_NOT_COLLECTED) {
        DmaCopy16(3, sJewelPieceIconPartialNWGfx, 0x6011C00, TILE_SIZE_4BPP);
    }
    if (gCollectedCD == ITEM_STATUS_OWNED) {
        DmaCopy16(3, sCDIconGfx, 0x60114C0, TILE_SIZE_4BPP);
    } else if (gCollectedCD != ITEM_STATUS_NOT_COLLECTED) {
        DmaCopy16(3, sCDIconPartialGfx, 0x60114C0, TILE_SIZE_4BPP);
    }
}

// https://decomp.me/scratch/RtiQO
NAKED void DrawSecondarySprites(s32 slot)
{
    __asm__(
        // clang-format off
        " \n\
        push	{r4, r5, r6, r7, lr} \n\
        mov	r7, sl \n\
        mov	r6, r9 \n\
        mov	r5, r8 \n\
        push	{r5, r6, r7} \n\
        sub	sp, #12 \n\
        str	r0, [sp, #0] \n\
        ldr	r0, .L_7639c \n\
        ldrb	r2, [r0, #2] \n\
        add	r4, r0, #0 \n\
        cmp	r2, #77	@ 0x4d \n\
        bls	.L_763b4 \n\
        ldr	r1, .L_763a0 \n\
        ldrb	r2, [r1, #0] \n\
        ldr	r0, .L_763a4 \n\
        ldr	r5, [r0, #0] \n\
        ldrh	r6, [r5, #0] \n\
        add	r5, #2 \n\
        add	r0, r6, r2 \n\
        mov	r8, r0 \n\
        cmp	r0, #127	@ 0x7f \n\
        ble	.L_76312 \n\
        b	.L_76620 \n\
    .L_76312: \n\
        lsl	r0, r2, #3 \n\
        ldr	r2, .L_763a8 \n\
        add	r3, r0, r2 \n\
        ldrh	r0, [r4, #8] \n\
        lsr	r0, r0, #2 \n\
        mov	r9, r0 \n\
        ldrh	r0, [r4, #10] \n\
        lsr	r0, r0, #2 \n\
        mov	ip, r0 \n\
        ldrb	r1, [r4, #0] \n\
        mov	r0, #2 \n\
        and	r0, r1 \n\
        lsl	r0, r0, #24 \n\
        lsr	r7, r0, #24 \n\
        cmp	r6, #0 \n\
        bne	.L_76334 \n\
        b	.L_765d8 \n\
    .L_76334: \n\
        mov	r1, #7 \n\
        ldr	r0, [sp, #0] \n\
        and	r0, r1 \n\
        lsl	r0, r0, #1 \n\
        mov	sl, r0 \n\
        add	r4, r3, #0 \n\
    .L_76340: \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        add	r0, r9 \n\
        strb	r0, [r4, #0] \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        mov	r2, ip \n\
        add	r1, r0, r2 \n\
        ldr	r0, .L_763ac \n\
        and	r1, r0 \n\
        ldrh	r2, [r4, #2] \n\
        ldr	r0, .L_763b0 \n\
        and	r0, r2 \n\
        orr	r0, r1 \n\
        strh	r0, [r4, #2] \n\
        ldrh	r0, [r5, #0] \n\
        strh	r0, [r3, #0] \n\
        add	r5, #2 \n\
        add	r3, #2 \n\
        cmp	r7, #0 \n\
        beq	.L_76390 \n\
        ldrb	r0, [r4, #1] \n\
        mov	r1, #3 \n\
        orr	r0, r1 \n\
        strb	r0, [r4, #1] \n\
        ldrb	r0, [r4, #3] \n\
        mov	r1, #32 \n\
        orr	r0, r1 \n\
        mov	r1, #16 \n\
        orr	r0, r1 \n\
        mov	r1, #15 \n\
        neg	r1, r1 \n\
        and	r0, r1 \n\
        mov	r2, sl \n\
        orr	r0, r2 \n\
        strb	r0, [r4, #3] \n\
    .L_76390: \n\
        add	r3, #2 \n\
        add	r4, #8 \n\
        sub	r6, #1 \n\
        cmp	r6, #0 \n\
        bne	.L_76340 \n\
        b	.L_765d8 \n\
    .L_7639c: \n\
        .4byte	gCurrentSecondarySprite \n\
    .L_763a0: \n\
        .4byte	gOamSlotsUsed \n\
    .L_763a4: \n\
        .4byte	gCurrentSecondarySpriteOamData \n\
    .L_763a8: \n\
        .4byte	gOamBuffer \n\
    .L_763ac: \n\
        .4byte	0x000001ff \n\
    .L_763b0: \n\
        .4byte	0xfffffe00 \n\
    .L_763b4: \n\
        cmp	r2, #75	@ 0x4b \n\
        beq	.L_763ba \n\
        b	.L_764fc \n\
    .L_763ba: \n\
        ldr	r0, .L_763c8 \n\
        ldrb	r0, [r0, #0] \n\
        cmp	r0, #0 \n\
        beq	.L_763cc \n\
        mov	r0, #0 \n\
        mov	sl, r0 \n\
        b	.L_763dc \n\
    .L_763c8: \n\
        .4byte	gUnk_3000034 \n\
    .L_763cc: \n\
        ldr	r0, .L_764d8 \n\
        ldrb	r0, [r0, #0] \n\
        mov	r1, #2 \n\
        mov	sl, r1 \n\
        cmp	r0, #0 \n\
        beq	.L_763dc \n\
        mov	r2, #1 \n\
        mov	sl, r2 \n\
    .L_763dc: \n\
        ldrh	r1, [r4, #8] \n\
        lsr	r1, r1, #2 \n\
        ldr	r0, .L_764dc \n\
        ldrh	r0, [r0, #0] \n\
        lsr	r0, r0, #2 \n\
        sub	r1, r1, r0 \n\
        lsl	r1, r1, #16 \n\
        lsr	r1, r1, #16 \n\
        mov	r9, r1 \n\
        ldr	r1, .L_764e0 \n\
        ldrb	r2, [r1, #0] \n\
        ldr	r0, .L_764e4 \n\
        ldr	r5, [r0, #0] \n\
        ldrh	r6, [r5, #0] \n\
        add	r5, #2 \n\
        add	r0, r6, r2 \n\
        mov	r8, r0 \n\
        cmp	r0, #127	@ 0x7f \n\
        ble	.L_76404 \n\
        b	.L_76620 \n\
    .L_76404: \n\
        lsl	r0, r2, #3 \n\
        ldr	r2, .L_764e8 \n\
        add	r3, r0, r2 \n\
        ldrh	r1, [r4, #10] \n\
        lsr	r1, r1, #2 \n\
        ldr	r0, .L_764ec \n\
        ldrh	r0, [r0, #0] \n\
        lsr	r0, r0, #2 \n\
        sub	r1, r1, r0 \n\
        lsl	r1, r1, #16 \n\
        lsr	r1, r1, #16 \n\
        mov	ip, r1 \n\
        ldrb	r1, [r4, #0] \n\
        mov	r0, #2 \n\
        and	r0, r1 \n\
        lsl	r0, r0, #24 \n\
        lsr	r7, r0, #24 \n\
        cmp	r6, #0 \n\
        beq	.L_764ac \n\
        mov	r2, #3 \n\
        mov	r1, sp \n\
        strb	r2, [r1, #4] \n\
        mov	r0, sl \n\
        lsl	r0, r0, #2 \n\
        str	r0, [sp, #8] \n\
        add	r4, r3, #0 \n\
        mov	r1, #7 \n\
        ldr	r0, [sp, #0] \n\
        and	r0, r1 \n\
        lsl	r0, r0, #1 \n\
        mov	sl, r0 \n\
    .L_76442: \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        add	r0, r9 \n\
        strb	r0, [r4, #0] \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        mov	r2, ip \n\
        add	r1, r0, r2 \n\
        ldr	r0, .L_764f0 \n\
        and	r1, r0 \n\
        ldrh	r2, [r4, #2] \n\
        ldr	r0, .L_764f4 \n\
        and	r0, r2 \n\
        orr	r0, r1 \n\
        strh	r0, [r4, #2] \n\
        ldrh	r0, [r5, #0] \n\
        strh	r0, [r3, #0] \n\
        add	r5, #2 \n\
        add	r3, #2 \n\
        ldrb	r1, [r4, #5] \n\
        mov	r0, #13 \n\
        neg	r0, r0 \n\
        and	r0, r1 \n\
        ldr	r1, [sp, #8] \n\
        orr	r0, r1 \n\
        strb	r0, [r4, #5] \n\
        cmp	r7, #0 \n\
        beq	.L_764a2 \n\
        ldrb	r0, [r4, #1] \n\
        mov	r2, sp \n\
        ldrb	r2, [r2, #4] \n\
        orr	r0, r2 \n\
        strb	r0, [r4, #1] \n\
        ldrb	r0, [r4, #3] \n\
        mov	r1, #32 \n\
        orr	r0, r1 \n\
        mov	r1, #16 \n\
        orr	r0, r1 \n\
        mov	r1, #15 \n\
        neg	r1, r1 \n\
        and	r0, r1 \n\
        mov	r1, sl \n\
        orr	r0, r1 \n\
        strb	r0, [r4, #3] \n\
    .L_764a2: \n\
        add	r3, #2 \n\
        add	r4, #8 \n\
        sub	r6, #1 \n\
        cmp	r6, #0 \n\
        bne	.L_76442 \n\
    .L_764ac: \n\
        mov	r6, r8 \n\
        ldr	r2, .L_764e0 \n\
        strb	r6, [r2, #0] \n\
        cmp	r7, #0 \n\
        bne	.L_764b8 \n\
        b	.L_76620 \n\
    .L_764b8: \n\
        ldr	r0, [sp, #0] \n\
        lsl	r2, r0, #2 \n\
        add	r0, r2, #0 \n\
        add	r0, #96	@ 0x60 \n\
        lsl	r0, r0, #3 \n\
        ldr	r1, .L_764e8 \n\
        add	r0, r0, r1 \n\
        ldr	r1, .L_764f8 \n\
        ldrh	r1, [r1, #0] \n\
        strh	r1, [r0, #6] \n\
        add	r0, r2, #0 \n\
        add	r0, #97	@ 0x61 \n\
        lsl	r0, r0, #3 \n\
        ldr	r6, .L_764e8 \n\
        b	.L_765fc \n\
        .align	2, 0 \n\
    .L_764d8: \n\
        .4byte	gDrawWarioOverBackground \n\
    .L_764dc: \n\
        .4byte	gBg1YPosition \n\
    .L_764e0: \n\
        .4byte	gOamSlotsUsed \n\
    .L_764e4: \n\
        .4byte	gCurrentSecondarySpriteOamData \n\
    .L_764e8: \n\
        .4byte	gOamBuffer \n\
    .L_764ec: \n\
        .4byte	gBg1XPosition \n\
    .L_764f0: \n\
        .4byte	0x000001ff \n\
    .L_764f4: \n\
        .4byte	0xfffffe00 \n\
    .L_764f8: \n\
        .4byte	gUnk_3000C14 \n\
    .L_764fc: \n\
        ldr	r5, .L_76524 \n\
        cmp	r2, #73	@ 0x49 \n\
        bhi	.L_76528 \n\
        ldrh	r3, [r5, #0] \n\
        add	r1, r3, #0 \n\
        add	r1, #192	@ 0xc0 \n\
        ldrh	r0, [r4, #8] \n\
        mov	r6, #128	@ 0x80 \n\
        lsl	r6, r6, #1 \n\
        add	r2, r0, r6 \n\
        cmp	r1, r2 \n\
        bgt	.L_7651e \n\
        mov	r1, #240	@ 0xf0 \n\
        lsl	r1, r1, #2 \n\
        add	r0, r3, r1 \n\
        cmp	r0, r2 \n\
        bge	.L_76528 \n\
    .L_7651e: \n\
        mov	r0, #0 \n\
        strb	r0, [r4, #0] \n\
        b	.L_76620 \n\
    .L_76524: \n\
        .4byte	gBg1YPosition \n\
    .L_76528: \n\
        ldrh	r0, [r4, #8] \n\
        lsr	r0, r0, #2 \n\
        ldrh	r1, [r5, #0] \n\
        lsr	r1, r1, #2 \n\
        sub	r0, r0, r1 \n\
        lsl	r0, r0, #16 \n\
        lsr	r0, r0, #16 \n\
        mov	r9, r0 \n\
        ldr	r1, .L_76630 \n\
        ldrb	r2, [r1, #0] \n\
        ldr	r0, .L_76634 \n\
        ldr	r5, [r0, #0] \n\
        ldrh	r6, [r5, #0] \n\
        add	r5, #2 \n\
        add	r0, r6, r2 \n\
        mov	r8, r0 \n\
        cmp	r0, #127	@ 0x7f \n\
        bgt	.L_76620 \n\
        lsl	r0, r2, #3 \n\
        ldr	r2, .L_76638 \n\
        add	r3, r0, r2 \n\
        ldrh	r1, [r4, #10] \n\
        lsr	r1, r1, #2 \n\
        ldr	r0, .L_7663c \n\
        ldrh	r0, [r0, #0] \n\
        lsr	r0, r0, #2 \n\
        sub	r1, r1, r0 \n\
        lsl	r1, r1, #16 \n\
        lsr	r1, r1, #16 \n\
        mov	ip, r1 \n\
        ldrb	r1, [r4, #0] \n\
        mov	r0, #2 \n\
        and	r0, r1 \n\
        lsl	r0, r0, #24 \n\
        lsr	r7, r0, #24 \n\
        cmp	r6, #0 \n\
        beq	.L_765d8 \n\
        mov	r1, #7 \n\
        ldr	r0, [sp, #0] \n\
        and	r0, r1 \n\
        lsl	r0, r0, #1 \n\
        mov	sl, r0 \n\
        add	r4, r3, #0 \n\
    .L_7657e: \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        add	r0, r9 \n\
        strb	r0, [r4, #0] \n\
        ldrh	r0, [r5, #0] \n\
        add	r5, #2 \n\
        strh	r0, [r3, #0] \n\
        add	r3, #2 \n\
        mov	r2, ip \n\
        add	r1, r0, r2 \n\
        ldr	r0, .L_76640 \n\
        and	r1, r0 \n\
        ldrh	r2, [r4, #2] \n\
        ldr	r0, .L_76644 \n\
        and	r0, r2 \n\
        orr	r0, r1 \n\
        strh	r0, [r4, #2] \n\
        ldrh	r0, [r5, #0] \n\
        strh	r0, [r3, #0] \n\
        add	r5, #2 \n\
        add	r3, #2 \n\
        cmp	r7, #0 \n\
        beq	.L_765ce \n\
        ldrb	r0, [r4, #1] \n\
        mov	r1, #3 \n\
        orr	r0, r1 \n\
        strb	r0, [r4, #1] \n\
        ldrb	r0, [r4, #3] \n\
        mov	r1, #32 \n\
        orr	r0, r1 \n\
        mov	r1, #16 \n\
        orr	r0, r1 \n\
        mov	r1, #15 \n\
        neg	r1, r1 \n\
        and	r0, r1 \n\
        mov	r2, sl \n\
        orr	r0, r2 \n\
        strb	r0, [r4, #3] \n\
    .L_765ce: \n\
        add	r3, #2 \n\
        add	r4, #8 \n\
        sub	r6, #1 \n\
        cmp	r6, #0 \n\
        bne	.L_7657e \n\
    .L_765d8: \n\
        mov	r0, r8 \n\
        ldr	r6, .L_76630 \n\
        strb	r0, [r6, #0] \n\
        cmp	r7, #0 \n\
        beq	.L_76620 \n\
        ldr	r1, [sp, #0] \n\
        lsl	r2, r1, #2 \n\
        add	r0, r2, #0 \n\
        add	r0, #96	@ 0x60 \n\
        lsl	r0, r0, #3 \n\
        ldr	r6, .L_76638 \n\
        add	r0, r0, r6 \n\
        ldr	r1, .L_76648 \n\
        ldrh	r1, [r1, #0] \n\
        strh	r1, [r0, #6] \n\
        add	r0, r2, #0 \n\
        add	r0, #97	@ 0x61 \n\
        lsl	r0, r0, #3 \n\
    .L_765fc: \n\
        add	r0, r0, r6 \n\
        ldr	r1, .L_7664c \n\
        ldrh	r1, [r1, #0] \n\
        strh	r1, [r0, #6] \n\
        add	r0, r2, #0 \n\
        add	r0, #98	@ 0x62 \n\
        lsl	r0, r0, #3 \n\
        add	r0, r0, r6 \n\
        ldr	r1, .L_76650 \n\
        ldrh	r1, [r1, #0] \n\
        strh	r1, [r0, #6] \n\
        add	r0, r2, #0 \n\
        add	r0, #99	@ 0x63 \n\
        lsl	r0, r0, #3 \n\
        add	r0, r0, r6 \n\
        ldr	r1, .L_76654 \n\
        ldrh	r1, [r1, #0] \n\
        strh	r1, [r0, #6] \n\
    .L_76620: \n\
        add	sp, #12 \n\
        pop	{r3, r4, r5} \n\
        mov	r8, r3 \n\
        mov	r9, r4 \n\
        mov	sl, r5 \n\
        pop	{r4, r5, r6, r7} \n\
        pop	{r0} \n\
        bx	r0 \n\
    .L_76630: \n\
        .4byte	gOamSlotsUsed \n\
    .L_76634: \n\
        .4byte	gCurrentSecondarySpriteOamData \n\
    .L_76638: \n\
        .4byte	gOamBuffer \n\
    .L_7663c: \n\
        .4byte	gBg1XPosition \n\
    .L_76640: \n\
        .4byte	0x000001ff \n\
    .L_76644: \n\
        .4byte	0xfffffe00 \n\
    .L_76648: \n\
        .4byte	gUnk_3000C14 \n\
    .L_7664c: \n\
        .4byte	gUnk_3000C16 \n\
    .L_76650: \n\
        .4byte	gUnk_3000C18 \n\
    .L_76654: \n\
        .4byte	gUnk_3000C1A "
        // clang-format on
    );
}

void ScoreGivePoints(s32 amount)
{
    gScoreUpdated = TRUE;
    gStageScore += amount;
    if (gStageScore < 0) {
        gStageScore = 0;
    }

    gScoreDigits[4] = gStageScore / 10000;
    if (gScoreDigits[4] >= 10) {
        gScoreDigits[4] = 9;
        gScoreDigits[3] = 9;
        gScoreDigits[2] = 9;
        gScoreDigits[1] = 9;
        gScoreDigits[0] = 9;
    } else {
        gScoreDigits[3] = (gStageScore / 1000) % 10;
        gScoreDigits[2] = (gStageScore / 100) % 10;
        gScoreDigits[1] = (gStageScore / 10) % 10;
        gScoreDigits[0] = gStageScore % 10;
    }
}

void SpriteSpawnSecondary(u16 y, u16 x, u8 id)
{
    s32 i;
    u8 slot;
    u32 maxTimer;
    u8 timer;

    maxTimer = FALSE;
    for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
        if (gSecondarySpriteData[i].status == 0) {
            maxTimer = 1;
            break;
        }
    }

    if (maxTimer == 0) {
        slot = U8_MAX;
        for (i = 0; i < SCORE_SPRITE_COUNT; i++) {
            if (gSecondarySpriteData[i].globalID <= SSPRITE_49) {
                timer = gSecondarySpriteData[i].work0;
            } else {
                timer = 0;
            }
            if (maxTimer < timer) {
                maxTimer = timer;
                slot = i;
            }
        }

        if (slot == U8_MAX) {
            return;
        }
        i = slot;
    }

    gSecondarySpriteData[i].status = 1;
    gSecondarySpriteData[i].yPosition = y;
    gSecondarySpriteData[i].xPosition = x;
    gSecondarySpriteData[i].animationTimer = 0;
    gSecondarySpriteData[i].currentAnimationFrame = 0;
    gSecondarySpriteData[i].globalID = id;
    gSecondarySpriteData[i].pose = 0;
    gSecondarySpriteData[i].work0 = 0;
    gSecondarySpriteData[i].work1 = 0;
}

void func_8076784(void)
{
    gCurrentSecondarySprite.status = 1;
    gCurrentSecondarySprite.animationTimer = 0;
    gCurrentSecondarySprite.currentAnimationFrame = 0;
    gCurrentSecondarySprite.globalID = SSPRITE_2F;
    gCurrentSecondarySprite.pose = 0;
    gCurrentSecondarySprite.work0 = 0;
    gCurrentSecondarySprite.work1 = 0;
    ScoreSpriteAnimate(sUnk_840FB94);
}

void func_80767B0(void)
{
    gCurrentSecondarySprite.status = 1;
    gCurrentSecondarySprite.animationTimer = 0;
    gCurrentSecondarySprite.currentAnimationFrame = 0;
    gCurrentSecondarySprite.globalID = SSPRITE_50;
    gCurrentSecondarySprite.pose = 0;
    gCurrentSecondarySprite.work0 = 0;
    gCurrentSecondarySprite.work1 = 0;
    ScoreSpriteAnimate(sUnk_840FB94);
}

void ScoreSpawnCoins(u16 yPosition, u16 xPosition, s32 amount)
{
    u32 offset;

    offset = 0;
    while (amount >= CONVERT_SCORE(1000)) {
        SpriteSpawnAsChild(PSPRITE_COIN_1000POINTS, 0, 0, yPosition - offset, xPosition - offset);
        amount -= CONVERT_SCORE(1000);
        offset += HALF_BLOCK_SIZE;
    }
    while (amount >= CONVERT_SCORE(500)) {
        SpriteSpawnAsChild(PSPRITE_COIN_500POINTS, 0, 0, yPosition - offset, xPosition - offset);
        amount -= CONVERT_SCORE(500);
        offset += HALF_BLOCK_SIZE;
    }
    while (amount >= CONVERT_SCORE(100)) {
        SpriteSpawnAsChild(PSPRITE_COIN_100POINTS, 0, 0, yPosition - offset, xPosition - offset);
        amount -= CONVERT_SCORE(100);
        offset += HALF_BLOCK_SIZE;
    }
    while (amount >= CONVERT_SCORE(50)) {
        SpriteSpawnAsChild(PSPRITE_COIN_50POINTS, 0, 0, yPosition - offset, xPosition - offset);
        amount -= CONVERT_SCORE(50);
        offset += HALF_BLOCK_SIZE;
    }
    while (amount >= CONVERT_SCORE(10)) {
        SpriteSpawnAsChild(PSPRITE_COIN_10POINTS, 0, 0, yPosition - offset, xPosition - offset);
        amount -= CONVERT_SCORE(10);
        offset += HALF_BLOCK_SIZE;
    }
}

void ScoreDropCoinsFromEnemy(u16 id, u16 yPosition, u16 xPosition, s32 amount)
{
    gUnk_3000C06 += 1;
    if (amount == 0) {
        return;
    }
    ScoreSpawnCoins(yPosition, xPosition, amount);
    SpriteSpawnAsChild(PSPRITE_LITTLE_HEART, 0, 0, yPosition, xPosition);
}

void ScoreDropCoinsFromWario(s32 scoreChange)
{
    s32 currentScore;

    currentScore = gStageScore;
    gUnk_3000C04 = 0;

    if (scoreChange >= 0) {
        return;
    }
    if (gStageScore >= -scoreChange) {
        ScoreSpawnCoins(gWarioData.yPosition, gWarioData.xPosition, -scoreChange);
        ScoreGivePoints(scoreChange);
    } else {
        ScoreSpawnCoins(gWarioData.yPosition, gWarioData.xPosition, gStageScore);
        ScoreGivePoints(-currentScore);
    }
}

void ScoreCollectBlueCrystal(u16 yPosition, u16 xPosition)
{
    ScoreGivePoints(CONVERT_SCORE(10));
    SpriteSpawnSecondary(yPosition, xPosition, SSPRITE_SCORE_10);
    if (gWarioData.reaction == REACTION_WATER) {
        m4aSongNumStart(SE_GET_BLUE_CRYSTAL_UNDERWATER);
    } else {
        m4aSongNumStart(SE_GET_BLUE_CRYSTAL);
    }
}

void ScoreCollectRedCrystal(u16 yPosition, u16 xPosition)
{
    ScoreGivePoints(CONVERT_SCORE(100));
    SpriteSpawnSecondary(yPosition, xPosition, SSPRITE_SCORE_100);
    if (gWarioData.reaction == REACTION_WATER) {
        m4aSongNumStart(SE_GET_RED_CRYSTAL_UNDERWATER);
    } else {
        m4aSongNumStart(SE_GET_RED_CRYSTAL);
    }
}

void func_8076998(u16 yPosition, u16 xPosition, u8 arg2, u8 arg3, u8 arg4)
{
    u8 spriteId;
    switch (arg2) {
        case 0:
            spriteId = arg3 + 7;
            if (arg4) {
                spriteId += 6;
            }
            break;
        case 1:
            spriteId = arg3 + 0x13;
            if (arg4) {
                spriteId += 6;
            }
            break;
        case 2:
            spriteId = arg3 + 0x1F;
            if (arg4) {
                spriteId += 6;
            }
            break;
        case 3:
            if (arg4) {
                spriteId = SSPRITE_2D;
            } else {
                spriteId = SSPRITE_2C;
            }
            break;
        default:
            spriteId = SSPRITE_06;
            break;
    }
    SpriteSpawnSecondary(yPosition + HALF_BLOCK_SIZE, xPosition + HALF_BLOCK_SIZE, spriteId);
}

void ScoreSpriteAnimate(const struct AnimationFrame* pOamData)
{
    TIMER_COUNT_UP(gCurrentSecondarySprite.currentAnimationFrame);
    if (pOamData[gCurrentSecondarySprite.animationTimer].time <= gCurrentSecondarySprite.currentAnimationFrame) {
        gCurrentSecondarySprite.currentAnimationFrame = 0;
        gCurrentSecondarySprite.animationTimer++;
        if (pOamData[gCurrentSecondarySprite.animationTimer].time == 0) {
            gCurrentSecondarySprite.animationTimer = 0;
        }
    }
    gCurrentSecondarySpriteOamData = pOamData[gCurrentSecondarySprite.animationTimer].oam;
}
