#include "gba.h"
#include "control.h"
#include "game_state.h"
#include "init_helpers.h"
#include "interrupts.h"
#include "io.h"
#include "sound.h"
#include "sram.h"
#include "interrupt_callbacks.h"


void EmptyFunction(void);


void InitializeGame(void) {
    write16(REG_DISPCNT, DCNT_BLANK);
    write16(REG_DISPSTAT, 0);
    write16(REG_IME, 0);

    dma_fill32(3, 0, EWRAM_BASE, EWRAM_SIZE);
    dma_fill32(3, 0, IWRAM_BASE, IWRAM_SIZE - 0x200);

    InitializeVideoMemory();
    InitializeInterruptHandler();
    InterruptCallback_SetVBlank(EmptyFunction);

    func_8072D24();
    func_8073BE0();
    Sound_Init();
    func_80022C8(0x900000);

    write16(REG_IME, 1);
    write16(REG_IE, IRQ_GAMEPAK | IRQ_VBLANK);
    write16(REG_DISPSTAT, DSTAT_VBL_IRQ);
    write16(
        REG_WAITCNT,
        WS_SRAM_4CYCLES |
        WS_ROM0_3CYCLES | WS_ROM0_SUB_1CYCLE | WS_ROM1_3CYCLES | WS_ROM1_SUB_1CYCLE |
        WS_ROM2_3CYCLES | WS_ROM2_SUB_1CYCLE |
        WS_CART_OFF | WS_PREFETCH_ENABLE | WS_CART_AGB
    );

    gButtonsHeld = 0;
    gButtonsHeldCopy = 0;
    gButtonsPressed = 0;
    gSubGameMode = 0;
    PollInput();
    if (gButtonsPressed == (KEY_L | KEY_R)) {
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

    if (CHECK_KEYS_ALL(gButtonsHeld, KEY_A | KEY_B | KEY_START | KEY_SELECT)) {
        gMainGameMode = GM_SOFT_RESET;
    }
}
