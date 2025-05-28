#ifndef SYS_H
#define SYS_H

#include "types.h"


typedef void (*InterruptCallbackFunc)(void);

extern InterruptCallbackFunc vblank_callback;
extern InterruptCallbackFunc hblank_callback;
extern InterruptCallbackFunc vcount_callback;
extern u16 unk_0c42;


void handle_vblank_intr(void);
void set_vblank_callback(InterruptCallbackFunc cb);
void handle_hblank_intr(void);
void set_hblank_callback(InterruptCallbackFunc cb);
void handle_vcount_intr(void);
void set_vcount_callback(InterruptCallbackFunc cb);
void null_callback(void);

#endif /* SYS_H */
