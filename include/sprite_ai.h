#ifndef SPRITE_AI_H
#define SPRITE_AI_H

enum SpritePose {
    POSE_INIT,
    POSE_INIT_1,
    POSE_INIT_2,
    POSE_INIT_3,
    POSE_INIT_4,
    POSE_INIT_5,
    POSE_INIT_6,
    POSE_INIT_7,
    POSE_INIT_8,
    POSE_INIT_9,
    POSE_INIT_10,
    POSE_INIT_11,
    POSE_INIT_12,
    POSE_INIT_13,
    POSE_INIT_14,

    POSE_IDLE_INIT,
    POSE_IDLE,
    POSE_11,
    POSE_12,
    POSE_13,
    POSE_14,
    POSE_15,
    POSE_16,
    POSE_17,
    POSE_18,
    POSE_19,
    POSE_1A,
    POSE_1B,
    POSE_1C,
    POSE_1D,
    POSE_1E,
    POSE_TACKLED_RIGHT_INIT,
    POSE_TACKLED_RIGHT,
    POSE_TACKLED_LEFT_INIT,
    POSE_TACKLED_LEFT,
    POSE_PUSHED_RIGHT_INIT,
    POSE_PUSHED_RIGHT,
    POSE_PUSHED_LEFT_INIT,
    POSE_PUSHED_LEFT,
    POSE_27,
    POSE_28,
    POSE_29,
    POSE_2A,
    POSE_2B,
    POSE_2C,
    POSE_2D,
    POSE_2E,
    POSE_2F,
    POSE_30,
    POSE_CRUSHED_OR_COLLECTED_INIT,
    POSE_CRUSHED_OR_COLLECTED,
    POSE_33,
    POSE_34,
    POSE_35,
    POSE_36,
    POSE_37,
    POSE_38,
    POSE_39,
    POSE_3A,
    POSE_3B,
    POSE_3C,
    POSE_3D,
    POSE_3E,
    POSE_3F,
    POSE_40,
    POSE_41,
    POSE_42,
    POSE_43,
    POSE_44,
    POSE_45,
    POSE_46,
    POSE_47,
    POSE_48,
    POSE_49,
    POSE_4A,
    POSE_4B,
    POSE_4C,
    POSE_4D,
    POSE_4E,
    POSE_4F,
    POSE_50,
    POSE_BEING_LIFTED_RIGHT_INIT,
    POSE_BEING_LIFTED_RIGHT,
    POSE_BEING_LIFTED_LEFT_INIT,
    POSE_BEING_LIFTED_LEFT,
    POSE_CARRIED_LEFT_INIT,
    POSE_CARRIED_LEFT,
    POSE_CARRIED_RIGHT_INIT,
    POSE_CARRIED_RIGHT,
    POSE_THROWN_LEFT_SOFT_INIT,
    POSE_THROWN_LEFT_SOFT,
    POSE_THROWN_RIGHT_SOFT_INIT,
    POSE_THROWN_RIGHT_SOFT,
    POSE_THROWN_LEFT_HARD_INIT,
    POSE_THROWN_LEFT_HARD,
    POSE_THROWN_RIGHT_HARD_INIT,
    POSE_THROWN_RIGHT_HARD,
    POSE_THROWN_UP_LEFT_SOFT_INIT,
    POSE_THROWN_UP_LEFT_SOFT,
    POSE_THROWN_UP_RIGHT_SOFT_INIT,
    POSE_THROWN_UP_RIGHT_SOFT,
    POSE_THROWN_UP_LEFT_HARD_INIT,
    POSE_THROWN_UP_LEFT_HARD,
    POSE_THROWN_UP_RIGHT_HARD_INIT,
    POSE_THROWN_UP_RIGHT_HARD,
    POSE_69,
    POSE_6A,
    POSE_6B,
    POSE_6C,
    POSE_6D,
};

void SpriteBoxJewelPieceNE(void);
void SpriteBoxJewelPieceSE(void);
void SpriteBoxJewelPieceSW(void);
void SpriteBoxJewelPieceNW(void);
void SpriteBoxCD(void);
void SpriteBoxHeartRefill(void);
void SpriteDiamond(void);
void SpriteKeyzer(void);
void SpriteRock(void);
void SpriteCoin(void);
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
void SpriteChanceWheelDiamond(void);
void SpriteVortex(void);
void SpriteVortexPartMedium(void);
void SpriteVortexPartLarge(void);
void SpriteWarioExitingVortex(void);
void SpriteWarioEnteringVortex(void);
void SpriteKeyzerEnteringVortex(void);

#endif
