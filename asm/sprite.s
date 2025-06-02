.include "macros.s.inc"

thumb_func_start Sprite_GiveScore
Sprite_GiveScore:
    baserom_blob 0x076658, 0x0766E8

thumb_func_start Sprite_SpawnSecondary
Sprite_SpawnSecondary:
    baserom_blob 0x0766E8, 0x076784
