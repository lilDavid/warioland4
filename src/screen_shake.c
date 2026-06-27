#include "global_data.h"

u8 RequestXShake(u8 duration, u8 amplitude) {
    u8 newDuration;

    newDuration = duration;
    if ((newDuration != 0) && ((u32) newDuration > (u32) gUnk_30000C8.duration)) {
        gUnk_30000C8.duration = newDuration;
        gUnk_30000C8.frameTimer = 0;
        gUnk_30000C8.amplitude = amplitude;
        gUnk_30000C8.direction = 0;
    }
    return gUnk_30000C8.duration;
}

u8 RequestYShake(u8 duration) {
    u8 newDuration;

    newDuration = duration;
    if ((newDuration != 0) && ((u32) newDuration > (u32) gUnk_30000CC.duration)) {
        gUnk_30000CC.duration = newDuration;
        gUnk_30000CC.frameTimer = 0;
        gUnk_30000CC.amplitude = 0;
        gUnk_30000CC.direction = 0;
    }
    return gUnk_30000CC.duration;
}

u8 RequestYShakeWithAmplitude(u8 duration, u8 amplitude) {
    u8 newDuration;

    newDuration = duration;
    if ((newDuration != 0) && ((u32) newDuration > (u32) gUnk_30000CC.duration)) {
        gUnk_30000CC.duration = newDuration;
        gUnk_30000CC.frameTimer = 0;
        gUnk_30000CC.amplitude = amplitude;
        gUnk_30000CC.direction = 0;
    }
    return gUnk_30000CC.duration;
}

s32 TickXShake(void)
{
  s32 currentDuration;
  s32 amplitude;
  s32 nextDuration;
  s32 shakeOffset;
  s32 duration;
  struct ScreenShakeParameters *params;
  struct ScreenShakeParameters *paramsAlt;
  shakeOffset = 0;
  params = &gUnk_30000C8;
  currentDuration = params->duration;
  paramsAlt = params;
  duration = currentDuration;
  if (duration == 0)
  {
    return 0;
  }
  nextDuration = duration - 1;
  paramsAlt->duration = nextDuration;
  if (((u32) gUnk_30000C8.frameTimer) <= 1U)
  {
    params->frameTimer = gUnk_30000C8.frameTimer + 1;
    return 0;
  }
  gUnk_30000C8.frameTimer = shakeOffset;
  amplitude = 0x7F & paramsAlt->amplitude;
  shakeOffset = -2;
  ;
  if (paramsAlt->direction != 0)
  {
    shakeOffset = 2;
    shakeOffset &= ((-amplitude) | amplitude) >> 0x1F;
  }
  gUnk_30000C8.direction = paramsAlt->direction ^ 1;
  if (((u32) ((u8) nextDuration)) > 0x10U)
  {
    return shakeOffset;
  }
  return shakeOffset >> 1;
}

s32 TickYShake(void)
{
  s32 currentDuration;
  s32 amplitude;
  s32 nextDuration;
  s32 shakeOffset;
  s32 duration;
  struct ScreenShakeParameters *params;
  struct ScreenShakeParameters *paramsAlt;
  shakeOffset = 0;
  params = &gUnk_30000CC;
  currentDuration = params->duration;
  paramsAlt = params;
  duration = currentDuration;
  if (duration == 0)
  {
    return 0;
  }
  nextDuration = duration - 1;
  paramsAlt->duration = nextDuration;
  if (((u32) gUnk_30000CC.frameTimer) <= 1U)
  {
    params->frameTimer = gUnk_30000CC.frameTimer + 1;
    return 0;
  }
  gUnk_30000CC.frameTimer = shakeOffset;
  amplitude = 0x7F & paramsAlt->amplitude;
  shakeOffset = -2;
  ;
  if (paramsAlt->direction != 0)
  {
    shakeOffset = 2;
    shakeOffset &= ((-amplitude) | amplitude) >> 0x1F;
  }
  gUnk_30000CC.direction = paramsAlt->direction ^ 1;
  if (((u32) ((u8) nextDuration)) > 0x10U)
  {
    return shakeOffset;
  }
  return shakeOffset >> 1;
}
