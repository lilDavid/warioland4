#include "gba.h"
#include "interrupts.h"


void InitializeVideoMemory(void) {
    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill32(3, U8_MAX, OAM, OAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);
}

void InitializeInterruptHandler(void) {
    DmaCopy16(3, irq_handler, gInterruptHandlerBuffer, sizeof(gInterruptHandlerBuffer));
    INTR_VECTOR = &gInterruptHandlerBuffer;
}
