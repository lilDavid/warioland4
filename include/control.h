#ifndef CONTROL_H
#define CONTROL_H

#include "types.h"

extern u16 keys_held;
extern u16 keys_held_copy;
extern u16 keys_pressed;

void key_poll(void);

#endif  // CONTROL_H
