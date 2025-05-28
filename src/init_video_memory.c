#include "gba/dma.h"
#include "types.h"


void init_video_memory(void) {
    vu16 zero;  // Seriously?
    u32 oam_clear;

    zero = 0;
    DMA_TRANSFER(3, &zero, VRAM_BASE, DMA_ENABLE | DMA_16 | DMA_SRC_FIXED | DMA_N(VRAM_SIZE / sizeof(u16)));

    oam_clear = U8_MAX;
    DMA_TRANSFER(3, &oam_clear, OAM_BASE, DMA_ENABLE | DMA_32 | DMA_SRC_FIXED | DMA_N(OAM_SIZE / sizeof(u32)));

    zero = 0;
    DMA_TRANSFER(3, &zero, PALRAM_BASE, DMA_ENABLE | DMA_16 | DMA_SRC_FIXED | DMA_N(2 * COLORS_PER_PALETTE));
}
