#ifndef SYS_H
#define SYS_H

#include "types.h"

extern ProcedureFunc gVBlankCallback;
extern ProcedureFunc gHBlankCallback;
extern ProcedureFunc gVCountCallback;

void InterruptCallbackCallVBlank(void);
void InterruptCallbackSetVBlank(ProcedureFunc cb);
void InterruptCallbackCallHBlank(void);
void InterruptCallbackSetHBlank(ProcedureFunc cb);
void InterruptCallbackCallVCount(void);
void InterruptCallbackSetVCount(ProcedureFunc cb);
void InterruptCallbackEmpty(void);

#endif /* SYS_H */
