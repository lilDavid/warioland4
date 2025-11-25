#ifndef SPRITE_AI_VORTEX_H
#define SPRITE_AI_VORTEX_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sVortexLargePartOam[];
extern const struct AnimationFrame sVortexMediumPartOam[];
extern const struct AnimationFrame sVortexSmallPartOam[];
extern const struct AnimationFrame sVortexWarioOam[];
extern const struct AnimationFrame sVortexKeyzerOam[];

extern const u16 sVortexPal[];

void SpriteVortex(void);
void SpriteVortexPartMedium(void);
void SpriteVortexPartLarge(void);
void SpriteWarioExitingVortex(void);
void SpriteWarioEnteringVortex(void);
void SpriteKeyzerEnteringVortex(void);

#endif  // SPRITE_AI_VORTEX_H
