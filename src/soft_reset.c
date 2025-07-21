#include "gba.h"
#include "control.h"
#include "game_state.h"
#include "init_helpers.h"
#include "interrupts.h"
#include "sound.h"
#include "sram.h"
#include "interrupt_callbacks.h"


void EmptyFunction(void);


void InitializeGame(void) {
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_DISPSTAT = 0;
    REG_IME = FALSE;

    DmaFill32(3, 0, EWRAM_START, EWRAM_SIZE);
    DmaFill32(3, 0, IWRAM_START, IWRAM_SIZE - 0x200);

    InitializeVideoMemory();
    InitializeInterruptHandler();
    InterruptCallback_SetVBlank(EmptyFunction);

    func_8072D24();
    func_8073BE0();
    Sound_Init();
    func_80022C8(0x900000);

    REG_IME = TRUE;
    REG_IE = INTR_FLAG_GAMEPAK | INTR_FLAG_VBLANK;
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_WAITCNT = WAITCNT_SRAM_4 |
                  WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 |
                  WAITCNT_WS1_N_3 | WAITCNT_WS1_S_1 |
                  WAITCNT_WS2_N_3 | WAITCNT_WS2_S_1 |
                  WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE | WAITCNT_AGB;

    gButtonsHeld = 0;
    gButtonsHeldCopy = 0;
    gButtonsPressed = 0;
    gSubGameMode = 0;
    PollInput();
    if (gButtonsPressed == (L_BUTTON | R_BUTTON)) {
        gMainGameMode = GM_SAVE_RESET;
    } else {
        gMainGameMode = GM_TITLE;
    }
    gButtonsHeld = 0;
    gButtonsHeldCopy = 0;
    gButtonsPressed = 0;

    gDisableSoftReset = 0;
};

void EmptyFunction() {
}

void CheckSoftReset(void) {
    if (gMainGameMode == GM_SOFT_RESET || gDisableSoftReset) {
        return;
    }

    if (CHECK_KEYS_ALL(gButtonsHeld, A_BUTTON | B_BUTTON | START_BUTTON | SELECT_BUTTON)) {
        gMainGameMode = GM_SOFT_RESET;
    }
}
