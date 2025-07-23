#include "main.h"

#include "gba.h"
#include "types.h"

#include "control.h"
#include "init_helpers.h"
#include "soft_reset.h"

#include "game_state.h"  // TODO: Reorganize
void func_8000828(void);
void func_8000834(void);
u32 func_8003474(void);
u32 func_801B8BC(void);
u32 func_8072B98(void);
u32 func_8072C70(void);
u32 func_80799A8(void);
u32 func_8088678(void);
u32 func_8089900(void);
u32 func_808FB84(void);
u32 func_80917A8(void);
u32 func_80927E4(void);
u32 func_8092FD8(void);


void AgbMain(void) {
    u32 cutsceneResult;

    InitializeGame();
    goto soundcode;

    while (TRUE) {
        PollInput();
        CheckSoftReset();
        TIMER_COUNT_UP(gUnk_3000C41);
        gUnk_3000006 += 1;

        switch (gMainGameMode) {
            case GM_TITLE:
                cutsceneResult = func_8003474();
                if (cutsceneResult == 1) {
                    gMainGameMode = GM_9;
                    gSubGameMode = 0;
                } else if (cutsceneResult == 2) {
                    gMainGameMode = GM_LEVEL_SELECT;
                    gSubGameMode = 5;
                } else if (cutsceneResult == 3) {
                    gMainGameMode = GM_ENDING;
                    gSubGameMode = 0;
                } else if (cutsceneResult == 4) {
                    gMainGameMode = GM_TITLE;
                    gSubGameMode = -1;
                    break;
                } else {
                    if (!(gUnk_3000020 & 0x80)) {
                        break;
                    }
                    gMainGameMode = GM_DEMO;
                    gSubGameMode = 0;
                }
                break;

            case GM_9:
                if (func_80917A8()) {
                    if (gUnk_3000C3E == 1) {
                        if (gUnk_3000012) {
                            gSubGameMode = 0;
                            gMainGameMode = GM_IN_GAME;
                        } else {
                            gMainGameMode = GM_LEVEL_SELECT;
                            if (!gSaveFlag) {
                                gSubGameMode = -2;
                                gMainGameMode = GM_TITLE;
                            } else if (gCurrentStageNumber == STAGE_MAX) {
                                gSubGameMode = 0;
                            } else {
                                gSubGameMode = 0x26;
                            }
                        }
                    } else {
                        gSubGameMode = 0;
                        gMainGameMode = GM_TITLE;
                    }
                    gUnk_3000C3E = 0;
                }
                gUnk_3000C3F = 0;
                break;

            case GM_LEVEL_SELECT:
                if (!func_80799A8()) {
                    break;
                }
                gSubGameMode = 0;
                gMainGameMode = GM_IN_GAME;
                if (gCurrentStageID == 6 || gCurrentStageID == 12 || gCurrentStageID == 18 || gCurrentStageID == 24) {
                    gMainGameMode = GM_6;
                }
                break;

            case GM_IN_GAME:
                if (func_801B8BC()) {
                    if (gUnk_3000C35) {
                        gMainGameMode = GM_PAUSE;
                    } else if (gUnk_3000C37) {
                        gMainGameMode = GM_7;
                    } else if (gUnk_3000022) {
                        gMainGameMode = GM_11;
                    } else {
                        gMainGameMode = GM_LEVEL_SELECT;
                        switch (gUnk_3000048) {
                            case 0:
                            case 1:
                                gSubGameMode = 0x15;
                                break;
                            case 6:
                                gSubGameMode = 0x26;
                                break;
                            case 2:
                                gSubGameMode = 0x14;
                                break;
                            case 3:
                            case 4:
                                gSubGameMode = 0xE;
                                break;
                            case 5:
                                if (gCurrentPassageTemp == PASSAGE_ENTRY) {
                                    gSubGameMode = 0x1D;
                                } else if (gCurrentPassageTemp == PASSAGE_GOLDEN) {
                                    gMainGameMode = GM_TITLE;
                                    gSubGameMode = -3;
                                } else {
                                    gSubGameMode = 0x19;
                                }
                                break;
                        }
                    }
                }
                break;

            case GM_PAUSE:
                if (func_8088678()) {
                    switch (gUnk_3000C35) {
                        case 1:
                            gMainGameMode = GM_IN_GAME;
                            break;
                        case 2:
                            if (gUnk_3000022) {
                                gMainGameMode = GM_11;
                            } else {
                                gUnk_3000025 = 0;
                                gMainGameMode = GM_LEVEL_SELECT;
                                gSubGameMode = 0x15;
                            }
                            break;
                        case 3:
                            gUnk_3000C35 = 0;
                            gMainGameMode = GM_SOFT_RESET;
                            break;
                    }
                }
                break;

            case GM_5:
                func_8072C70();
                gMainGameMode = GM_PAUSE;
                break;

            case GM_SOFT_RESET:
                func_8000834();
                break;

            case GM_6:
                if (func_8089900()) {
                    if (gUnk_3000022) {
                        gMainGameMode = GM_11;
                        gSubGameMode = 0;
                    } else {
                        gMainGameMode = GM_LEVEL_SELECT;
                        gSubGameMode = 0x27;
                    }
                }
                break;

            case GM_7:
                if (func_808FB84()) {
                    gMainGameMode = GM_IN_GAME;
                }
                break;

            case GM_DEMO:
                if (func_801B8BC() && gUnk_3000C35) {
                    gSubGameMode = func_8072B98() ? 0 : -1;
                    gMainGameMode = GM_TITLE;
                }
                break;

            case GM_SAVE_RESET:
                if (func_80927E4()) {
                    gSubGameMode = 0;
                    if (gUnk_3000C3E == 1) {
                        gUnk_3000018 = 2;
                    } else {
                        gMainGameMode = GM_TITLE;
                    }
                }
                break;

            case GM_ENDING:
                if (func_8092FD8()) {
                    gMainGameMode = GM_TITLE;
                    gSubGameMode = -4;
                }
                break;
        }
        if (gUnk_3000C40 && gMainGameMode != GM_TITLE) {
            m4aSoundMain();
        }

        gUnk_3000C42 &= ~1;
        do {
            SYSCALL(SYSCALL_Halt);
        } while (!(gUnk_3000C42 & 1));

        soundcode:
        gUnk_3000C40 = 0;
        if (gMainGameMode != GM_TITLE) {
            m4aSoundMain();
        }
        if (gUnk_3000018) {
            m4aSoundVSyncOff();
            if (gUnk_3000018 == 2) {
                func_8000828();
            }
            return;
        }
    }
}
