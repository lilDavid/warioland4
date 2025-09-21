#include "autosave.h"

#include "main.h"
#include "save_file.h"
#include "score.h"
#include "types.h"
#include "vortex_cutscene.h"
#include "wario.h"

void Autosave_StageClear(void) {
    s32 i;
    s32 score;
    u32 completedJewels;
    u32 hearts;

    gNewHighScore = FALSE;

    if (gCollectedNEJewelPiece) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].jewelPieceNE = TRUE;
    }
    if (gCollectedSEJewelPiece) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].jewelPieceSE = TRUE;
    }
    if (gCollectedSWJewelPiece) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].jewelPieceSW = TRUE;
    }
    if (gCollectedNWJewelPiece) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].jewelPieceNW = TRUE;
    }
    if (gCollectedCD) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].cd = TRUE;
    }
    if (gCollectedKeyzer) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].keyzer = TRUE;
    }

    if (gCollectedNEJewelPiece == 2 || gCollectedSEJewelPiece == 2 || gCollectedSWJewelPiece == 2 ||
        gCollectedNWJewelPiece == 2) {
        completedJewels = 0;
        for (i = 0; i < NORMAL_STAGE_COUNT; i++) {
            if (gCurrentCollection[gCurrentPassage][i].jewelPieceNE &&
                gCurrentCollection[gCurrentPassage][i].jewelPieceSE &&
                gCurrentCollection[gCurrentPassage][i].jewelPieceSW &&
                gCurrentCollection[gCurrentPassage][i].jewelPieceNW) {
                completedJewels += 1;
            }
        }
        if (completedJewels == NORMAL_STAGE_COUNT ||
            ((gCurrentPassage == PASSAGE_ENTRY || gCurrentPassage == PASSAGE_GOLDEN) &&
             completedJewels == ENTRY_GOLDEN_STAGE_COUNT)) {
            gCurrentCollection[gCurrentPassage][STAGE_BOSS].SHOW_BOSS_DOOR_OPENING = TRUE;
        }
    }

    gTotalScoreTemp = gTotalScore;
    hearts = gHeartMeter.current + gHeartMeter.filling;
    if (gHeartMeter.current + gHeartMeter.filling > 8) {
        hearts = 8;
    }
    score = gStageScore + CONVERT_SCORE(50) * hearts;
    gTotalScore += score;
    if (score > MAX_SCORE) {
        score = MAX_SCORE;
    }
    if (gTotalScore > MAX_SCORE) {
        gTotalScore = MAX_SCORE;
    }

    if (gHighScoreTable[gCurrentPassage][gCurrentStageNumber] < score) {
        gNewHighScore = TRUE;
        gHighScoreTable[gCurrentPassage][gCurrentStageNumber] = score;
    }

    func_8073880();
    gSaveFlag = TRUE;
}

void Autosave_BossClear(void) {
    if (gHasBossChest55sec) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].BOSS_REWARD_55_SEC = TRUE;
    }
    if (gHasBossChest35sec) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].BOSS_REWARD_35_SEC = TRUE;
    }
    if (gHasBossChest15sec) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].BOSS_REWARD_15_SEC = TRUE;
    }
    if (gCollectedKeyzer) {
        gCurrentCollection[gCurrentPassage][gCurrentStageNumber].BOSS_DEFEATED = TRUE;
    }

    gCurrentPassageTemp = gCurrentPassage;
    gCurrentStageNumber = STAGE_MAX;

    if (gCurrentCollection[PASSAGE_EMERALD][STAGE_BOSS].BOSS_DEFEATED &&
        gCurrentCollection[PASSAGE_RUBY][STAGE_BOSS].BOSS_DEFEATED &&
        gCurrentCollection[PASSAGE_TOPAZ][STAGE_BOSS].BOSS_DEFEATED &&
        gCurrentCollection[PASSAGE_SAPPHIRE][STAGE_BOSS].BOSS_DEFEATED) {
        gCurrentPassage = PASSAGE_GOLDEN;
    }

    func_8073880();
    gSaveFlag = 1;
    gCollectedKeyzer = 0;
}

void Autosave_Defeat(void) {
    func_8073880();
    gSaveFlag = 1;
}

void Autosave_FinalBoss(void) {
    s32 i;
    u32 passage;

    gDisableSoftReset = TRUE;

    for (i = 0; i < 5; i++) {
        gCurrentCollection[PASSAGE_EMERALD + i][STAGE_BOSS].BOSS_DEFEATED = FALSE;
        gCurrentCollection[PASSAGE_EMERALD + i][STAGE_BOSS].BOSS_REWARD_55_SEC = FALSE;
        gCurrentCollection[PASSAGE_EMERALD + i][STAGE_BOSS].BOSS_REWARD_35_SEC = FALSE;
        gCurrentCollection[PASSAGE_EMERALD + i][STAGE_BOSS].BOSS_REWARD_15_SEC = FALSE;
        gCurrentCollection[PASSAGE_EMERALD + i][STAGE_BOSS].SHOW_BOSS_DOOR_OPENING = FALSE;
    }
    gCurrentCollection[gCurrentPassage][gCurrentStageNumber].DIVA_DEFEATED = TRUE;

    passage = gCurrentPassage;
    gCurrentPassageTemp = passage;
    gCurrentPassage = PASSAGE_SOUND_ROOM;
    gCurrentStageNumber = STAGE_MAX;

    if (gHasGoldenDivaChest1 && gHasGoldenDivaChest2 && gHasGoldenDivaChest3 && gHasGoldenDivaChest4 &&
        gHasGoldenDivaChest5 && gHasGoldenDivaChest6 && gHasGoldenDivaChest7 && gHasGoldenDivaChest8 &&
        gHasGoldenDivaChest9 && gHasGoldenDivaChest10 && gHasGoldenDivaChest11 && gHasGoldenDivaChest12) {
        if (gTitleScreenStyle != TITLE_STYLE_S_HARD_UNLOCKED && gDifficulty == DIFFICULTY_HARD) {
            gClearMessage = CLEAR_MESSAGE_SUPER_HARD_UNLOCKED;
            gTitleScreenStyle = TITLE_STYLE_S_HARD_UNLOCKED;
            func_8072CA0();
        } else {
            gClearMessage = CLEAR_MESSAGE_ALL_TREASURES;
        }
    } else {
        gClearMessage = CLEAR_MESSAGE_TRY_FOR_ALL_TREASURES;
    }
    func_8073880();
    gSaveFlag = 1;

    gCollectedKeyzer = 0;
    gCurrentPassage = passage;
}
