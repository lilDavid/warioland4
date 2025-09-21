#include "hud.h"

#include "global_data.h"
#include "shop.h"
#include "sprite.h"

const u16 sCommonSpritesPal[] = {
#include "data/CommonSprites.pal.inc"
};
const u8 sCommonSpritesGfx[] = {
#include "data/CommonSprites.4bpp.inc"
};

const u8 sScoreDigitsGfx[] = {
#include "data/hud/ScoreDigits.4bpp.inc"
};

const u8 sTimeDigitsUpperGfx[] = {
#include "data/hud/TimeDigitsUpper.4bpp.inc"
};
const u8 sTimeColonUpperGfx[] = {
#include "data/hud/TimeColonUpper.4bpp.inc"
};
const u8 sTimeColonEmptyUpperGfx[] = {
#include "data/hud/TimeColonEmptyUpper.4bpp.inc"
};
const u8 sTimeDigitsLowerGfx[] = {
#include "data/hud/TimeDigitsLower.4bpp.inc"
};
const u8 sTimeColonLowerGfx[] = {
#include "data/hud/TimeColonLower.4bpp.inc"
};
const u8 sTimeColonEmptyLowerGfx[] = {
#include "data/hud/TimeColonEmptyLower.4bpp.inc"
};

const u8 sTimeYellowDigitsUpperGfx[] = {
#include "data/hud/TimeYellowDigitsUpper.4bpp.inc"
};
const u8 sTimeYellowColonUpperGfx[] = {
#include "data/hud/TimeYellowColonUpper.4bpp.inc"
};
const u8 sTimeYellowColonEmptyUpperGfx[] = {
#include "data/hud/TimeYellowColonEmptyUpper.4bpp.inc"
};
const u8 sTimeYellowDigitsLowerGfx[] = {
#include "data/hud/TimeYellowDigitsLower.4bpp.inc"
};
const u8 sTimeYellowColonLowerGfx[] = {
#include "data/hud/TimeYellowColonLower.4bpp.inc"
};
const u8 sTimeYellowColonEmptyLowerGfx[] = {
#include "data/hud/TimeYellowColonEmptyLower.4bpp.inc"
};

const u8 sTimeRedDigitsUpperGfx[] = {
#include "data/hud/TimeRedDigitsUpper.4bpp.inc"
};
const u8 sTimeRedColonUpperGfx[] = {
#include "data/hud/TimeRedColonUpper.4bpp.inc"
};
const u8 sTimeRedColonEmptyUpperGfx[] = {
#include "data/hud/TimeRedColonEmptyUpper.4bpp.inc"
};
const u8 sTimeRedDigitsLowerGfx[] = {
#include "data/hud/TimeRedDigitsLower.4bpp.inc"
};
const u8 sTimeRedColonLowerGfx[] = {
#include "data/hud/TimeRedColonLower.4bpp.inc"
};
const u8 sTimeRedColonEmptyLowerGfx[] = {
#include "data/hud/TimeRedColonEmptyLower.4bpp.inc"
};

const u8 sJewelPieceIconPartialNEGfx[] = {
#include "data/hud/JewelPieceIconPartialNE.4bpp.inc"
};
const u8 sJewelPieceIconPartialSEGfx[] = {
#include "data/hud/JewelPieceIconPartialSE.4bpp.inc"
};
const u8 sJewelPieceIconPartialSWGfx[] = {
#include "data/hud/JewelPieceIconPartialSW.4bpp.inc"
};
const u8 sJewelPieceIconPartialNWGfx[] = {
#include "data/hud/JewelPieceIconPartialNW.4bpp.inc"
};
const u8 sJewelPieceIconNEGfx[] = {
#include "data/hud/JewelPieceIconNE.4bpp.inc"
};
const u8 sJewelPieceIconSEGfx[] = {
#include "data/hud/JewelPieceIconSE.4bpp.inc"
};
const u8 sJewelPieceIconSWGfx[] = {
#include "data/hud/JewelPieceIconSW.4bpp.inc"
};
const u8 sJewelPieceIconNWGfx[] = {
#include "data/hud/JewelPieceIconNW.4bpp.inc"
};
const u8 sCDIconPartialGfx[] = {
#include "data/hud/CDIcon.4bpp.inc"
};
const u8 sCDIconGfx[] = {
#include "data/hud/CDIcon.4bpp.inc"
};

const u8 sTimeUpGfx[] = {
#include "data/hud/TimeUp.4bpp.inc"
};

// clang-format off
const u8 sHeartMeterEmptyGfx[] = {
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter1HeartGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter2HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter3HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter4HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter5HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter6HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter7HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
const u8 sHeartMeter8HeartsGfx[] = {
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
#include "data/hud/HeartMeterHeartFilled.4bpp.inc"
};
const u8 sHeartMeter1HeartFlashingGfx[] = {
#include "data/hud/HeartMeterHeartFlashing.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
#include "data/hud/HeartMeterHeartEmpty.4bpp.inc"
};
// clang-format on

const u8 sHeartGaugeEmptyGfx[] = {
#include "data/hud/HeartGaugeEmpty.4bpp.inc"
};
const u8 sHeartGaugeFill1Gfx[] = {
#include "data/hud/HeartGaugeFill1.4bpp.inc"
};
const u8 sHeartGaugeFill2Gfx[] = {
#include "data/hud/HeartGaugeFill2.4bpp.inc"
};
const u8 sHeartGaugeFill3Gfx[] = {
#include "data/hud/HeartGaugeFill3.4bpp.inc"
};
const u8 sHeartGaugeFill4Gfx[] = {
#include "data/hud/HeartGaugeFill4.4bpp.inc"
};
const u8 sHeartGaugeFill5Gfx[] = {
#include "data/hud/HeartGaugeFill5.4bpp.inc"
};
const u8 sHeartGaugeFill6Gfx[] = {
#include "data/hud/HeartGaugeFill6.4bpp.inc"
};
const u8 sHeartGaugeFill7Gfx[] = {
#include "data/hud/HeartGaugeFill7.4bpp.inc"
};
const u8 sHeartGaugeFullGfx[] = {
#include "data/hud/HeartGaugeFull.4bpp.inc"
};

const u8 sBossStageSpritesGfx[] = {
#include "data/BossStageSprites.4bpp.inc"
};

const u8 sAppleBombGfx[] = {
#include "data/sprites/AppleBomb.4bpp.inc"
};
const u8 sBlastCannonGfx[] = {
#include "data/sprites/BlastCannon.4bpp.inc"
};
const u8 sVizormanGfx[] = {
#include "data/sprites/Vizorman.4bpp.inc"
};
const u8 sBugleGfx[] = {
#include "data/sprites/Bugle.4bpp.inc"
};
const u8 sBlackDogGfx[] = {
#include "data/sprites/BlackDog.4bpp.inc"
};
const u8 sLargeLipsGfx[] = {
#include "data/sprites/LargeLips.4bpp.inc"
};
const u8 sBigFistGfx[] = {
#include "data/sprites/BigFist.4bpp.inc"
};
const u8 sBlackDragonGfx[] = {
#include "data/sprites/BlackDragon.4bpp.inc"
};

const u16 sTimeUpTextPal[] = {
#include "data/hud/TimeUpText.pal.inc"
};
const u16 sTimeUpWarioPal[] = {
#include "data/hud/TimeUpWario.pal.inc"
};

const u8* sBossLifeMeterGfx[] = {(u8*)0x8416424, (u8*)0x84162E4, (u8*)0x84161A4, (u8*)0x8416064, (u8*)0x8415F24,
                                 (u8*)0x8415DE4, (u8*)0x8415CA4, (u8*)0x8415B64, (u8*)0x8415A24, (u8*)0x84158E4,
                                 (u8*)0x84157A4, (u8*)0x8415664, (u8*)0x8415524, (u8*)0x84153E4, (u8*)0x84152A4,
                                 (u8*)0x8415164, (u8*)0x8415024, (u8*)0x8414EE4, (u8*)0x8414DA4, (u8*)0x8414C64,
                                 (u8*)0x8414B24};
const u8* sHeartGaugeGfx[] = {
    sHeartGaugeEmptyGfx,
    sHeartGaugeFill1Gfx,
    sHeartGaugeFill2Gfx,
    sHeartGaugeFill3Gfx,
    sHeartGaugeFill4Gfx,
    sHeartGaugeFill5Gfx,
    sHeartGaugeFill6Gfx,
    sHeartGaugeFill7Gfx,
    sHeartGaugeFullGfx,
};
const u8* sHeartMeterGfx[] = {
    sHeartMeterEmptyGfx,
    sHeartMeter1HeartGfx,
    sHeartMeter2HeartsGfx,
    sHeartMeter3HeartsGfx,
    sHeartMeter4HeartsGfx,
    sHeartMeter5HeartsGfx,
    sHeartMeter6HeartsGfx,
    sHeartMeter7HeartsGfx,
    sHeartMeter8HeartsGfx,
    sHeartMeter1HeartFlashingGfx,
};

void func_80746C0(void)
{
    DmaCopy16(3, sCommonSpritesGfx, 0x6011000, sizeof(sCommonSpritesGfx));

    if (gCurrentStageNumber != STAGE_BOSS) {
        return;
    }

    DmaCopy16(3, sBossStageSpritesGfx, 0x6012400, sizeof(sBossStageSpritesGfx));

    switch (gCurrentShopItem - 1) {
        case SHOP_ITEM_APPLE_BOMB:
            DmaCopy16(3, sAppleBombGfx, 0x6013000, sizeof(sAppleBombGfx));
            break;
        case SHOP_ITEM_BLAST_CANNON:
            DmaCopy16(3, sBlastCannonGfx, 0x6013000, sizeof(sBlastCannonGfx));
            break;
        case SHOP_ITEM_VIZORMAN:
            DmaCopy16(3, sVizormanGfx, 0x6013000, sizeof(sVizormanGfx));
            break;
        case SHOP_ITEM_BUGLE:
            DmaCopy16(3, sBugleGfx, 0x6013000, sizeof(sBugleGfx));
            break;
        case SHOP_ITEM_BLACK_DOG:
            DmaCopy16(3, sBlackDogGfx, 0x6013000, sizeof(sBlackDogGfx));
            break;
        case SHOP_ITEM_LARGE_LIPS:
            DmaCopy16(3, sLargeLipsGfx, 0x6013000, sizeof(sLargeLipsGfx));
            break;
        case SHOP_ITEM_BIG_FIST:
            DmaCopy16(3, sBigFistGfx, 0x6013000, sizeof(sBigFistGfx));
            break;
        case SHOP_ITEM_BLACK_DRAGON:
            DmaCopy16(3, sBlackDragonGfx, 0x6013000, sizeof(sBlackDragonGfx));
            break;
    }
}

void func_80747D8(void)
{
    u8 health;

    health = gCurrentSprite.health;
    DmaCopy16(3, sBossLifeMeterGfx[health], 0x6012C00, 10 * TILE_SIZE_4BPP);
}
