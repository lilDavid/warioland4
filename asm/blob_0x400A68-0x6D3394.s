.include "macros.s.inc"

.section .rodata


@ Likely gfx or palettes
.global sCommonSpritesPal
sCommonSpritesPal:

baserom_blob 0x400A68, 0x400AE8

.global sCommonSpritesGfx
sCommonSpritesGfx:
    baserom_blob 0x400AE8, 0x403AE8

.global sUnk_8403AE8
sUnk_8403AE8:

baserom_blob 0x403AE8, 0x403C48

.global sUnk_8403C48
sUnk_8403C48:

baserom_blob 0x403C48, 0x403D88

.global sUnk_8403D88
sUnk_8403D88:

baserom_blob 0x403D88, 0x403DA8

.global sUnk_8403DA8
sUnk_8403DA8:

baserom_blob 0x403DA8, 0x403DC8

.global sUnk_8403DC8
sUnk_8403DC8:

baserom_blob 0x403DC8, 0x403F08

.global sUnk_8403F08
sUnk_8403F08:

baserom_blob 0x403F08, 0x403F28

.global sUnk_8403F28
sUnk_8403F28:

baserom_blob 0x403F28, 0x403F48

.global sUnk_8403F48
sUnk_8403F48:

baserom_blob 0x403F48, 0x404088

.global sUnk_8404088
sUnk_8404088:

baserom_blob 0x404088, 0x4040A8

.global sUnk_84040A8
sUnk_84040A8:

baserom_blob 0x4040A8, 0x4040C8

.global sUnk_84040C8
sUnk_84040C8:

baserom_blob 0x4040C8, 0x404208

.global sUnk_8404208
sUnk_8404208:

baserom_blob 0x404208, 0x404228

.global sUnk_8404228
sUnk_8404228:

baserom_blob 0x404228, 0x404248

.global sUnk_8404248
sUnk_8404248:

baserom_blob 0x404248, 0x404388

.global sUnk_8404388
sUnk_8404388:

baserom_blob 0x404388, 0x4043A8

.global sUnk_84043A8
sUnk_84043A8:

baserom_blob 0x4043A8, 0x4043C8

.global sUnk_84043C8
sUnk_84043C8:

baserom_blob 0x4043C8, 0x404508

.global sUnk_8404508
sUnk_8404508:

baserom_blob 0x404508, 0x404528

.global sUnk_8404528
sUnk_8404528:

baserom_blob 0x404528, 0x404548

.global sUnk_8404548
sUnk_8404548:

baserom_blob 0x404548, 0x404568

.global sUnk_8404568
sUnk_8404568:

baserom_blob 0x404568, 0x404588

.global sUnk_8404588
sUnk_8404588:

baserom_blob 0x404588, 0x4045A8

.global sUnk_84045A8
sUnk_84045A8:

baserom_blob 0x4045A8, 0x4045C8

.global sUnk_84045C8
sUnk_84045C8:

baserom_blob 0x4045C8, 0x4045E8

.global sUnk_84045E8
sUnk_84045E8:

baserom_blob 0x4045E8, 0x404608

.global sUnk_8404608
sUnk_8404608:

baserom_blob 0x404608, 0x404628

.global sUnk_8404628
sUnk_8404628:

baserom_blob 0x404628, 0x404648

.global sUnk_8404648
sUnk_8404648:

baserom_blob 0x404648, 0x404668

.global sUnk_8404668
sUnk_8404668:

baserom_blob 0x404668, 0x404988

.global sUnk_8404988
sUnk_8404988:

baserom_blob 0x404988, 0x404D88

.global sUnk_8404D88
sUnk_8404D88:

baserom_blob 0x404D88, 0x404E88

.global sUnk_8404E88
sUnk_8404E88:

baserom_blob 0x404E88, 0x404F88

.global sUnk_8404F88
sUnk_8404F88:

baserom_blob 0x404F88, 0x405088

.global sUnk_8405088
sUnk_8405088:

baserom_blob 0x405088, 0x405188

.global sUnk_8405188
sUnk_8405188:

baserom_blob 0x405188, 0x406588

.global sBossStageSpritesGfx
sBossStageSpritesGfx:
    baserom_blob 0x406588, 0x407188

.global sAppleBombGfx
sAppleBombGfx:
    baserom_blob 0x407188, 0x408188

.global sBlastCannonGfx
sBlastCannonGfx:
    baserom_blob 0x408188, 0x409188

.global sVizormanGfx
sVizormanGfx:
    baserom_blob 0x409188, 0x40A188

.global sBugleGfx
sBugleGfx:
    baserom_blob 0x40A188, 0x40B188

.global sBlackDogGfx
sBlackDogGfx:
    baserom_blob 0x40B188, 0x40C188

.global sLargeLipsGfx
sLargeLipsGfx:
    baserom_blob 0x40C188, 0x40D188

.global sBigFistGfx
sBigFistGfx:
    baserom_blob 0x40D188, 0x40E188

.global sBlackDragonGfx
sBlackDragonGfx:
    baserom_blob 0x40E188, 0x40F188

.global sUnk_840F188
sUnk_840F188:

baserom_blob 0x40F188, 0x40F1A8

.global sUnk_840F1A8
sUnk_840F1A8:

baserom_blob 0x40F1A8, 0x40F1C8

.global sUnk_840F1C8
sUnk_840F1C8:

baserom_blob 0x40F1C8, 0x40F200

.global sUnk_840F200
sUnk_840F200:

baserom_blob 0x40F200, 0x40F214

.global sUnk_840F214
sUnk_840F214:

baserom_blob 0x40F214, 0x40F248

.global sUnk_840F248
sUnk_840F248:

baserom_blob 0x40F248, 0x40F258

.global sUnk_840F258
sUnk_840F258:

baserom_blob 0x40F258, 0x40F268

.global sUnk_840F268
sUnk_840F268:

baserom_blob 0x40F268, 0x40F278

.global sUnk_840F278
sUnk_840F278:

baserom_blob 0x40F278, 0x40F288

.global sUnk_840F288
sUnk_840F288:

baserom_blob 0x40F288, 0x40FAD4

.global sUnk_840FAD4
sUnk_840FAD4:

baserom_blob 0x40FAD4, 0x40FB94

.global sUnk_840FB94
sUnk_840FB94:

baserom_blob 0x40FB94, 0x40FC7C

.global sUnk_840FC7C
sUnk_840FC7C:

baserom_blob 0x40FC7C, 0x40FE74

.global sUnk_840FE74
sUnk_840FE74:

baserom_blob 0x40FE74, 0x40FEA4

.global sUnk_840FEA4
sUnk_840FEA4:

baserom_blob 0x40FEA4, 0x40FFAC

.global sUnk_840FFAC
sUnk_840FFAC:

baserom_blob 0x40FFAC, 0x41000C

.global sUnk_841000C
sUnk_841000C:

baserom_blob 0x41000C, 0x410484

.global sUnk_8410484
sUnk_8410484:

baserom_blob 0x410484, 0x4104E4

.global sUnk_84104E4
sUnk_84104E4:

baserom_blob 0x4104E4, 0x410544

.global sUnk_8410544
sUnk_8410544:

baserom_blob 0x410544, 0x4105A4

.global sUnk_84105A4
sUnk_84105A4:

baserom_blob 0x4105A4, 0x4109F4

.global sUnk_84109F4
sUnk_84109F4:

baserom_blob 0x4109F4, 0x410A54

.global sUnk_8410A54
sUnk_8410A54:

baserom_blob 0x410A54, 0x410AB4

.global sUnk_8410AB4
sUnk_8410AB4:

baserom_blob 0x410AB4, 0x410B14

.global sUnk_8410B14
sUnk_8410B14:

baserom_blob 0x410B14, 0x410D90

.global sUnk_8410D90
sUnk_8410D90:

baserom_blob 0x410D90, 0x410E00

.global sUnk_8410E00
sUnk_8410E00:

baserom_blob 0x410E00, 0x4110B8

.global sUnk_84110B8
sUnk_84110B8:

baserom_blob 0x4110B8, 0x411128

.global sUnk_8411128
sUnk_8411128:

baserom_blob 0x411128, 0x41162C

.global sUnk_841162C
sUnk_841162C:

baserom_blob 0x41162C, 0x4116DC

.global sUnk_84116DC
sUnk_84116DC:

baserom_blob 0x4116DC, 0x4118EC

.global sUnk_84118EC
sUnk_84118EC:

baserom_blob 0x4118EC, 0x411994

.global sUnk_8411994
sUnk_8411994:

baserom_blob 0x411994, 0x411A4C

.global sUnk_8411A4C
sUnk_8411A4C:

baserom_blob 0x411A4C, 0x411AFC

.global sUnk_8411AFC
sUnk_8411AFC:

baserom_blob 0x411AFC, 0x411B48

.global sUnk_8411B48
sUnk_8411B48:

baserom_blob 0x411B48, 0x411B94

.global sUnk_8411B94
sUnk_8411B94:

baserom_blob 0x411B94, 0x411BE0

.global sUnk_8411BE0
sUnk_8411BE0:

baserom_blob 0x411BE0, 0x411C2C

.global sUnk_8411C2C
sUnk_8411C2C:

baserom_blob 0x411C2C, 0x411C78

.global sUnk_8411C78
sUnk_8411C78:

baserom_blob 0x411C78, 0x411CC4

.global sUnk_8411CC4
sUnk_8411CC4:

baserom_blob 0x411CC4, 0x411D10

.global sUnk_8411D10
sUnk_8411D10:

baserom_blob 0x411D10, 0x411D5C

.global sUnk_8411D5C
sUnk_8411D5C:

baserom_blob 0x411D5C, 0x411DA8

.global sUnk_8411DA8
sUnk_8411DA8:

baserom_blob 0x411DA8, 0x411DF4

.global sUnk_8411DF4
sUnk_8411DF4:

baserom_blob 0x411DF4, 0x411E40

.global sUnk_8411E40
sUnk_8411E40:

baserom_blob 0x411E40, 0x411E8C

.global sUnk_8411E8C
sUnk_8411E8C:

baserom_blob 0x411E8C, 0x411ED8

.global sUnk_8411ED8
sUnk_8411ED8:

baserom_blob 0x411ED8, 0x411F24

.global sUnk_8411F24
sUnk_8411F24:

baserom_blob 0x411F24, 0x411F70

.global sUnk_8411F70
sUnk_8411F70:

baserom_blob 0x411F70, 0x411FBC

.global sUnk_8411FBC
sUnk_8411FBC:

baserom_blob 0x411FBC, 0x411FE2

.global sUnk_8411FE2
sUnk_8411FE2:

baserom_blob 0x411FE2, 0x411FEA

.global sUnk_8411FEA
sUnk_8411FEA:

baserom_blob 0x411FEA, 0x411FF8

.global sUnk_8411FF8
sUnk_8411FF8:

baserom_blob 0x411FF8, 0x412006

.global sUnk_8412006
sUnk_8412006:

baserom_blob 0x412006, 0x412014

.global sUnk_8412014
sUnk_8412014:

baserom_blob 0x412014, 0x412022

.global sUnk_8412022
sUnk_8412022:

baserom_blob 0x412022, 0x412030

.global sUnk_8412030
sUnk_8412030:

baserom_blob 0x412030, 0x41203E

.global sUnk_841203E
sUnk_841203E:

baserom_blob 0x41203E, 0x41204C

.global sUnk_841204C
sUnk_841204C:

baserom_blob 0x41204C, 0x41205A

.global sUnk_841205A
sUnk_841205A:

baserom_blob 0x41205A, 0x412080

.global sUnk_8412080
sUnk_8412080:

baserom_blob 0x412080, 0x412478

.global sUnk_8412478
sUnk_8412478:

baserom_blob 0x412478, 0x4124D8

.global sUnk_84124D8
sUnk_84124D8:

baserom_blob 0x4124D8, 0x412538

.global sUnk_8412538
sUnk_8412538:

baserom_blob 0x412538, 0x412598

.global sUnk_8412598
sUnk_8412598:

baserom_blob 0x412598, 0x4129E8

.global sUnk_84129E8
sUnk_84129E8:

baserom_blob 0x4129E8, 0x412A48

.global sUnk_8412A48
sUnk_8412A48:

baserom_blob 0x412A48, 0x412AA8

.global sUnk_8412AA8
sUnk_8412AA8:

baserom_blob 0x412AA8, 0x412B08

.global sUnk_8412B08
sUnk_8412B08:

baserom_blob 0x412B08, 0x412D84

.global sUnk_8412D84
sUnk_8412D84:

baserom_blob 0x412D84, 0x412DF4

.global sUnk_8412DF4
sUnk_8412DF4:

baserom_blob 0x412DF4, 0x41317C

.global sUnk_841317C
sUnk_841317C:

baserom_blob 0x41317C, 0x4131EC

.global sUnk_84131EC
sUnk_84131EC:

baserom_blob 0x4131EC, 0x413724

.global sUnk_8413724
sUnk_8413724:

baserom_blob 0x413724, 0x413784

.global sUnk_8413784
sUnk_8413784:

baserom_blob 0x413784, 0x4137E4

.global sUnk_84137E4
sUnk_84137E4:

baserom_blob 0x4137E4, 0x413844

.global sUnk_8413844
sUnk_8413844:

baserom_blob 0x413844, 0x413C94

.global sUnk_8413C94
sUnk_8413C94:

baserom_blob 0x413C94, 0x413CF4

.global sUnk_8413CF4
sUnk_8413CF4:

baserom_blob 0x413CF4, 0x413D54

.global sUnk_8413D54
sUnk_8413D54:

baserom_blob 0x413D54, 0x413DB4

.global sUnk_8413DB4
sUnk_8413DB4:

baserom_blob 0x413DB4, 0x414030

.global sUnk_8414030
sUnk_8414030:

baserom_blob 0x414030, 0x4140A0

.global sUnk_84140A0
sUnk_84140A0:

baserom_blob 0x4140A0, 0x414428

.global sUnk_8414428
sUnk_8414428:

baserom_blob 0x414428, 0x414498

.global sUnk_8414498
sUnk_8414498:

baserom_blob 0x414498, 0x414614

.global sUnk_8414614
sUnk_8414614:

baserom_blob 0x414614, 0x41463C

.global sUnk_841463C
sUnk_841463C:

baserom_blob 0x41463C, 0x414824

.global sUnk_8414824
sUnk_8414824:

baserom_blob 0x414824, 0x41497C

.global sUnk_841497C
sUnk_841497C:

baserom_blob 0x41497C, 0x414A0C

.global sUnk_8414A0C
sUnk_8414A0C:

baserom_blob 0x414A0C, 0x414A1C

.global sUnk_8414A1C
sUnk_8414A1C:

baserom_blob 0x414A1C, 0x414A2C

.global sUnk_8414A2C
sUnk_8414A2C:

baserom_blob 0x414A2C, 0x414A3C

.global sUnk_8414A3C
sUnk_8414A3C:

baserom_blob 0x414A3C, 0x414A4C

.global sUnk_8414A4C
sUnk_8414A4C:

baserom_blob 0x414A4C, 0x414A54

.global sUnk_8414A54
sUnk_8414A54:

baserom_blob 0x414A54, 0x414A5C

.global sUnk_8414A5C
sUnk_8414A5C:

baserom_blob 0x414A5C, 0x414A64

.global sStageEntryPassagePal
sStageEntryPassagePal:

baserom_blob 0x414A64, 0x414A84

.global sStageEmeraldPassagePal
sStageEmeraldPassagePal:

baserom_blob 0x414A84, 0x414AA4

.global sStageRubyPassagePal
sStageRubyPassagePal:

baserom_blob 0x414AA4, 0x414AC4

.global sStageTopazPassagePal
sStageTopazPassagePal:

baserom_blob 0x414AC4, 0x414AE4

.global sStageSapphirePassagePal
sStageSapphirePassagePal:

baserom_blob 0x414AE4, 0x414B04

.global sStageGoldenPyramidPal
sStageGoldenPyramidPal:

baserom_blob 0x414B04, 0x416564

.global sBigBoardSpaceSpriteTable
sBigBoardSpaceSpriteTable:

baserom_blob 0x416564, 0x4165A4

.global sBigBoardSpaces
sBigBoardSpaces:
    baserom_blob 0x4165A4, 0x4165F4

.global sUnk_84165F4
sUnk_84165F4:

baserom_blob 0x4165F4, 0x416674

.global sUnk_8416674
sUnk_8416674:

baserom_blob 0x416674, 0x4166F4

.global sUnk_84166F4
sUnk_84166F4:

baserom_blob 0x4166F4, 0x416774

.global sUnk_8416774
sUnk_8416774:

baserom_blob 0x416774, 0x4167B4

.global sUnk_84167B4
sUnk_84167B4:

baserom_blob 0x4167B4, 0x416834

.global sUnk_8416834
sUnk_8416834:

baserom_blob 0x416834, 0x4168B4

.global sUnk_84168B4
sUnk_84168B4:

baserom_blob 0x4168B4, 0x416A06

.global sUnk_8416A06
sUnk_8416A06:

baserom_blob 0x416A06, 0x416A46

.global sUnk_8416A46
sUnk_8416A46:

baserom_blob 0x416A46, 0x416A88

.global sUnk_8416A88
sUnk_8416A88:

baserom_blob 0x416A88, 0x416AA4

.global sUnk_8416AA4
sUnk_8416AA4:

baserom_blob 0x416AA4, 0x639068

.global sUnk_8639068
sUnk_8639068:

baserom_blob 0x639068, 0x6391C4

.global sUnk_86391C4
sUnk_86391C4:

baserom_blob 0x6391C4, 0x63956C

.global sUnk_863956C
sUnk_863956C:

baserom_blob 0x63956C, 0x639588

.global sUnk_8639588
sUnk_8639588:

baserom_blob 0x639588, 0x639634


@ Stage entry screen

.global sUnk_8639634
sUnk_8639634:

baserom_blob 0x639634, 0x639662

.global sUnk_8639662
sUnk_8639662:

baserom_blob 0x639662, 0x639690

.global sUnk_8639690
sUnk_8639690:

baserom_blob 0x639690, 0x6396B4

.global sUnk_86396B4
sUnk_86396B4:

baserom_blob 0x6396B4, 0x6396D0

.global sUnk_86396D0
sUnk_86396D0:

baserom_blob 0x6396D0, 0x639794

.global sUnk_8639794
sUnk_8639794:

baserom_blob 0x639794, 0x6397AC

.global sUnk_86397AC
sUnk_86397AC:

baserom_blob 0x6397AC, 0x6397C4

.global sUnk_86397C4
sUnk_86397C4:

baserom_blob 0x6397C4, 0x6397D4

.global sUnk_86397D4
sUnk_86397D4:

baserom_blob 0x6397D4, 0x6397E4

.global sUnk_86397E4
sUnk_86397E4:

baserom_blob 0x6397E4, 0x639834

.global sUnk_8639834
sUnk_8639834:

baserom_blob 0x639834, 0x639884

.global sUnk_8639884
sUnk_8639884:

baserom_blob 0x639884, 0x6399A4

.global sUnk_86399A4
sUnk_86399A4:

baserom_blob 0x6399A4, 0x639AC4

.global sUnk_8639AC4
sUnk_8639AC4:

baserom_blob 0x639AC4, 0x639ADC

.global sUnk_8639ADC
sUnk_8639ADC:

baserom_blob 0x639ADC, 0x639AF4

.global sUnk_8639AF4
sUnk_8639AF4:

baserom_blob 0x639AF4, 0x639B24

.global sUnk_8639B24
sUnk_8639B24:

baserom_blob 0x639B24, 0x639B34

.global sUnk_8639B34
sUnk_8639B34:

baserom_blob 0x639B34, 0x639C4A

.global sUnk_8639C4A
sUnk_8639C4A:

baserom_blob 0x639C4A, 0x639E76

.global sUnk_8639E76
sUnk_8639E76:

baserom_blob 0x639E76, 0x63A0A4

.global sUnk_863A0A4
sUnk_863A0A4:

baserom_blob 0x63A0A4, 0x63A0C0

.global sUnk_863A0C0
sUnk_863A0C0:

baserom_blob 0x63A0C0, 0x63A0DC

.global sUnk_863A0DC
sUnk_863A0DC:

baserom_blob 0x63A0DC, 0x63A184

.global sUnk_863A184
sUnk_863A184:

baserom_blob 0x63A184, 0x63A22C

.global sUnk_863A22C
sUnk_863A22C:

baserom_blob 0x63A22C, 0x63A244

.global sUnk_863A244
sUnk_863A244:

baserom_blob 0x63A244, 0x63A25C

.global sUnk_863A25C
sUnk_863A25C:

baserom_blob 0x63A25C, 0x63A2BC

.global sUnk_863A2BC
sUnk_863A2BC:

baserom_blob 0x63A2BC, 0x63A2D4

.global sUnk_863A2D4
sUnk_863A2D4:

baserom_blob 0x63A2D4, 0x63A2EC

.global sUnk_863A2EC
sUnk_863A2EC:

baserom_blob 0x63A2EC, 0x63A31C

.global sUnk_863A31C
sUnk_863A31C:

baserom_blob 0x63A31C, 0x63A3AC

.global sUnk_863A3AC
sUnk_863A3AC:

baserom_blob 0x63A3AC, 0x63A43C

.global sUnk_863A43C
sUnk_863A43C:

baserom_blob 0x63A43C, 0x63A47C


@ Vortex cutscene

.global sUnk_863A47C
sUnk_863A47C:

baserom_blob 0x63A47C, 0x63A490


@ Stage results

.global sUnk_863A490
sUnk_863A490:


@ Stage ejection

baserom_blob 0x63A490, 0x63A498

.global sUnk_863A498
sUnk_863A498:

baserom_blob 0x63A498, 0x63A4AC

.global sUnk_863A4AC
sUnk_863A4AC:

baserom_blob 0x63A4AC, 0x63A4C4

.global sUnk_863A4C4
sUnk_863A4C4:

baserom_blob 0x63A4C4, 0x63A4DC

.global sUnk_863A4DC
sUnk_863A4DC:

baserom_blob 0x63A4DC, 0x63A4F4

.global sUnk_863A4F4
sUnk_863A4F4:

baserom_blob 0x63A4F4, 0x63A508

.global sUnk_863A508
sUnk_863A508:

baserom_blob 0x63A508, 0x63A51C

.global sUnk_863A51C
sUnk_863A51C:

baserom_blob 0x63A51C, 0x63A534

.global sUnk_863A534
sUnk_863A534:

baserom_blob 0x63A534, 0x63A54C


@ Boss treasure cutscene

.global sUnk_863A54C
sUnk_863A54C:

baserom_blob 0x63A54C, 0x63A5CE

.global sUnk_863A5CE
sUnk_863A5CE:

baserom_blob 0x63A5CE, 0x63A650

.global sUnk_863A650
sUnk_863A650:

baserom_blob 0x63A650, 0x63A6D2

.global sUnk_863A6D2
sUnk_863A6D2:

baserom_blob 0x63A6D2, 0x63A771

.global sUnk_863A771
sUnk_863A771:

baserom_blob 0x63A771, 0x63A810

.global sUnk_863A810
sUnk_863A810:

baserom_blob 0x63A810, 0x63A94E

.global sUnk_863A94E
sUnk_863A94E:

baserom_blob 0x63A94E, 0x63AA8E

.global sUnk_863AA8E
sUnk_863AA8E:

baserom_blob 0x63AA8E, 0x63ABCE

.global sUnk_863ABCE
sUnk_863ABCE:

baserom_blob 0x63ABCE, 0x63AD0E

.global sUnk_863AD0E
sUnk_863AD0E:

baserom_blob 0x63AD0E, 0x63AD18

.global sUnk_863AD18
sUnk_863AD18:

baserom_blob 0x63AD18, 0x63AD22

.global sUnk_863AD22
sUnk_863AD22:

baserom_blob 0x63AD22, 0x63AD27

.global sUnk_863AD27
sUnk_863AD27:

baserom_blob 0x63AD27, 0x63AD2B

.global sUnk_863AD2B
sUnk_863AD2B:

baserom_blob 0x63AD2B, 0x63AD3F

.global sUnk_863AD3F
sUnk_863AD3F:

baserom_blob 0x63AD3F, 0x63AD53

.global sUnk_863AD53
sUnk_863AD53:

baserom_blob 0x63AD53, 0x63AD58

.global sUnk_863AD58
sUnk_863AD58:

baserom_blob 0x63AD58, 0x63AD63

.global sUnk_863AD63
sUnk_863AD63:

baserom_blob 0x63AD63, 0x63AD6E

.global sUnk_863AD6E
sUnk_863AD6E:

baserom_blob 0x63AD6E, 0x63AE26

.global sUnk_863AE26
sUnk_863AE26:

baserom_blob 0x63AE26, 0x63AEDE

.global sUnk_863AEDE
sUnk_863AEDE:

baserom_blob 0x63AEDE, 0x63AF96

.global sUnk_863AF96
sUnk_863AF96:

baserom_blob 0x63AF96, 0x63B04E

.global sUnk_863B04E
sUnk_863B04E:

baserom_blob 0x63B04E, 0x63B106

.global sUnk_863B106
sUnk_863B106:

baserom_blob 0x63B106, 0x63B1BE

.global sUnk_863B1BE
sUnk_863B1BE:

baserom_blob 0x63B1BE, 0x63B24E

.global sUnk_863B24E
sUnk_863B24E:

baserom_blob 0x63B24E, 0x63B2DE

.global sUnk_863B2DE
sUnk_863B2DE:

baserom_blob 0x63B2DE, 0x63B36E

.global sUnk_863B36E
sUnk_863B36E:

baserom_blob 0x63B36E, 0x63B3FE

.global sUnk_863B3FE
sUnk_863B3FE:

baserom_blob 0x63B3FE, 0x63B48E

.global sUnk_863B48E
sUnk_863B48E:

baserom_blob 0x63B48E, 0x63B51E

.global sUnk_863B51E
sUnk_863B51E:

baserom_blob 0x63B51E, 0x63B5D6

.global sUnk_863B5D6
sUnk_863B5D6:

baserom_blob 0x63B5D6, 0x63B68E

.global sUnk_863B68E
sUnk_863B68E:

baserom_blob 0x63B68E, 0x63B746

.global sUnk_863B746
sUnk_863B746:

baserom_blob 0x63B746, 0x63B7FE

.global sUnk_863B7FE
sUnk_863B7FE:

baserom_blob 0x63B7FE, 0x63B8B6

.global sUnk_863B8B6
sUnk_863B8B6:

baserom_blob 0x63B8B6, 0x63B96E

.global sUnk_863B96E
sUnk_863B96E:

baserom_blob 0x63B96E, 0x63B9FE

.global sUnk_863B9FE
sUnk_863B9FE:

baserom_blob 0x63B9FE, 0x63BA8E

.global sUnk_863BA8E
sUnk_863BA8E:

baserom_blob 0x63BA8E, 0x63BB46

.global sUnk_863BB46
sUnk_863BB46:

baserom_blob 0x63BB46, 0x63BC00

.global sUnk_863BC00
sUnk_863BC00:

baserom_blob 0x63BC00, 0x63BC10

.global sUnk_863BC10
sUnk_863BC10:

baserom_blob 0x63BC10, 0x63BC20

.global sUnk_863BC20
sUnk_863BC20:

baserom_blob 0x63BC20, 0x63BC4C

.global sUnk_863BC4C
sUnk_863BC4C:

baserom_blob 0x63BC4C, 0x63BC58

.global sUnk_863BC58
sUnk_863BC58:

baserom_blob 0x63BC58, 0x63BC64

.global sUnk_863BC64
sUnk_863BC64:

baserom_blob 0x63BC64, 0x63BC70

.global sUnk_863BC70
sUnk_863BC70:

baserom_blob 0x63BC70, 0x63BC7C


@ CLEAR! screen

.global sUnk_863BC7C
sUnk_863BC7C:

baserom_blob 0x63BC7C, 0x63BCF8

.global sUnk_863BCF8
sUnk_863BCF8:

baserom_blob 0x63BCF8, 0x63BE36

.global sUnk_863BE36
sUnk_863BE36:

baserom_blob 0x63BE36, 0x63C0B2

.global sUnk_863C0B2
sUnk_863C0B2:

baserom_blob 0x63C0B2, 0x63C330

.global sUnk_863C330
sUnk_863C330:

baserom_blob 0x63C330, 0x63C348

.global sUnk_863C348
sUnk_863C348:

baserom_blob 0x63C348, 0x63C360

.global sUnk_863C360
sUnk_863C360:

baserom_blob 0x63C360, 0x63C378

.global sUnk_863C378
sUnk_863C378:

baserom_blob 0x63C378, 0x63C390

.global sUnk_863C390
sUnk_863C390:

baserom_blob 0x63C390, 0x63C3A8

.global sUnk_863C3A8
sUnk_863C3A8:

baserom_blob 0x63C3A8, 0x63C3D4

.global sUnk_863C3D4
sUnk_863C3D4:

baserom_blob 0x63C3D4, 0x63C3EC

.global sUnk_863C3EC
sUnk_863C3EC:

baserom_blob 0x63C3EC, 0x63C404

.global sUnk_863C404
sUnk_863C404:

baserom_blob 0x63C404, 0x63C41C


@ Passage screen

.global sUnk_863C41C
sUnk_863C41C:

baserom_blob 0x63C41C, 0x63C424

.global sUnk_863C424
sUnk_863C424:

baserom_blob 0x63C424, 0x63C42C

.global sUnk_863C42C
sUnk_863C42C:

baserom_blob 0x63C42C, 0x63C434

.global sUnk_863C434
sUnk_863C434:

baserom_blob 0x63C434, 0x63C494

.global sUnk_863C494
sUnk_863C494:

baserom_blob 0x63C494, 0x63C4AC

.global sUnk_863C4AC
sUnk_863C4AC:

baserom_blob 0x63C4AC, 0x63C4BC

.global sUnk_863C4BC
sUnk_863C4BC:

baserom_blob 0x63C4BC, 0x63C4CC

.global sUnk_863C4CC
sUnk_863C4CC:

baserom_blob 0x63C4CC, 0x63C52C

.global sUnk_863C52C
sUnk_863C52C:

baserom_blob 0x63C52C, 0x63C55C

.global sUnk_863C55C
sUnk_863C55C:

baserom_blob 0x63C55C, 0x63C584

.global sUnk_863C584
sUnk_863C584:

baserom_blob 0x63C584, 0x63C5A4

.global sUnk_863C5A4
sUnk_863C5A4:

baserom_blob 0x63C5A4, 0x63C5AC

.global sUnk_863C5AC
sUnk_863C5AC:

baserom_blob 0x63C5AC, 0x63C5B4

.global sUnk_863C5B4
sUnk_863C5B4:

baserom_blob 0x63C5B4, 0x63C5D4

.global sUnk_863C5D4
sUnk_863C5D4:

baserom_blob 0x63C5D4, 0x63C5DC


@ Boss door opening cutscene

.global sUnk_863C5DC
sUnk_863C5DC:

baserom_blob 0x63C5DC, 0x63C5EC

.global sUnk_863C5EC
sUnk_863C5EC:

baserom_blob 0x63C5EC, 0x63C5F4

.global sUnk_863C5F4
sUnk_863C5F4:

baserom_blob 0x63C5F4, 0x63C634

.global sUnk_863C634
sUnk_863C634:

baserom_blob 0x63C634, 0x63C654

.global sUnk_863C654
sUnk_863C654:

baserom_blob 0x63C654, 0x63C674

.global sUnk_863C674
sUnk_863C674:

baserom_blob 0x63C674, 0x63C694


@ Sound room data

.global sUnk_863C694
sUnk_863C694:

baserom_blob 0x63C694, 0x63C6D4

.global sUnk_863C6D4
sUnk_863C6D4:

baserom_blob 0x63C6D4, 0x63C714

.global sUnk_863C714
sUnk_863C714:

baserom_blob 0x63C714, 0x63C754

.global sUnk_863C754
sUnk_863C754:

baserom_blob 0x63C754, 0x63C794

.global sUnk_863C794
sUnk_863C794:

baserom_blob 0x63C794, 0x63C7D4

.global sUnk_863C7D4
sUnk_863C7D4:

baserom_blob 0x63C7D4, 0x63C814

.global sUnk_863C814
sUnk_863C814:

baserom_blob 0x63C814, 0x63C854

.global sUnk_863C854
sUnk_863C854:

baserom_blob 0x63C854, 0x63C85C

.global sUnk_863C85C
sUnk_863C85C:

baserom_blob 0x63C85C, 0x63D85C

.global sUnk_863D85C
sUnk_863D85C:

baserom_blob 0x63D85C, 0x63D8A0

.global sUnk_863D8A0
sUnk_863D8A0:

baserom_blob 0x63D8A0, 0x63D8E0

.global sUnk_863D8E0
sUnk_863D8E0:

baserom_blob 0x63D8E0, 0x63D920

.global sUnk_863D920
sUnk_863D920:

baserom_blob 0x63D920, 0x63D948

.global sUnk_863D948
sUnk_863D948:

baserom_blob 0x63D948, 0x63D97C

.global sUnk_863D97C
sUnk_863D97C:

baserom_blob 0x63D97C, 0x63D984

.global sUnk_863D984
sUnk_863D984:

baserom_blob 0x63D984, 0x63D9A0

.global sUnk_863D9A0
sUnk_863D9A0:

baserom_blob 0x63D9A0, 0x63D9BC

.global sUnk_863D9BC
sUnk_863D9BC:

baserom_blob 0x63D9BC, 0x63D9EC

.global sUnk_863D9EC
sUnk_863D9EC:

baserom_blob 0x63D9EC, 0x63D9F4

.global sUnk_863D9F4
sUnk_863D9F4:

baserom_blob 0x63D9F4, 0x63DB7C

.global sUnk_863DB7C
sUnk_863DB7C:

baserom_blob 0x63DB7C, 0x63DBE4

.global sUnk_863DBE4
sUnk_863DBE4:

baserom_blob 0x63DBE4, 0x63DC4C

.global sUnk_863DC4C
sUnk_863DC4C:

baserom_blob 0x63DC4C, 0x63DCB4

.global sUnk_863DCB4
sUnk_863DCB4:

baserom_blob 0x63DCB4, 0x63DCCC

.global sUnk_863DCCC
sUnk_863DCCC:

baserom_blob 0x63DCCC, 0x63DCDC

.global sUnk_863DCDC
sUnk_863DCDC:

baserom_blob 0x63DCDC, 0x63DCEC

.global sUnk_863DCEC
sUnk_863DCEC:

baserom_blob 0x63DCEC, 0x63DE14

.global sUnk_863DE14
sUnk_863DE14:

baserom_blob 0x63DE14, 0x63E12C

.global sUnk_863E12C
sUnk_863E12C:

baserom_blob 0x63E12C, 0x63E1C4

.global sUnk_863E1C4
sUnk_863E1C4:

baserom_blob 0x63E1C4, 0x63E24C

.global sUnk_863E24C
sUnk_863E24C:

baserom_blob 0x63E24C, 0x63E4AA

.global sUnk_863E4AA
sUnk_863E4AA:

baserom_blob 0x63E4AA, 0x63E4DC

.global sUnk_863E4DC
sUnk_863E4DC:

baserom_blob 0x63E4DC, 0x63E4EC

.global sUnk_863E4EC
sUnk_863E4EC:

baserom_blob 0x63E4EC, 0x63E9B0

.global sUnk_863E9B0
sUnk_863E9B0:

baserom_blob 0x63E9B0, 0x63E9E8

.global sUnk_863E9E8
sUnk_863E9E8:

baserom_blob 0x63E9E8, 0x63E9F8

.global sUnk_863E9F8
sUnk_863E9F8:

baserom_blob 0x63E9F8, 0x63EA08

.global sUnk_863EA08
sUnk_863EA08:

baserom_blob 0x63EA08, 0x63EC28

.global sUnk_863EC28
sUnk_863EC28:

baserom_blob 0x63EC28, 0x63EC38

.global sUnk_863EC38
sUnk_863EC38:

baserom_blob 0x63EC38, 0x63EC48

.global sUnk_863EC48
sUnk_863EC48:

baserom_blob 0x63EC48, 0x63ECA8

.global sUnk_863ECA8
sUnk_863ECA8:

baserom_blob 0x63ECA8, 0x63ECE0

.global sUnk_863ECE0
sUnk_863ECE0:

baserom_blob 0x63ECE0, 0x63ECF0

.global sUnk_863ECF0
sUnk_863ECF0:

baserom_blob 0x63ECF0, 0x63ECF8

.global sUnk_863ECF8
sUnk_863ECF8:

baserom_blob 0x63ECF8, 0x63ED00

.global sUnk_863ED00
sUnk_863ED00:

baserom_blob 0x63ED00, 0x63EE6C

.global sUnk_863EE6C
sUnk_863EE6C:

baserom_blob 0x63EE6C, 0x63EE94

.global sUnk_863EE94
sUnk_863EE94:

baserom_blob 0x63EE94, 0x63EEEC

.global sUnk_863EEEC
sUnk_863EEEC:

baserom_blob 0x63EEEC, 0x63EFB0

.global sUnk_863EFB0
sUnk_863EFB0:

baserom_blob 0x63EFB0, 0x63EFE0

.global sUnk_863EFE0
sUnk_863EFE0:

baserom_blob 0x63EFE0, 0x63F1D0

.global sUnk_863F1D0
sUnk_863F1D0:

baserom_blob 0x63F1D0, 0x63F1E0

.global sUnk_863F1E0
sUnk_863F1E0:

baserom_blob 0x63F1E0, 0x63F208

.global sUnk_863F208
sUnk_863F208:

baserom_blob 0x63F208, 0x63F258

.global sUnk_863F258
sUnk_863F258:

baserom_blob 0x63F258, 0x63F2D0

.global sUnk_863F2D0
sUnk_863F2D0:

baserom_blob 0x63F2D0, 0x64130C

.global sUnk_864130C
sUnk_864130C:

baserom_blob 0x64130C, 0x64131C

.global sUnk_864131C
sUnk_864131C:

baserom_blob 0x64131C, 0x64132C

.global sUnk_864132C
sUnk_864132C:

baserom_blob 0x64132C, 0x64133C

.global sUnk_864133C
sUnk_864133C:

baserom_blob 0x64133C, 0x6413BC

.global sUnk_86413BC
sUnk_86413BC:

baserom_blob 0x6413BC, 0x6413CC

.global sUnk_86413CC
sUnk_86413CC:

baserom_blob 0x6413CC, 0x64141C

.global sUnk_864141C
sUnk_864141C:

baserom_blob 0x64141C, 0x641598

.global sUnk_8641598
sUnk_8641598:

baserom_blob 0x641598, 0x641718

.global sUnk_8641718
sUnk_8641718:

baserom_blob 0x641718, 0x641748

.global sUnk_8641748
sUnk_8641748:

baserom_blob 0x641748, 0x641778

.global sUnk_8641778
sUnk_8641778:

baserom_blob 0x641778, 0x6417E8

.global sUnk_86417E8
sUnk_86417E8:

baserom_blob 0x6417E8, 0x642464

.global sUnk_8642464
sUnk_8642464:

baserom_blob 0x642464, 0x64261C

.global sUnk_864261C
sUnk_864261C:

baserom_blob 0x64261C, 0x64262A

.global sUnk_864262A
sUnk_864262A:

baserom_blob 0x64262A, 0x642638

.global sUnk_8642638
sUnk_8642638:

baserom_blob 0x642638, 0x6427A0

.global sUnk_86427A0
sUnk_86427A0:

baserom_blob 0x6427A0, 0x6427BA

.global sUnk_86427BA
sUnk_86427BA:

baserom_blob 0x6427BA, 0x642820

.global sUnk_8642820
sUnk_8642820:

baserom_blob 0x642820, 0x642860

.global sUnk_8642860
sUnk_8642860:

baserom_blob 0x642860, 0x642898

.global sUnk_8642898
sUnk_8642898:

baserom_blob 0x642898, 0x64BD78

.global sUnk_864BD78
sUnk_864BD78:

baserom_blob 0x64BD78, 0x64BD98

.global sUnk_864BD98
sUnk_864BD98:

baserom_blob 0x64BD98, 0x64BDB8

.global sUnk_864BDB8
sUnk_864BDB8:

baserom_blob 0x64BDB8, 0x64BDD8

.global sUnk_864BDD8
sUnk_864BDD8:

baserom_blob 0x64BDD8, 0x64C8C4

.global sUnk_864C8C4
sUnk_864C8C4:

baserom_blob 0x64C8C4, 0x64CBE4

.global sUnk_864CBE4
sUnk_864CBE4:

baserom_blob 0x64CBE4, 0x6540C4

.global sUnk_86540C4
sUnk_86540C4:

baserom_blob 0x6540C4, 0x6548C4

.global sUnk_86548C4
sUnk_86548C4:

baserom_blob 0x6548C4, 0x654AC4

.global sUnk_8654AC4
sUnk_8654AC4:

baserom_blob 0x654AC4, 0x65CAC4

.global sUnk_865CAC4
sUnk_865CAC4:

baserom_blob 0x65CAC4, 0x67D8DC

.global sUnk_867D8DC
sUnk_867D8DC:

baserom_blob 0x67D8DC, 0x67D9EC

.global sUnk_867D9EC
sUnk_867D9EC:

baserom_blob 0x67D9EC, 0x67D9F4

.global sUnk_867D9F4
sUnk_867D9F4:

baserom_blob 0x67D9F4, 0x67DB7C

.global sUnk_867DB7C
sUnk_867DB7C:

baserom_blob 0x67DB7C, 0x67DBE4

.global sUnk_867DBE4
sUnk_867DBE4:

baserom_blob 0x67DBE4, 0x67DC9C

.global sUnk_867DC9C
sUnk_867DC9C:

baserom_blob 0x67DC9C, 0x67DCB4

.global sUnk_867DCB4
sUnk_867DCB4:

baserom_blob 0x67DCB4, 0x67DCCC

.global sUnk_867DCCC
sUnk_867DCCC:

baserom_blob 0x67DCCC, 0x67DCDC

.global sUnk_867DCDC
sUnk_867DCDC:

baserom_blob 0x67DCDC, 0x67DCEC

.global sUnk_867DCEC
sUnk_867DCEC:

baserom_blob 0x67DCEC, 0x681C9C

.global sUnk_8681C9C
sUnk_8681C9C:

baserom_blob 0x681C9C, 0x68249C

.global sUnk_868249C
sUnk_868249C:

baserom_blob 0x68249C, 0x68269C

.global sUnk_868269C
sUnk_868269C:

baserom_blob 0x68269C, 0x68669C

.global sUnk_868669C
sUnk_868669C:

baserom_blob 0x68669C, 0x68681C

.global sUnk_868681C
sUnk_868681C:

baserom_blob 0x68681C, 0x6872DC

.global sUnk_86872DC
sUnk_86872DC:

baserom_blob 0x6872DC, 0x68901C

.global sUnk_868901C
sUnk_868901C:

baserom_blob 0x68901C, 0x68981C

.global sUnk_868981C
sUnk_868981C:

baserom_blob 0x68981C, 0x68A01C

.global sUnk_868A01C
sUnk_868A01C:

baserom_blob 0x68A01C, 0x68A81C

.global sUnk_868A81C
sUnk_868A81C:

baserom_blob 0x68A81C, 0x68A8DC

.global sUnk_868A8DC
sUnk_868A8DC:

baserom_blob 0x68A8DC, 0x68A95C

.global sUnk_868A95C
sUnk_868A95C:

baserom_blob 0x68A95C, 0x68B15C

.global sUnk_868B15C
sUnk_868B15C:

baserom_blob 0x68B15C, 0x68B81C

.global sUnk_868B81C
sUnk_868B81C:

baserom_blob 0x68B81C, 0x68B8DC

.global sUnk_868B8DC
sUnk_868B8DC:

baserom_blob 0x68B8DC, 0x68B95C

.global sUnk_868B95C
sUnk_868B95C:

baserom_blob 0x68B95C, 0x68BB5C

.global sUnk_868BB5C
sUnk_868BB5C:

baserom_blob 0x68BB5C, 0x68C55C

.global sUnk_868C55C
sUnk_868C55C:

baserom_blob 0x68C55C, 0x68CD5C

.global sUnk_868CD5C
sUnk_868CD5C:

baserom_blob 0x68CD5C, 0x68CF5C

.global sUnk_868CF5C
sUnk_868CF5C:

baserom_blob 0x68CF5C, 0x68E2C8

.global sUnk_868E2C8
sUnk_868E2C8:

baserom_blob 0x68E2C8, 0x68E4C8

.global sUnk_868E4C8
sUnk_868E4C8:

baserom_blob 0x68E4C8, 0x68FCC8

.global sUnk_868FCC8
sUnk_868FCC8:

baserom_blob 0x68FCC8, 0x68FDA8

.global sUnk_868FDA8
sUnk_868FDA8:

baserom_blob 0x68FDA8, 0x68FEC8

.global sUnk_868FEC8
sUnk_868FEC8:

baserom_blob 0x68FEC8, 0x68FF28

.global sUnk_868FF28
sUnk_868FF28:

baserom_blob 0x68FF28, 0x695328

.global sUnk_8695328
sUnk_8695328:

baserom_blob 0x695328, 0x695528

.global sUnk_8695528
sUnk_8695528:

baserom_blob 0x695528, 0x69A528

.global sUnk_869A528
sUnk_869A528:

baserom_blob 0x69A528, 0x69AD28

.global sUnk_869AD28
sUnk_869AD28:

baserom_blob 0x69AD28, 0x69B528

.global sUnk_869B528
sUnk_869B528:

baserom_blob 0x69B528, 0x69BD28

.global sUnk_869BD28
sUnk_869BD28:

baserom_blob 0x69BD28, 0x69C528

.global sUnk_869C528
sUnk_869C528:

baserom_blob 0x69C528, 0x69CD28

.global sUnk_869CD28
sUnk_869CD28:

baserom_blob 0x69CD28, 0x69CE48

.global sUnk_869CE48
sUnk_869CE48:

baserom_blob 0x69CE48, 0x69F448

.global sUnk_869F448
sUnk_869F448:

baserom_blob 0x69F448, 0x69F648

.global sUnk_869F648
sUnk_869F648:

baserom_blob 0x69F648, 0x6A0A48

.global sUnk_86A0A48
sUnk_86A0A48:

baserom_blob 0x6A0A48, 0x6A0E08

.global sUnk_86A0E08
sUnk_86A0E08:

baserom_blob 0x6A0E08, 0x6A11C8

.global sUnk_86A11C8
sUnk_86A11C8:

baserom_blob 0x6A11C8, 0x6A13C8

.global sUnk_86A13C8
sUnk_86A13C8:

baserom_blob 0x6A13C8, 0x6A23C8

.global sUnk_86A23C8
sUnk_86A23C8:

baserom_blob 0x6A23C8, 0x6A25C8

.global sUnk_86A25C8
sUnk_86A25C8:

baserom_blob 0x6A25C8, 0x6A9E48

.global sUnk_86A9E48
sUnk_86A9E48:

baserom_blob 0x6A9E48, 0x6AA048

.global sUnk_86AA048
sUnk_86AA048:

baserom_blob 0x6AA048, 0x6AE048

.global sUnk_86AE048
sUnk_86AE048:

baserom_blob 0x6AE048, 0x6AE248

.global sUnk_86AE248
sUnk_86AE248:

baserom_blob 0x6AE248, 0x6AE648

.global sUnk_86AE648
sUnk_86AE648:

baserom_blob 0x6AE648, 0x6B0E48

.global sUnk_86B0E48
sUnk_86B0E48:

baserom_blob 0x6B0E48, 0x6B1648

.global sUnk_86B1648
sUnk_86B1648:

baserom_blob 0x6B1648, 0x6B1E48

.global sUnk_86B1E48
sUnk_86B1E48:

baserom_blob 0x6B1E48, 0x6B2648

.global sUnk_86B2648
sUnk_86B2648:

baserom_blob 0x6B2648, 0x6B2708

.global sUnk_86B2708
sUnk_86B2708:

baserom_blob 0x6B2708, 0x6B2888

.global sUnk_86B2888
sUnk_86B2888:

baserom_blob 0x6B2888, 0x6B3088

.global sUnk_86B3088
sUnk_86B3088:

baserom_blob 0x6B3088, 0x6B3888

.global sUnk_86B3888
sUnk_86B3888:

baserom_blob 0x6B3888, 0x6B4088

.global sUnk_86B4088
sUnk_86B4088:

baserom_blob 0x6B4088, 0x6B4288

.global sUnk_86B4288
sUnk_86B4288:

baserom_blob 0x6B4288, 0x6B8A88

.global sUnk_86B8A88
sUnk_86B8A88:

baserom_blob 0x6B8A88, 0x6BF288

.global sUnk_86BF288
sUnk_86BF288:

baserom_blob 0x6BF288, 0x6BF488

.global sUnk_86BF488
sUnk_86BF488:

baserom_blob 0x6BF488, 0x6CB288

.global sUnk_86CB288
sUnk_86CB288:

baserom_blob 0x6CB288, 0x6CB488

.global sUnk_86CB488
sUnk_86CB488:

baserom_blob 0x6CB488, 0x6CB7C8

.global sUnk_86CB7C8
sUnk_86CB7C8:

baserom_blob 0x6CB7C8, 0x6CB908

.global sUnk_86CB908
sUnk_86CB908:

baserom_blob 0x6CB908, 0x6D3108

.global sUnk_86D3108
sUnk_86D3108:

baserom_blob 0x6D3108, 0x6D3226

.global sUnk_86D3226
sUnk_86D3226:

baserom_blob 0x6D3226, 0x6D3394
