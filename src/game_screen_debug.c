#include "game_screen_debug.h"

#include "types.h"

#include "autosave.h"
#include "control.h"
#include "global_data.h"
#include "main.h"
#include "score.h"
#include "wario.h"

void GameScreenDebugSubroutine(void)
{
    s32 temp;
    s16 xVelocity;
    s16 yVelocity;

    xVelocity = 0;
    yVelocity = 0;
    gUnk_30019F2 = gWarioData.xPosition;
    gUnk_30019F4 = gWarioData.yPosition;

    if (CHECK_KEYS_ALL(gButtonsPressed, SELECT_BUTTON)) {
        gSubGameMode = 2;
        gUnk_300004C.unk0 = 0;
    }
    if (CHECK_KEYS_ALL(gButtonsPressed, DPAD_UP) && CHECK_KEYS_ALL(gButtonsHeld, L_BUTTON)) {
        if (gCurrentPassage != PASSAGE_GOLDEN) {
            if (gCurrentStageNumber < STAGE_BOSS) {
                gCollectedNEJewelPiece = 2;
                gCollectedSEJewelPiece = 2;
                gCollectedSWJewelPiece = 2;
                gCollectedNWJewelPiece = 2;
                if (gCurrentPassage != PASSAGE_ENTRY) {
                    gCollectedCD = 2;
                }
                gCollectedKeyzer = TRUE;
            } else if (gCurrentStageNumber == STAGE_BOSS) {
                gCollectedNEJewelPiece = 2;
                gCollectedSEJewelPiece = 2;
                gCollectedSWJewelPiece = 2;
                gCollectedKeyzer = TRUE;
            }
        }
        gSubGameMode = 6;
        gUnk_3000021 = 0;
        gStageExitType = 2;
        AutosaveStageClear();
        return;
    }

    if (CHECK_KEYS_ALL(gButtonsPressed, START_BUTTON)) {
        gUnk_300004C.unk0 ^= 1;
    }
    if (CHECK_KEYS_ALL(gButtonsHeld, DPAD_RIGHT)) {
        xVelocity = SUBPIXELS_FROM_PIXELS(3);
    }
    if (CHECK_KEYS_ALL(gButtonsHeld, DPAD_LEFT)) {
        xVelocity = SUBPIXELS_FROM_PIXELS(-3);
    }
    if (CHECK_KEYS_ALL(gButtonsHeld, DPAD_UP)) {
        yVelocity = SUBPIXELS_FROM_PIXELS(-3);
    }
    if (CHECK_KEYS_ALL(gButtonsHeld, DPAD_DOWN)) {
        yVelocity = SUBPIXELS_FROM_PIXELS(3);
    }
    if (CHECK_KEYS_ALL(gButtonsHeld, R_BUTTON)) {
        xVelocity *= 2;
        yVelocity *= 2;
    }

    if (SIGN_BIT(gWarioData.xPosition)) {
        gWarioData.xPosition = 0;
    }
    if (SIGN_BIT(gWarioData.yPosition)) {
        gWarioData.yPosition = 0;
    }

    temp = gBackgroundInfo.bg1Width << 6;
    if (xVelocity < 0) {
        if (gWarioData.xPosition < -xVelocity) {
            gWarioData.xPosition = 0;
        } else {
            gWarioData.xPosition = gWarioData.xPosition + xVelocity;
        }
    } else {
        if (gWarioData.xPosition > (temp - xVelocity)) {
            gWarioData.xPosition = temp;
        } else {
            gWarioData.xPosition = gWarioData.xPosition + xVelocity;
        }
    }

    temp = gBackgroundInfo.bg1Height << 6;
    if (yVelocity < 0) {
        if (gWarioData.yPosition < -yVelocity) {
            gWarioData.yPosition = 0;
        } else {
            gWarioData.yPosition = gWarioData.yPosition + yVelocity;
        }
    } else {
        if (gWarioData.yPosition > (temp - yVelocity)) {
            gWarioData.yPosition = temp;
        } else {
            gWarioData.yPosition = gWarioData.yPosition + yVelocity;
        }
    }
}

void func_801D4D4(void)
{
    s32 var_r6;
    u8 temp;

    if (gSubGameMode != 8) {
        return;
    }

    gOamBuffer[0x7C].split.y = 0x8C;
    gOamBuffer[0x7C].split.x = 0xE6;
    gOamBuffer[0x7C].split.tileNum = 0x1F0 + gCurrentRoom % 10;
    gOamBuffer[0x7C].split.paletteNum = 3;

    temp = gCurrentRoom / 10;
    if (temp != 0) {
        gOamBuffer[0x7A].split.y = 0x8C;
        gOamBuffer[0x7A].split.x = 0xDE;
        gOamBuffer[0x7A].split.tileNum = 0x1F0 + temp;
        gOamBuffer[0x7A].split.paletteNum = 3;
        AutosaveStageClear();
    }

    var_r6 = 0;
    if (gUnk_300004C.unk2 == U8_MAX) {
        return;
    }

    temp = gUnk_300004C.unk2;
    if (SIGN_BIT(temp)) {
        temp = gUnk_300004C.unk2 & 0x7F;
        var_r6 = 3;
    }
    gOamBuffer[0x7B].split.y = 0x96;
    gOamBuffer[0x7B].split.x = 0xE6;
    gOamBuffer[0x7B].split.tileNum = 0x1F0 + temp;
    gOamBuffer[0x7B].split.paletteNum = var_r6;

    temp = gUnk_300004C.unk1;
    if (gUnk_300004C.unk1 == 0) {
        return;
    }
    gOamBuffer[0x79].split.y = 0x96;
    gOamBuffer[0x79].split.x = 0xDE;
    gOamBuffer[0x79].split.tileNum = 0x1F0 + temp;
    gOamBuffer[0x79].split.paletteNum = var_r6;
}
