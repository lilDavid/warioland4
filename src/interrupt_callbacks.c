#include "gba/interrupt.h"
#include "io.h"
#include "sys.h"
#include "types.h"


void handle_vblank_intr(void) {
    if (vblank_callback != NULL) {
        vblank_callback();
    }

    write16(REG_IF, read16(REG_IF) | IRQ_VBLANK);
    unk_0c42 = 1;
}

void set_vblank_callback(InterruptCallbackFunc cb) {
    vblank_callback = cb;
    if (cb == NULL) {
        vblank_callback = null_callback;
    }
}

void handle_hblank_intr(void) {
    if (hblank_callback != NULL) {
        hblank_callback();
    }

    write16(REG_IF, read16(REG_IF) | IRQ_HBLANK);
}

void set_hblank_callback(InterruptCallbackFunc cb) {
    hblank_callback = cb;
    if (cb == NULL) {
        hblank_callback = null_callback;
    }
}

void handle_vcount_intr(void) {
    if (vcount_callback != NULL) {
        vcount_callback();
    }

    write16(REG_IF, read16(REG_IF) | IRQ_VCOUNT);
}

void set_vcount_callback(InterruptCallbackFunc cb) {
    vcount_callback = cb;
    if (cb == NULL) {
        vcount_callback = null_callback;
    }
}

void null_callback(void) {
}
