#ifndef INTERRUPT_SERVICE_ROUTINE_H
#define INTERRUPT_SERVICE_ROUTINE_H

#include "types.h"


extern u32 gInterruptHandlerBuffer[512];

extern ProcedureFunc intr_vector;
void irq_handler(void);

#endif  // INTERRUPT_SERVICE_ROUTINE_H