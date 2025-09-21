#ifndef VOICE_SET_H
#define VOICE_SET_H

#include "types.h"

enum VoiceSet {
    VS_WARIO_REACTION_END,
    VS_WARIO_TREASURE,
    VS_WARIO_KEYZER_GET,
    VS_WARIO_VORTEX_OPEN,
    VS_WARIO_HURT,
    VS_WARIO_HURRY_UP,
    VS_WARIO_SCREAMS,
    VS_WARIO_GOODBYE_UNUSED,
    VS_WARIO_ENTERING_PYRAMID,
    VS_WARIO_WORKOUT_END,
    VS_WARIO_ENTERING_BOSS_ROOM,
    VS_WARIO_DYING,
    VS_12,
    VS_13,
    VS_14,
    VS_15,
    VS_16,
    VS_17,
    VS_18,
    VS_19,
    VS_20,
    VS_21,
    VS_22,
    VS_MAX
};

void VoiceSet_Play(s32);

#endif  // VOICE_SET_H
