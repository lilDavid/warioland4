#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include "types.h"


extern vu16 gInterruptCheck;
extern u16 gInterruptHandlerBuffer[1024];

void irq_handler(void);

#endif  // INTERRUPTS_H