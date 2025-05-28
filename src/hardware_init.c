#include "gba/display.h"
#include "gba/dma.h"
#include "gba/interrupt.h"
#include "gba/input.h"
#include "gba/memory.h"
#include "gba/wait_state.h"
#include "control.h"
#include "game_state.h"
#include "init_helpers.h"
#include "interrupt_service_routine.h"
#include "io.h"
#include "sound.h"
#include "sram.h"
#include "sys.h"


static void empty_func(void);

#ifdef NON_MATCHING
void hardware_init(void) {
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

    init_video_memory();
    init_irq();
    set_vblank_callback(empty_func);

    func_072D24();
    func_073BE0();
    sound_init();
    func_0022C8(0x900000);

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

    keys_held = keys_held_copy = keys_pressed = 0;
    secondary_game_mode = 0;
    key_poll();
    if (keys_pressed == KEY_L | KEY_R) {
        main_game_mode = GM_SAVE_RESET;
    } else {
        main_game_mode = GM_TITLE;
    }
    keys_held = keys_held_copy = keys_pressed = 0;

    disable_soft_reset = 0;
};
#else
__attribute__((naked))
void hardware_init(void) {
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
    bl init_video_memory \n\
    bl init_irq \n\
    ldr r0, ptr_empty_func \n\
    bl set_vblank_callback \n\
    bl func_072D24 \n\
    bl func_073BE0 \n\
    bl sound_init \n\
    mov r0, #0x90 \n\
    lsl r0, r0, #16 \n\
    bl func_0022C8 \n\
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
    ldr r0, ptr_keys_held_a \n\
    strh r7, [r0] \n\
    ldr r0, ptr_keys_held_copy_a \n\
    strh r7, [r0] \n\
    ldr r4, ptr_keys_pressed_a \n\
    strh r7, [r4] \n\
    ldr r0, ptr_secondary_game_mode \n\
    strh r7, [r0] \n\
    bl key_poll \n\
    ldrh r0, [r4] \n\
    lsr r5, r5, #16 \n\
    cmp r0, r5 \n\
    bne title \n\
    ldr r1, ptr_main_game_mode_a \n\
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
ptr_empty_func: .4byte empty_func \n\
ptr_reg_ie: .4byte 0x4000200 \n\
reg_ie_val: .4byte 0x2001 \n\
reg_waitcnt_val: .4byte 0x45B4 \n\
ptr_keys_held_a: .4byte keys_held \n\
ptr_keys_held_copy_a: .4byte keys_held_copy \n\
ptr_keys_pressed_a: .4byte keys_pressed \n\
ptr_secondary_game_mode: .4byte secondary_game_mode \n\
ptr_main_game_mode_a: .4byte main_game_mode \n\
 \n\
title: \n\
    ldr r0, ptr_main_game_mode_b \n\
    strh r7, [r0] \n\
 \n\
continue: \n\
    ldr r0, ptr_keys_held_b \n\
    mov r1, #0 \n\
    strh r1, [r0] \n\
    ldr r0, ptr_keys_held_copy_b \n\
    strh r1, [r0] \n\
    ldr r0, ptr_keys_pressed_b \n\
    strh r1, [r0] \n\
    ldr r0, ptr_disable_soft_reset \n\
    strb r1, [r0] \n\
 \n\
    add sp, #4 \n\
    pop {r4, r5, r6, r7} \n\
    pop {r0} \n\
    bx r0 \n\
 \n\
.align 2, 0 \n\
ptr_main_game_mode_b: .4byte main_game_mode \n\
ptr_keys_held_b: .4byte keys_held \n\
ptr_keys_held_copy_b: .4byte keys_held_copy \n\
ptr_keys_pressed_b: .4byte keys_pressed \n\
ptr_disable_soft_reset: .4byte disable_soft_reset \n\
    ");
}
#endif

static void empty_func() {
}
