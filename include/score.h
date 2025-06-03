#ifndef SCORE_H
#define SCORE_H

#include "gba/types.h"


// Number of points per internal unit of score
#define SCORE_RATIO 10
// Convert an amount of points for storage
#define CONVERT_SCORE(points) ((points) / SCORE_RATIO)


enum ScoreSpriteID {
    SSPRITE_SCORE_10,
    SSPRITE_SCORE_50,
    SSPRITE_SCORE_100,
    SSPRITE_SCORE_500,
    SSPRITE_SCORE_1000,
    SSPRITE_5,
    SSPRITE_6,
    SSPRITE_7,
    // ...
    SSPRITE_MAX = 90
};


void Score_GivePoints(s32);
void Sprite_SpawnSecondary(u32 y, u32 x, u8 id);

#endif  // SCORE_H