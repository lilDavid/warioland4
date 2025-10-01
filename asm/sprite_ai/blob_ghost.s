.include "macros.s.inc"


baserom_blob 0x03F214, 0x03FF6C

thumb_func_start SpriteGhost
SpriteGhost:

baserom_blob 0x03FF6C, 0x040004

thumb_func_start SpriteUnknownA7
SpriteUnknownA7:

baserom_blob 0x040004, 0x04007C

thumb_func_start SpriteUnknownA8
SpriteUnknownA8:

baserom_blob 0x04007C, 0x04012C
