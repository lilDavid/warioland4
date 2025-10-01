.include "macros.s.inc"


baserom_blob 0x04AC88, 0x04BECC

thumb_func_start SpritePinball
SpritePinball:

baserom_blob 0x04BECC, 0x04C340

thumb_func_start SpritePinballLockUp
SpritePinballLockUp:

baserom_blob 0x04C340, 0x04C3D8

thumb_func_start SpritePinballLockDown
SpritePinballLockDown:

baserom_blob 0x04C3D8, 0x04C470

thumb_func_start SpritePinballLockLeft
SpritePinballLockLeft:

baserom_blob 0x04C470, 0x04C508

thumb_func_start SpritePinballLockRight
SpritePinballLockRight:

baserom_blob 0x04C508, 0x04C5A0

thumb_func_start SpritePinballCounter
SpritePinballCounter:

baserom_blob 0x04C5A0, 0x04C5E0

thumb_func_start SpriteUnknownB5
SpriteUnknownB5:

baserom_blob 0x04C5E0, 0x04C600
