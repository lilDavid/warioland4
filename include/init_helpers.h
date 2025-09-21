#ifndef INIT_HELPERS_H
#define INIT_HELPERS_H

#include "types.h"


void LZ77UnCompVramWrapper(const u32 *src, void *dest);
void PollInput(void);
void InitializeVideoMemory(void);
void InitializeInterruptHandler(void);
void ResetFreeOam(void);

#endif  // INIT_HELPERS_H