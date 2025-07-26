#ifndef SHOP_H
#define SHOP_H

#include "types.h"


enum ShopItem {
    SHOP_ITEM_APPLE_BOMB,
    SHOP_ITEM_BLAST_CANNON,
    SHOP_ITEM_VIZORMAN,
    SHOP_ITEM_BUGLE,
    SHOP_ITEM_BLACK_DOG,
    SHOP_ITEM_LARGE_LIPS,
    SHOP_ITEM_BIG_FIST,
    SHOP_ITEM_BLACK_DRAGON,
};

extern s8 gUnk_3000C37;
extern u8 gCurrentShopItem;

u32 ItemShopSubroutine(void);
// func_808FCE0()
// func_8090104()
// func_8090114()
// func_80901C4()
// func_8090374()
// func_809047C()
// Shop_DrawText()
// func_80906B4()

#endif  // SHOP_H