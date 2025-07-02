#ifndef FIXED_POINT_H
#define FIXED_POINT_H

#include "types.h"


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