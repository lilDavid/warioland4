#ifndef SYS_H
#define SYS_H

#include "types.h"


extern ProcedureFunc gVBlankCallback;
extern ProcedureFunc gHBlankCallback;
extern ProcedureFunc gVCountCallback;
extern u16 gInterruptCheck;


void InterruptCallback_CallVBlank(void);
void InterruptCallback_SetVBlank(ProcedureFunc cb);
void InterruptCallback_CallHBlank(void);
void InterruptCallback_SetHBlank(ProcedureFunc cb);
void InterruptCallback_CallVCount(void);
void InterruptCallback_SetVCount(ProcedureFunc cb);

void InterruptCallback_Empty(void);

#endif /* SYS_H */
