.include "macros.s.inc"


thumb_func_start Score_GivePoints
Score_GivePoints:
    baserom_blob 0x076658, 0x0766E8


thumb_func_start Score_SpawnSprite
Score_SpawnSprite:
    baserom_blob 0x0766E8, 0x076784
