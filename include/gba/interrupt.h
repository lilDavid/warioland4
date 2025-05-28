#ifndef GBA_INTERRUPT_H
#define GBA_INTERRUPT_H

#include "gba/memory.h"


#define REG_IE  (REG_BASE + 0x200)
#define REG_IF  (REG_BASE + 0x202)
#define REG_IME  (REG_BASE + 0x208)

enum IRQ {
    IRQ_VBLANK = 1 << 0,
    IRQ_HBLANK = 1 << 1,
    IRQ_VCOUNT = 1 << 2,
    IRQ_TIMER0 = 1 << 3,
    IRQ_TIMER1 = 1 << 4,
    IRQ_TIMER2 = 1 << 5,
    IRQ_TIMER3 = 1 << 6,
    IRQ_COM = 1 << 7,
    IRQ_DMA0 = 1 << 8,
    IRQ_DMA1 = 1 << 9,
    IRQ_DMA2 = 1 << 10,
    IRQ_DMA3 = 1 << 11,
    IRQ_KEYPAD = 1 << 12,
    IRQ_GAMEPAK = 1 << 13,
};

#endif  /* GBA_INTERRUPT_H */
