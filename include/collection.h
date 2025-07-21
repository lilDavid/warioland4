#ifndef COLLECTION_H
#define COLLECTION_H

#include "types.h"
#include "game_state.h"


struct ItemCollection {
    u8 jewelPieceNE: 1;
    u8 jewelPieceSE: 1;
    u8 jewelPieceSW: 1;
    u8 jewelPieceNW: 1;
    u8 cd: 1;
    u8 keyzer: 1;
};

#define BOSS_REWARD_55_SEC jewelPieceNE
#define BOSS_REWARD_35_SEC jewelPieceSE
#define BOSS_REWARD_15_SEC jewelPieceSW
#define SHOW_BOSS_DOOR_OPENING jewelPieceNW
#define BOSS_DEFEATED keyzer
#define DIVA_DEFEATED cd


extern struct ItemCollection gCurrentCollection[PASSAGE_MAX][STAGE_MAX];
extern s32 gHighScoreTable[PASSAGE_MAX][NORMAL_STAGE_COUNT];

#endif