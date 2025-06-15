#include "gba.h"
#include "interrupts.h"


void InitializeVideoMemory(void) {
    dma_fill16(3, 0, VRAM_BASE, VRAM_SIZE);
    dma_fill32(3, U8_MAX, OAM_BASE, OAM_SIZE);
    dma_fill16(3, 0, PALRAM_BASE, PALRAM_SIZE);
}

void InitializeInterruptHandler(void) {
    DMA_TRANSFER(3,
        irq_handler,
        gInterruptHandlerBuffer,
        DMA_ENABLE | DMA_16 | DMA_NOW | DMA_SRC_INC | DMA_DST_INC | DMA_N(sizeof(gInterruptHandlerBuffer) / sizeof(u16))
    );
    intr_vector = (ProcedureFunc) &gInterruptHandlerBuffer;
}
