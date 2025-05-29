#include "gba.h"
#include "interrupt_service_routine.h"


void init_video_memory(void) {
    vu16 zero;  // Seriously?
    u32 oam_clear;

    zero = 0;
    DMA_TRANSFER(3,
        &zero,
        VRAM_BASE,
        DMA_ENABLE | DMA_16 | DMA_NOW | DMA_SRC_FIXED | DMA_DST_INC | DMA_N(VRAM_SIZE / sizeof(u16))
    );

    oam_clear = U8_MAX;
    DMA_TRANSFER(3,
        &oam_clear,
        OAM_BASE,
        DMA_ENABLE | DMA_32 | DMA_NOW | DMA_SRC_FIXED | DMA_DST_INC | DMA_N(OAM_SIZE / sizeof(u32))
    );

    zero = 0;
    DMA_TRANSFER(3,
        &zero,
        PALRAM_BASE,
        DMA_ENABLE | DMA_16 | DMA_NOW | DMA_SRC_FIXED | DMA_DST_INC | DMA_N(2 * COLORS_PER_PALETTE)
    );
}

void init_irq(void) {
    DMA_TRANSFER(3,
        irq_handler,
        isr_buffer,
        DMA_ENABLE | DMA_16 | DMA_NOW | DMA_SRC_INC | DMA_DST_INC | DMA_N(sizeof(isr_buffer) / sizeof(u16))
    );
    intr_vector = (ProcedureFunc) &isr_buffer;
}
