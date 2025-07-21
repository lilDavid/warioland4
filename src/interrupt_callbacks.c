#include "gba.h"
#include "interrupt_callbacks.h"
#include "types.h"


void InterruptCallback_CallVBlank(void) {
    if (gVBlankCallback != NULL) {
        gVBlankCallback();
    }

    REG_IF |= INTR_FLAG_VBLANK;
    gUnk_3000C42 = 1;
}

void InterruptCallback_SetVBlank(ProcedureFunc cb) {
    gVBlankCallback = cb;
    if (cb == NULL) {
        gVBlankCallback = InterruptCallback_Empty;
    }
}

void InterruptCallback_CallHBlank(void) {
    if (gHBlankCallback != NULL) {
        gHBlankCallback();
    }

    REG_IF |= INTR_FLAG_HBLANK;
}

void InterruptCallback_SetHBlank(ProcedureFunc cb) {
    gHBlankCallback = cb;
    if (cb == NULL) {
        gHBlankCallback = InterruptCallback_Empty;
    }
}

void InterruptCallback_CallVCount(void) {
    if (gVCountCallback != NULL) {
        gVCountCallback();
    }

    REG_IF |= INTR_FLAG_VCOUNT;
}

void InterruptCallback_SetVCount(ProcedureFunc cb) {
    gVCountCallback = cb;
    if (cb == NULL) {
        gVCountCallback = InterruptCallback_Empty;
    }
}

void InterruptCallback_Empty(void) {
}
