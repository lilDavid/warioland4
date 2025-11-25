#ifndef SPRITE_AI_COINS_H
#define SPRITE_AI_COINS_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sCoin500PointsOamData[];
extern const struct AnimationFrame sCoin100PointsOamData[];
extern const struct AnimationFrame sCoin50PointsOamData[];
extern const struct AnimationFrame sCoin10PointsOamData[];

extern const struct AnimationFrame sCoinsUnusedOamData[];

extern const struct AnimationFrame sDiamondOamData[];

extern const struct AnimationFrame sLittleHeartOamData[];

extern const s16 sDiamondFloatYVelocity[];

void SpriteCoin(void);
void SpriteDiamond(void);
void SpriteChanceWheelDiamond(void);

#endif  // SPRITE_AI_COINS_H
