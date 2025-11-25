#ifndef SPRITE_AI_SPEAR_MASK_H
#define SPRITE_AI_SPEAR_MASK_H

#include "oam.h"
#include "sprite.h"

enum SpearMaskPose {
    SPEAR_MASK_POSE_6E = SPOSE_6E,
    SPEAR_MASK_POSE_6F,
    SPEAR_MASK_POSE_70,
    SPEAR_MASK_POSE_71,
    SPEAR_MASK_POSE_72,
    SPEAR_MASK_STARTING_CHASE,
    SPEAR_MASK_POSE_74,
    SPEAR_MASK_CHASING,
};

enum SpearMaskPalette {
    SPEAR_MASK_PALETTE_YELLOW,
    SPEAR_MASK_PALETTE_BLUE,
    SPEAR_MASK_PALETTE_RED,
};

extern const struct AnimationFrame sSpearMaskWalkingOam[];
extern const struct AnimationFrame sSpearMaskCrushedOam[];
extern const struct AnimationFrame sSpearMaskTackledOam[];
extern const struct AnimationFrame sSpearMaskTurning1Oam[];
extern const struct AnimationFrame sSpearMaskTurning2Oam[];
extern const struct AnimationFrame sSpearMaskTurning3Oam[];
extern const struct AnimationFrame sSpearMaskOam_83B4224[];
extern const struct AnimationFrame sSpearMaskStunnedOam[];
extern const struct AnimationFrame sSpearMaskGettingUpOam[];
extern const struct AnimationFrame sSpearMaskTransforming1Oam[];
extern const struct AnimationFrame sSpearMaskTransforming2Oam[];
extern const struct AnimationFrame sSpearMaskOam_83B4334[];
extern const struct AnimationFrame sSpearMaskOam_83B4344[];
extern const struct AnimationFrame sSpearMaskHitWarioOam[];
extern const struct AnimationFrame sSpearMaskPushedOam[];
extern const struct AnimationFrame sSpearMaskOam_83B4374[];
extern const struct AnimationFrame sSpearMaskRecoveringOam[];
extern const struct AnimationFrame sSpearMaskOam_83B43A4[];
extern const struct AnimationFrame sSpearMaskSpearTwirlingOam[];
extern const struct AnimationFrame sSpearMaskTurningOam[];
extern const struct AnimationFrame sSpearMaskOam_83B4424[];
extern const struct AnimationFrame sSpearMaskOam_83B443C[];
extern const struct AnimationFrame sSpearMaskOam_83B4464[];
extern const struct AnimationFrame sSpearMaskOam_83B4484[];
extern const struct AnimationFrame sSpearMaskOam_83B44AC[];
extern const struct AnimationFrame sSpearMaskStartingChaseOam[];
extern const struct AnimationFrame sSpearMaskChasingOam[];

void SpriteSpearMask(void);

#endif  // SPRITE_AI_SPEAR_MASK_H
