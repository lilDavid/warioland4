#ifndef FIXED_POINT_H
#define FIXED_POINT_H

#include "types.h"

#define Q_8_8(n) ((s16)((n) * (1 << 8)))
#define Q_8_8_TO_SHORT(n) ((s16)((n) / (1 << 8)))
#define Q_4_12(n) ((s16)((n) * (1 << 12)))
#define Q_16_16(n) ((s32)((n) * (1 << 16)))
#define Q_24_8(n) ((s32)((n) * (1 << 8)))
#define Q_8_8_TO_INT(n) ((s32)((n) / (1 << 8)))
#define Q_4_12_TO_INT(n) ((s32)((n) / (1 << 12)))
#define Q_24_8_TO_INT(n) ((s32)((n) / (1 << 8)))

#define ANGLE_2PI (256)
#define ANGLE_PI (ANGLE_2PI / 2)
#define ANGLE_HALF_PI (ANGLE_PI / 2)
#define ANGLE_QUARTER_PI (ANGLE_PI / 4)

extern const s16 sSinCosTable[5 * ANGLE_HALF_PI];

#define SIN(angle) (sSinCosTable[angle])
#define COS(angle) (sSinCosTable[(angle) + ANGLE_HALF_PI])

s32 FixedMul(s32, s32);
s32 FixedDiv(s32, s32);
s32 FixedInverse(s32);

#endif  // FIXED_POINT_H
