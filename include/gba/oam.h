#ifndef GBA_OAM_H
#define GBA_OAM_H

#include "gba/memory.h"
#include "gba/types.h"


typedef struct {
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u16 fill;
} OBJ_ATTR;

typedef struct {
    u16 fill0[3];
    s16 pa;
    u16 fill1[3];
    s16 pb;
    u16 fill2[3];
    s16 pc;
    u16 fill3[3];
    s16 pd;
} OBJ_AFFINE;


#define OAM_ATTR ((OBJ_ATTR*) OAM_BASE)
#define OAM_AFFINE ((OBJ_AFFINE*) OAM_BASE)

#define ATTR0_Y(y) ((y) & 0xFF)

#define ATTR0_REG (0 << 8)
#define ATTR0_AFF (1 << 8)
#define ATTR0_HIDE (2 << 8)
#define ATTR0_AFF_DBL (3 << 8)

#define ATTR0_BLEND (1 << 10)
#define ATTR0_WIN (2 << 10)

#define ATTR0_MOSAIC (1 << 12)

#define ATTR0_COLOR_16 (0 << 13)
#define ATTR0_COLOR_256 (1 << 13)

#define ATTR0_SQUARE (0 << 14)
#define ATTR0_WIDE (1 << 14)
#define ATTR0_TALL (2 << 14)

#define ATTR1_X(x) ((x) & 0x1FF)

#define ATTR1_AFF(i) (((i) & 0x1F) << 9)

#define ATTR1_HFLIP (1 << 12)
#define ATTR1_VFLIP (1 << 13)

#define ATTR1_SIZE(size) (((size) & 3) << 14)
#define ATTR1_8x8 ATTR1_SIZE(0)
#define ATTR1_16x8 ATTR1_SIZE(0)
#define ATTR1_8x16 ATTR1_SIZE(0)
#define ATTR1_16x16 ATTR1_SIZE(1)
#define ATTR1_32x8 ATTR1_SIZE(1)
#define ATTR1_8x32 ATTR1_SIZE(1)
#define ATTR1_32x32 ATTR1_SIZE(2)
#define ATTR1_32x16 ATTR1_SIZE(2)
#define ATTR1_16x32 ATTR1_SIZE(2)
#define ATTR1_64x64 ATTR1_SIZE(3)
#define ATTR1_64x32 ATTR1_SIZE(3)
#define ATTR1_32x64 ATTR1_SIZE(3)

#define ATTR2_ID(id) ((id) & 0x3FF)
#define ATTR2_PRIO(prio) (((prio) & 3) << 10)
#define ATTR2_PALETTE(pal) (((pal) & 15) << 12)

#endif  // GBA_OAM_H