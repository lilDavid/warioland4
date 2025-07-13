#include "gba.h"
#include "interrupts.h"


void InitializeVideoMemory(void) {
    dma_fill16(3, 0, VRAM_BASE, VRAM_SIZE);
    dma_fill32(3, U8_MAX, OAM_BASE, OAM_SIZE);
    dma_fill16(3, 0, PALRAM_BASE, PALRAM_SIZE);
}

void InitializeInterruptHandler(void) {
    dma_copy16(3, irq_handler, gInterruptHandlerBuffer, sizeof(gInterruptHandlerBuffer));
    intr_vector = (ProcedureFunc) &gInterruptHandlerBuffer;
}
