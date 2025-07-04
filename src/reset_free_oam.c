#include "oam.h"


void ResetFreeOam(void) {
    s32 i;
    u16* pOamSlot;

    pOamSlot = (u16*) gOamBuffer;
    pOamSlot += gOamSlotsUsed * sizeof(OBJ_ATTR) / sizeof(u16);
    for (i = gOamSlotsUsed; i < MAX_OAM_SLOTS; pOamSlot++, i++) {
        *pOamSlot++ = U8_MAX;
        *pOamSlot++ = U8_MAX;
        *pOamSlot++ = 0;
    }
}
