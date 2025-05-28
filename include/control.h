#ifndef CONTROL_H
#define CONTROL_H

#include "gba/input.h"
#include "types.h"


#define CHECK_KEYS_ANY(input, combination) ((input) & (combination))
#define CHECK_KEYS_ALL(input, combination) (((input) & (combination)) == (combination))

extern u16 keys_held;
extern u16 keys_held_copy;
extern u16 keys_pressed;

void key_poll(void);

#endif  // CONTROL_H
