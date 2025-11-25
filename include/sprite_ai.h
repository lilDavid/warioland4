#ifndef SPRITE_AI_H
#define SPRITE_AI_H

enum SpritePose {
    SPOSE_INIT,
    SPOSE_INIT_1,
    SPOSE_INIT_2,
    SPOSE_INIT_3,
    SPOSE_INIT_4,
    SPOSE_INIT_5,
    SPOSE_INIT_6,
    SPOSE_INIT_7,
    SPOSE_INIT_8,
    SPOSE_INIT_9,
    SPOSE_INIT_10,
    SPOSE_INIT_11,
    SPOSE_INIT_12,
    SPOSE_INIT_13,
    SPOSE_INIT_14,

    SPOSE_IDLE_INIT,
    SPOSE_IDLE,
    SPOSE_11,
    SPOSE_12,
    SPOSE_13,
    SPOSE_14,
    SPOSE_15,
    SPOSE_16,
    SPOSE_17,
    SPOSE_18,
    SPOSE_19,
    SPOSE_1A,
    SPOSE_1B,
    SPOSE_1C,
    SPOSE_1D,
    SPOSE_1E,
    SPOSE_TACKLED_RIGHT_INIT,
    SPOSE_TACKLED_RIGHT,
    SPOSE_TACKLED_LEFT_INIT,
    SPOSE_TACKLED_LEFT,
    SPOSE_PUSHED_RIGHT_INIT,
    SPOSE_PUSHED_RIGHT,
    SPOSE_PUSHED_LEFT_INIT,
    SPOSE_PUSHED_LEFT,
    SPOSE_27,
    SPOSE_28,
    SPOSE_29,
    SPOSE_2A,
    SPOSE_2B,
    SPOSE_2C,
    SPOSE_2D,
    SPOSE_2E,
    SPOSE_2F,
    SPOSE_30,
    SPOSE_CRUSHED_OR_COLLECTED_INIT,
    SPOSE_CRUSHED_OR_COLLECTED,
    SPOSE_33,
    SPOSE_34,
    SPOSE_35,
    SPOSE_36,
    SPOSE_37,
    SPOSE_38,
    SPOSE_39,
    SPOSE_3A,
    SPOSE_3B,
    SPOSE_3C,
    SPOSE_3D,
    SPOSE_3E,
    SPOSE_3F,
    SPOSE_40,
    SPOSE_41,
    SPOSE_42,
    SPOSE_43,
    SPOSE_44,
    SPOSE_45,
    SPOSE_46,
    SPOSE_47,
    SPOSE_48,
    SPOSE_49,
    SPOSE_4A,
    SPOSE_4B,
    SPOSE_4C,
    SPOSE_4D,
    SPOSE_4E,
    SPOSE_4F,
    SPOSE_50,
    SPOSE_BEING_LIFTED_RIGHT_INIT,
    SPOSE_BEING_LIFTED_RIGHT,
    SPOSE_BEING_LIFTED_LEFT_INIT,
    SPOSE_BEING_LIFTED_LEFT,
    SPOSE_CARRIED_LEFT_INIT,
    SPOSE_CARRIED_LEFT,
    SPOSE_CARRIED_RIGHT_INIT,
    SPOSE_CARRIED_RIGHT,
    SPOSE_THROWN_LEFT_SOFT_INIT,
    SPOSE_THROWN_LEFT_SOFT,
    SPOSE_THROWN_RIGHT_SOFT_INIT,
    SPOSE_THROWN_RIGHT_SOFT,
    SPOSE_THROWN_LEFT_HARD_INIT,
    SPOSE_THROWN_LEFT_HARD,
    SPOSE_THROWN_RIGHT_HARD_INIT,
    SPOSE_THROWN_RIGHT_HARD,
    SPOSE_THROWN_UP_LEFT_SOFT_INIT,
    SPOSE_THROWN_UP_LEFT_SOFT,
    SPOSE_THROWN_UP_RIGHT_SOFT_INIT,
    SPOSE_THROWN_UP_RIGHT_SOFT,
    SPOSE_THROWN_UP_LEFT_HARD_INIT,
    SPOSE_THROWN_UP_LEFT_HARD,
    SPOSE_THROWN_UP_RIGHT_HARD_INIT,
    SPOSE_THROWN_UP_RIGHT_HARD,
    SPOSE_69,
    SPOSE_6A,
    SPOSE_6B,
    SPOSE_6C,
    SPOSE_6D,

    // These are apparently 'auxiliary' poses
    SPOSE_6E,
    SPOSE_6F,
    SPOSE_70,
    SPOSE_71,
    SPOSE_72,
    SPOSE_73,
    SPOSE_74,
    SPOSE_75,
    SPOSE_76,
    SPOSE_77,
    SPOSE_78,
    SPOSE_79,
    SPOSE_7A,
};

void SpriteSpearMask(void);
void SpriteRotatingPlatform(void);
void SpriteUnknown94(void);
void SpriteUnknown96(void);
void SpriteUnknown97(void);
void SpriteUnknown95(void);
void SpriteRotatingPlatform2(void);
void SpriteRotatingPlatform3(void);
void SpriteUnknownAE(void);
void SpriteUnknownAF(void);
void SpriteUnknownB0(void);
void SpriteUnknownB1(void);
void SpriteKeyzer(void);
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
void SpriteUnknown10(void);
void SpriteVortex(void);
void SpriteVortexPartMedium(void);
void SpriteVortexPartLarge(void);
void SpriteWarioExitingVortex(void);
void SpriteWarioEnteringVortex(void);
void SpriteKeyzerEnteringVortex(void);
void SpriteSwitch(void);
void SpriteUnknownAA(void);
void SpriteCoin(void);
void SpriteDiamond(void);
void SpriteChanceWheelDiamond(void);
void SpriteSkeletonBird(void);
void SpriteUnknown98(void);
void SpriteUnknown99(void);
void SpriteKaentsubo(void);
void SpriteUnknown92(void);
void SpriteUnknown93(void);
void SpriteCuckooCondor(void);
void SpriteUnknownE7(void);
void SpriteUnknownE8(void);
void SpriteUnknownE5(void);
void SpriteUnknownE6(void);
void SpriteUnknownBD(void);
void SpriteUnknownC8(void);
void SpriteUnknownE9(void);
void SpriteUnknownEA(void);
void SpriteTotsumen(void);
void SpritePigHeadStatue(void);
void SpriteUnknownB6(void);
void SpriteMoguramen(void);
void SpriteUnknown9A(void);
void SpriteSpiky(void);
void SpriteBubble(void);
void SpriteUnknown9B(void);
void SpriteTogerobo(void);
void SpriteUnknown9C(void);
void SpriteFallingSnow(void);
void SpriteUnknown9D(void);
void SpriteUnknown9E(void);
void SpriteTogemasuku(void);
void SpriteBallLightning(void);
void SpriteUnknown9F(void);
void SpriteUnknownA0(void);
void SpriteElectricLiftStationary(void);
void SpriteElectricLiftVertical(void);
void SpriteElectricLiftHorizontal(void);
void SpriteMagicCarpet(void);
void SpriteBowBalloon(void);
void SpriteUnknownA1(void);
void SpriteChanceWheel(void);
void SpriteUnknownA2(void);
void SpriteMarumen(void);
void SpriteSpoiledRotten(void);
void SpriteDominoes2D(void);
void SpriteDominoes2E(void);
void SpriteDominoes2F(void);
void SpriteDominoGoal(void);
void SpriteDominoes30(void);
void SpriteDominoes31(void);
void SpriteDominoes32(void);
void SpriteDominoes33(void);
void SpriteDominoes34(void);
void SpriteDominoes35(void);
void SpriteDominoes36(void);
void SpriteDominoes37(void);
void SpriteDominoes38(void);
void SpriteDominoes39(void);
void SpriteMayubird(void);
void SpriteRock(void);
void SpriteMinicula(void);
void SpriteTogetoge(void);
void SpriteGhost(void);
void SpriteUnknownA7(void);
void SpriteUnknownA8(void);
void SpriteBeezley(void);
void SpriteMoneyFlower(void);
void SpriteCaterpillar(void);
void SpriteToyBlockTriangle(void);
void SpriteToyBlockTriangleLock(void);
void SpriteToyBlockTriangleDoor(void);
void SpriteToyBlockSquare(void);
void SpriteToyBlockRound(void);
void SpriteMenhanma(void);
void SpriteMenono(void);
void SpriteGoggleyBlade(void);
void SpriteDiceBlock(void);
void SpriteTobawani(void);
void SpriteShieragutchi(void);
void SpriteRingosuki(void);
void SpriteUnknownB2(void);
void SpritePiston(void);
void SpriteUnknownB9(void);
void SpriteUnknownFB(void);
void SpriteCatbat(void);
void SpriteUnknownE0(void);
void SpriteUnknownE1(void);
void SpriteUnknownE2(void);
void SpriteUnknownE3(void);
void SpriteUnknownE4(void);
void SpriteSwingingPlatform(void);
void SpriteSwingingPlatform2(void);
void SpriteUnknownAC(void);
void SpriteUnknownAD(void);
void SpritePinball(void);
void SpritePinballLockUp(void);
void SpritePinballLockDown(void);
void SpritePinballLockLeft(void);
void SpritePinballLockRight(void);
void SpritePinballCounter(void);
void SpriteUnknownB5(void);
void SpriteSpikeCannon(void);
void SpriteUnknownB8(void);
void SpriteMoneySunflower(void);
void SpriteYeti(void);
void SpriteUnknownBB(void);
void SpriteBowler(void);
void SpriteUnknownBA(void);
void SpriteMagma(void);
void SpriteBossDoor(void);
void SpriteApple(void);
void SpriteBlastCannon(void);
void SpriteUnknownC5(void);
void SpriteVizorman(void);
void SpriteUnknownC6(void);
void SpriteUnknownC7(void);
void SpriteBugle(void);
void SpriteUnknownC1(void);
void SpriteUnknownC2(void);
void SpriteUnknownC9(void);
void SpriteUnknownC3(void);
void SpriteUnknownC4(void);
void SpriteUnknownCA(void);
void SpriteBossTreasureChest(void);
void SpriteShopkeeper(void);
void SpriteUnknown0C(void);
void SpriteUnknown0B(void);
void SpriteUnknown0A(void);
void SpriteUnknown0F(void);
void SpriteUnknownCC(void);
void SpriteAerodent(void);
void SpriteUnknownCB(void);
void SpriteUnknownCD(void);
void SpriteUnknownCE(void);
void SpriteUnknownCF(void);
void SpriteHoggus(void);
void SpriteUnknownD0(void);
void SpriteDenden(void);
void SpriteUnknownD1(void);
void SpriteButatabi(void);
void SpriteDeburina(void);
void SpriteUnknownD2(void);
void SpritePencil(void);
void SpriteFoldingDoor(void);
void SpriteRobobird(void);
void SpriteUtsuboanko(void);
void SpriteTogenobi(void);
void SpriteUnknownD4(void);
void SpriteUnknownD5(void);
void SpriteUnknownD6(void);
void SpriteIcicle(void);
void SpriteUnknownD7(void);
void SpriteUnknownDD(void);
void SpriteUnknownDE(void);
void SpriteCactus(void);
void SpriteUnknownD8(void);
void SpriteUnknownD9(void);
void SpriteUnknownDA(void);
void SpriteUnknownDB(void);
void SpriteUnknownDF(void);
void SpriteUnknownF9(void);
void SpriteDice(void);
void SpriteToyCar(void);
void SpriteUnknownA9(void);
void SpriteOnomi(void);
void SpriteBossCorridorCat(void);
void SpritePetbottom(void);
void SpriteGlassBird(void);
void SpriteUnknownEB(void);
void SpriteGoldenDiva(void);
void SpriteUnknownEC(void);
void SpriteUnknownED(void);
void SpriteUnknownEE(void);
void SpriteUnknownF1(void);
void SpriteUnknownEF(void);
void SpriteUnknownF0(void);
void SpriteUnknownF2(void);
void SpriteUnknownF3(void);
void SpriteUnknownF4(void);
void SpriteUnknownF5(void);
void SpriteUnknownF6(void);
void SpriteUnknownF7(void);
void SpriteUnknownAB(void);
void SpriteUnknownF8(void);
void SpriteChandelier(void);
void SpriteCrumblingBlock(void);
void SpriteProfessor(void);
void SpriteUnknownFA(void);

#endif
