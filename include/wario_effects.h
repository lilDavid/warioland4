#ifndef WARIO_EFFECTS_H
#define WARIO_EFFECTS_H

#include "types.h"

struct WarioEffectGfx {
    void* pGfx1;
    u32 gfx1Size;
    void* pGfx2;
    u32 gfx2Size;
};

extern struct WarioEffectGfx sWarioEffectsGfx[];

#endif  // WARIO_EFFECTS_H
