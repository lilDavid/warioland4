#ifndef SYS_H
#define SYS_H

#include "types.h"


extern ProcedureFunc vblank_callback;
extern ProcedureFunc hblank_callback;
extern ProcedureFunc vcount_callback;
extern u16 unk_0c42;


void handle_vblank_intr(void);
void set_vblank_callback(ProcedureFunc cb);
void handle_hblank_intr(void);
void set_hblank_callback(ProcedureFunc cb);
void handle_vcount_intr(void);
void set_vcount_callback(ProcedureFunc cb);
void null_callback(void);

#endif /* SYS_H */
