#include "gba/dma.h"
#include "types.h"


#ifdef NON_MATCHING
void init_video_memory(void) {
    u16 zero;
    u32 oam_clear;
    vu32* channel;

    zero = 0;
    channel = REG_DMA3;
    channel[DMA_SAD] = (u32) &zero;
    channel[DMA_DAD] = (u32) VRAM_BASE;
    channel[DMA_CNT] = DMA_ENABLE | DMA_16 | DMA_SRC_FIXED | DMA_N(VRAM_SIZE / sizeof(u16));
    channel[DMA_CNT];

    oam_clear = U8_MAX;
    channel[DMA_SAD] = (u32) &oam_clear;
    channel[DMA_DAD] = (u32) OAM_BASE;
    channel[DMA_CNT] = DMA_ENABLE | DMA_32 | DMA_SRC_FIXED | DMA_N(OAM_SIZE / sizeof(u32));
    channel[DMA_CNT];

    zero = 0;
    channel[DMA_SAD] = (u32) &zero;
    channel[DMA_DAD] = (u32) PALRAM_BASE;
    channel[DMA_CNT] = DMA_ENABLE | DMA_16 | DMA_SRC_FIXED | DMA_N(2 * COLORS_PER_PALETTE);
    channel[DMA_CNT];
}
#else
__attribute__((naked))
void init_video_memory(void) {
    asm(" \n\
    sub     sp, #8 \n\
    mov     r0, sp \n\
    movs    r2, #0 \n\
    strh    r2, [r0, #0] \n\
    ldr     r1, reg_dma3  @ =0x040000d4 (44) \n\
    str     r0, [r1, #0] \n\
    movs    r0, #0xc0 \n\
    lsl     r0, r0, #0x13 \n\
    str     r0, [r1, #4] \n\
    ldr     r0, vram_dma  @ =0x8100c000 (48) \n\
    str     r0, [r1, #8] \n\
    ldr     r0, [r1, #8] \n\
    movs    r0, #0xff \n\
    str     r0, [sp, #4] \n\
    add     r0, sp, #4 \n\
    str     r0, [r1, #0] \n\
    movs    r0, #0xe0 \n\
    lsl     r0, r0, #0x13 \n\
    str     r0, [r1, #4] \n\
    ldr     r0, oam_dma  @ =0x85000100 (4c) \n\
    str     r0, [r1, #8] \n\
    ldr     r0, [r1, #8] \n\
    mov     r0, sp \n\
    strh    r2, [r0, #0] \n\
    str     r0, [r1, #0] \n\
    movs    r0, #0xa0 \n\
    lsl     r0, r0, #0x13 \n\
    str     r0, [r1, #4] \n\
    ldr     r0, palram_dma  @ =0x81000200 (50) \n\
    str     r0, [r1, #8] \n\
    ldr     r0, [r1, #8] \n\
    add     sp, #8 \n\
    bx      lr \n\
.align 2, 0 \n\
reg_dma3: .4byte   0x040000d4 \n\
vram_dma: .4byte   0x8100c000 \n\
oam_dma: .4byte   0x85000100 \n\
palram_dma: .4byte   0x81000200 \n\
    ");
}
#endif
