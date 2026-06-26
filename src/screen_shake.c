#include "global_data.h"

u8 func_806ACA0(u8 arg0, u8 arg1) {
    u8 temp_r2;

    temp_r2 = arg0;
    if ((temp_r2 != 0) && ((u32) temp_r2 > (u32) ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk0)) {
        ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk0 = temp_r2;
        ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk1 = 0;
        ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk2 = arg1;
        ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk3 = 0;
    }
    return ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk0;
}

u8 func_806ACC8(u8 arg0) {
    u8 temp_r1;

    temp_r1 = arg0;
    if ((temp_r1 != 0) && ((u32) temp_r1 > (u32) ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0)) {
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0 = temp_r1;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk1 = 0;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk2 = 0;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk3 = 0;
    }
    return ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0;
}

u8 func_806ACEC(u8 arg0, u8 arg1) {
    u8 temp_r2;

    temp_r2 = arg0;
    if ((temp_r2 != 0) && ((u32) temp_r2 > (u32) ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0)) {
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0 = temp_r2;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk1 = 0;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk2 = arg1;
        ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk3 = 0;
    }
    return ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk0;
}

s32 func_806AD14(void)
{
  s32 temp_r0;
  s32 temp_r1;
  s32 temp_r5;
  s32 var_r3;
  s32 new_var3;
  struct ScreenShakeParameters *new_var;
  struct ScreenShakeParameters *new_var4;
  var_r3 = 0;
  new_var = (struct ScreenShakeParameters*)(&gUnk_30000C8);
  temp_r0 = new_var->unk0;
  new_var4 = new_var;
  new_var3 = temp_r0;
  if (new_var3 == 0)
  {
    return 0;
  }
  temp_r5 = new_var3 - 1;
  new_var4->unk0 = temp_r5;
  if (((u32) ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk1) <= 1U)
  {
    new_var->unk1 = ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk1 + 1;
    return 0;
  }
  ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk1 = var_r3;
  temp_r1 = 0x7F & new_var4->unk2;
  var_r3 = -2;
  ;
  if (new_var4->unk3 != 0)
  {
    var_r3 = 2;
    var_r3 &= ((-temp_r1) | temp_r1) >> 0x1F;
  }
  ((struct ScreenShakeParameters*)(&gUnk_30000C8))->unk3 = new_var4->unk3 ^ 1;
  if (((u32) ((u8) temp_r5)) > 0x10U)
  {
    return var_r3;
  }
  return var_r3 >> 1;
}

s32 func_806AD74(void)
{
  s32 temp_r0;
  s32 temp_r1;
  s32 temp_r5;
  s32 var_r3;
  s32 new_var3;
  struct ScreenShakeParameters *new_var;
  struct ScreenShakeParameters *new_var4;
  var_r3 = 0;
  new_var = (struct ScreenShakeParameters*)(&gUnk_30000CC);
  temp_r0 = new_var->unk0;
  new_var4 = new_var;
  new_var3 = temp_r0;
  if (new_var3 == 0)
  {
    return 0;
  }
  temp_r5 = new_var3 - 1;
  new_var4->unk0 = temp_r5;
  if (((u32) ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk1) <= 1U)
  {
    new_var->unk1 = ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk1 + 1;
    return 0;
  }
  ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk1 = var_r3;
  temp_r1 = 0x7F & new_var4->unk2;
  var_r3 = -2;
  ;
  if (new_var4->unk3 != 0)
  {
    var_r3 = 2;
    var_r3 &= ((-temp_r1) | temp_r1) >> 0x1F;
  }
  ((struct ScreenShakeParameters*)(&gUnk_30000CC))->unk3 = new_var4->unk3 ^ 1;
  if (((u32) ((u8) temp_r5)) > 0x10U)
  {
    return var_r3;
  }
  return var_r3 >> 1;
}
