#ifndef OAM_H
#define OAM_H

#include "gba/oam.h"
#include "types.h"


typedef union {
    OBJ_ATTR obj[MAX_OAM_SLOTS];
    OBJ_AFFINE affine[MAX_OAM_SLOTS / 4];
} OamData;


typedef struct {
    const u16* oam;
    u8 time;
} AnimationFrame;


#define OAM_ENTRY(x, y, shape, size, tile, palette, priority)\
    (shape) | ATTR0_COLOR_16 | ATTR0_REG | ATTR0_Y(y),\
    (size) | ATTR1_X(x),\
    ATTR2_PALETTE(palette) | ATTR2_PRIO(priority) | ATTR2_ID(tile)

#define ANIMATION_TERMINATOR { NULL, 0 }


extern OamData gOamBuffer[MAX_OAM_SLOTS];
extern u8 gOamSlotsUsed;

#endif  // OAM_H
