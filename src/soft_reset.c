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

#ifdef NON_MATCHING
void InitializeGame(void) {
    vu32 zero;

    write16(REG_DISPCNT, DCNT_WINOBJ | DCNT_MODE0);
    write16(REG_DISPSTAT, 0);
    write16(REG_IME, 0);

    zero = 0;
    DMA_TRANSFER(3,
        &zero,
        EWRAM_BASE,
        DMA_ENABLE | DMA_NOW | DMA_32 | DMA_SRC_FIXED | DMA_DST_INC | DMA_N(EWRAM_SIZE / sizeof(u32))
    );
    zero = 0;
    DMA_TRANSFER(3,
        &zero,
        IWRAM_BASE,
        DMA_ENABLE | DMA_NOW | DMA_32 | DMA_SRC_FIXED | DMA_DST_INC | DMA_N(0x7E00 / sizeof(u32))
    );

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

    gButtonsHeld = gButtonsHeldCopy = gButtonsPressed = 0;
    gSubGameMode = 0;
    PollInput();
    if (gButtonsPressed == KEY_L | KEY_R) {
        gMainGameMode = GM_SAVE_RESET;
    } else {
        gMainGameMode = GM_TITLE;
    }
    gButtonsHeld = gButtonsHeldCopy = gButtonsPressed = 0;

    gDisableSoftReset = 0;
};
#else
__attribute__((naked))
void InitializeGame(void) {
    asm(" \n \
    push {r4, r5, r6, r7, lr} \n\
    sub sp, #4 \n\
 \n\
    mov r1, #0x80 \n\
    lsl r1, r1, #0x13 \n\
    mov r0, #0x80 \n\
    strh r0, [r1] \n\
    ldr r6, ptr_reg_dispstat \n\
    mov r0, #0 \n\
    strh r0, [r6] \n\
    ldr r4, ptr_reg_ime \n\
    strh r0, [r4] \n\
 \n\
    mov r7, #0 \n\
    str r7, [sp] \n\
    ldr r0, ptr_reg_dma3sad \n\
    mov r1, sp \n\
    str r1, [r0] \n\
    mov r1, #0x80 \n\
    lsl r1, r1, #0x12 \n\
    str r1, [r0, #4] \n\
    ldr r1, ewram_dmacnt \n\
    str r1, [r0, #8] \n\
    ldr r1, [r0, #8] \n\
 \n\
    str r7, [sp] \n\
    mov r2, sp \n\
    str r2, [r0] \n\
    mov r5, #0xC0 \n\
    lsl r5, r5, #0x12 \n\
    str r5, [r0, #4] \n\
    ldr r1, iwram_dmacnt \n\
    str r1, [r0, #8] \n\
    ldr r0, [r0, #8] \n\
 \n\
    bl InitializeVideoMemory \n\
    bl InitializeInterruptHandler \n\
    ldr r0, ptr_EmptyFunction \n\
    bl InterruptCallback_SetVBlank \n\
    bl func_8072D24 \n\
    bl func_8073BE0 \n\
    bl Sound_Init \n\
    mov r0, #0x90 \n\
    lsl r0, r0, #16 \n\
    bl func_80022C8 \n\
 \n\
    mov r0, #1 \n\
    strh r0, [r4] \n\
    ldr r1, ptr_reg_ie \n\
    ldr r2, reg_ie_val \n\
    add r0, r2, #0 \n\
    strh r0, [r1] \n\
    mov r0, #8 \n\
    strh r0, [r6] \n\
    add r1, #4 \n\
    ldr r2, reg_waitcnt_val \n\
    add r0, r2, #0 \n\
    strh r0, [r1] \n\
 \n\
    ldr r0, ptr_gButtonsHeld_a \n\
    strh r7, [r0] \n\
    ldr r0, ptr_gButtonsHeldCopy_a \n\
    strh r7, [r0] \n\
    ldr r4, ptr_gButtonsPressed_a \n\
    strh r7, [r4] \n\
    ldr r0, ptr_gSubGameMode \n\
    strh r7, [r0] \n\
    bl PollInput \n\
    ldrh r0, [r4] \n\
    lsr r5, r5, #16 \n\
    cmp r0, r5 \n\
    bne title \n\
    ldr r1, ptr_gMainGameMode_a \n\
    mov r0, #10 \n\
    strh r0, [r1] \n\
    b continue \n\
 \n\
.align 2, 0 \n\
ptr_reg_dispstat: .4byte 0x4000004 \n\
ptr_reg_ime: .4byte 0x4000208 \n\
ptr_reg_dma3sad: .4byte 0x40000D4 \n\
ewram_dmacnt: .4byte 0x85010000 \n\
iwram_dmacnt: .4byte 0x85001F80 \n\
ptr_EmptyFunction: .4byte EmptyFunction \n\
ptr_reg_ie: .4byte 0x4000200 \n\
reg_ie_val: .4byte 0x2001 \n\
reg_waitcnt_val: .4byte 0x45B4 \n\
ptr_gButtonsHeld_a: .4byte gButtonsHeld \n\
ptr_gButtonsHeldCopy_a: .4byte gButtonsHeldCopy \n\
ptr_gButtonsPressed_a: .4byte gButtonsPressed \n\
ptr_gSubGameMode: .4byte gSubGameMode \n\
ptr_gMainGameMode_a: .4byte gMainGameMode \n\
 \n\
title: \n\
    ldr r0, ptr_gMainGameMode_b \n\
    strh r7, [r0] \n\
 \n\
continue: \n\
    ldr r0, ptr_gButtonsHeld_b \n\
    mov r1, #0 \n\
    strh r1, [r0] \n\
    ldr r0, ptr_gButtonsHeldCopy_b \n\
    strh r1, [r0] \n\
    ldr r0, ptr_gButtonsPressed_b \n\
    strh r1, [r0] \n\
    ldr r0, ptr_gDisableSoftReset \n\
    strb r1, [r0] \n\
 \n\
    add sp, #4 \n\
    pop {r4, r5, r6, r7} \n\
    pop {r0} \n\
    bx r0 \n\
 \n\
.align 2, 0 \n\
ptr_gMainGameMode_b: .4byte gMainGameMode \n\
ptr_gButtonsHeld_b: .4byte gButtonsHeld \n\
ptr_gButtonsHeldCopy_b: .4byte gButtonsHeldCopy \n\
ptr_gButtonsPressed_b: .4byte gButtonsPressed \n\
ptr_gDisableSoftReset: .4byte gDisableSoftReset \n\
    ");
}
#endif

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
