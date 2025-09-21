#ifndef GAME_SCREEN_H
#define GAME_SCREEN_H

#include "types.h"

u32 GameScreenSubroutine(void);
void GameScreenSetVBlank(void);
void func_801BC0C(void);
void func_801BD4C(void);
void func_801BEA8(void);
void func_801C040(void);
void func_801C050(void);
void func_801C1B4(void);
void GameScreenInitAndLoadGenerics(void);
void GameScreenInitWario(void);

#endif  // GAME_SCREEN_H
