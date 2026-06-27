#ifndef HUD_H
#define HUD_H

#include "types.h"

extern const u16 sCommonSpritesPal[];
extern const u8 sCommonSpritesGfx[];

extern const u8 sScoreDigitsGfx[];

extern const u8 sTimeDigitsUpperGfx[];
extern const u8 sTimeColonUpperGfx[];
extern const u8 sTimeColonEmptyUpperGfx[];
extern const u8 sTimeDigitsLowerGfx[];
extern const u8 sTimeColonLowerGfx[];
extern const u8 sTimeColonEmptyLowerGfx[];

extern const u8 sTimeDigitsYellowUpperGfx[];
extern const u8 sTimeColonYellowUpperGfx[];
extern const u8 sTimeColonEmptyYellowUpperGfx[];
extern const u8 sTimeDigitsYellowLowerGfx[];
extern const u8 sTimeColonYellowLowerGfx[];
extern const u8 sTimeColonEmptyYellowLowerGfx[];

extern const u8 sTimeDigitsRedUpperGfx[];
extern const u8 sTimeColonRedUpperGfx[];
extern const u8 sTimeColonEmptyRedUpperGfx[];
extern const u8 sTimeDigitsRedLowerGfx[];
extern const u8 sTimeColonRedLowerGfx[];
extern const u8 sTimeColonEmptyRedLowerGfx[];

extern const u8 sJewelPieceIconPartialNEGfx[];
extern const u8 sJewelPieceIconPartialSEGfx[];
extern const u8 sJewelPieceIconPartialSWGfx[];
extern const u8 sJewelPieceIconPartialNWGfx[];
extern const u8 sJewelPieceIconNEGfx[];
extern const u8 sJewelPieceIconSEGfx[];
extern const u8 sJewelPieceIconSWGfx[];
extern const u8 sJewelPieceIconNWGfx[];
extern const u8 sCDIconPartialGfx[];
extern const u8 sCDIconGfx[];

extern const u8 sTimeUpRow1Gfx[];
extern const u8 sTimeUpRow2Gfx[];
extern const u8 sTimeUpWarioFrame1Gfx[];
extern const u8 sTimeUpWarioFrame2Gfx[];
extern const u8 sTimeUpWarioFrame3Gfx[];
extern const u8 sTimeUpWarioFrame4Gfx[];

extern const u8 sHeartMeterEmptyGfx[];
extern const u8 sHeartMeter1HeartGfx[];
extern const u8 sHeartMeter2HeartsGfx[];
extern const u8 sHeartMeter3HeartsGfx[];
extern const u8 sHeartMeter4HeartsGfx[];
extern const u8 sHeartMeter5HeartsGfx[];
extern const u8 sHeartMeter6HeartsGfx[];
extern const u8 sHeartMeter7HeartsGfx[];
extern const u8 sHeartMeter8HeartsGfx[];
extern const u8 sHeartMeter1HeartFlashingGfx[];

extern const u8 sHeartGaugeEmptyGfx[];
extern const u8 sHeartGaugeFill1Gfx[];
extern const u8 sHeartGaugeFill2Gfx[];
extern const u8 sHeartGaugeFill3Gfx[];
extern const u8 sHeartGaugeFill4Gfx[];
extern const u8 sHeartGaugeFill5Gfx[];
extern const u8 sHeartGaugeFill6Gfx[];
extern const u8 sHeartGaugeFill7Gfx[];
extern const u8 sHeartGaugeFullGfx[];

extern const u8 sBossStageSpritesGfx[];

extern const u8 sAppleBombGfx[];
extern const u8 sBlastCannonGfx[];
extern const u8 sVizormanGfx[];
extern const u8 sBugleGfx[];
extern const u8 sBlackDogGfx[];
extern const u8 sLargeLipsGfx[];
extern const u8 sBigFistGfx[];
extern const u8 sBlackDragonGfx[];

extern const u16 sTimeUpTextPal[];
extern const u16 sTimeUpWarioPal[];

extern const u8* sBossLifeMeterGfx[];
extern const u8* sHeartGaugeGfx[];
extern const u8* sHeartMeterGfx[];

void func_80746C0(void);
void func_8074808(void);
void func_8074988(void);
void func_8074D9C(void);
void func_8074F44(void);
void func_807507C(void);

#endif  // HUD_H
