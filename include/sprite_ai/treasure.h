#ifndef SPRITE_AI_TREASURE_H
#define SPRITE_AI_TREASURE_H

#include "oam.h"
#include "types.h"

extern const s16 sTreasureFloatYVelocity[];

extern const struct AnimationFrame sCDOam[];
extern const struct AnimationFrame sHeartRefillOam[];
extern const struct AnimationFrame sJewelPieceNWOam[];
extern const struct AnimationFrame sJewelPieceSWOam[];
extern const struct AnimationFrame sJewelPieceNEOam[];
extern const struct AnimationFrame sJewelPieceSEOam[];
extern const struct AnimationFrame sTreasureGlowOam[];
extern const struct AnimationFrame sTreasureGlowDisappearingOam[];

extern const struct AnimationFrame sBoxCDOpeningOam[];
extern const struct AnimationFrame sBoxCDClosedOam[];
extern const struct AnimationFrame sBoxCDOpenedOam[];
extern const struct AnimationFrame sBoxJewelPieceOpeningOam[];
extern const struct AnimationFrame sBoxJewelPieceNWClosedOam[];
extern const struct AnimationFrame sBoxJewelPieceSWClosedOam[];
extern const struct AnimationFrame sBoxJewelPieceNEClosedOam[];
extern const struct AnimationFrame sBoxJewelPieceSEClosedOam[];
extern const struct AnimationFrame sBoxJewelPieceOpenedOam[];
extern const struct AnimationFrame sBoxHeartRefillOpeningOam[];
extern const struct AnimationFrame sBoxHeartRefillClosedOam[];
extern const struct AnimationFrame sBoxHeartRefillOpenedOam[];

void SpriteBoxJewelPieceNE(void);
void SpriteBoxJewelPieceSE(void);
void SpriteBoxJewelPieceSW(void);
void SpriteBoxJewelPieceNW(void);
void SpriteBoxCD(void);
void SpriteBoxHeartRefill(void);
void SpriteJewelPieceNE(void);
void SpriteJewelPieceSE(void);
void SpriteJewelPieceSW(void);
void SpriteJewelPieceNW(void);
void SpriteCD(void);
void SpriteHeartRefill(void);
void SpriteTreasureGlowJewelPieceNE(void);
void SpriteTreasureGlowJewelPieceSE(void);
void SpriteTreasureGlowJewelPieceSW(void);
void SpriteTreasureGlowJewelPieceNW(void);
void SpriteTreasureGlowCD(void);
void SpriteTreasureGlowHeartRefill(void);
void SpriteTreasureUnused(void);
void SpriteUnknown10(void);

#endif  // SPRITE_AI_TREASURE_H
