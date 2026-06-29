#include "cutscenes/c_0x00F7BC.h"

s32 func_800F7BC(s32 arg0, u8 ** arg1)
{
    if (arg0 <= 7) {
        *arg1 = &sUnk_82D270C;
        return arg0 > 0x12A;
    }
    if (arg0 <= 15) {
        *arg1 = &sUnk_82D2714;
        return arg0 > 0x12A;
    }
    if (arg0 <= 23) {
        *arg1 = &sUnk_82D2722;
        return arg0 > 0x12A;
    }
    if (arg0 <= 31) {
        *arg1 = &sUnk_82D272A;
        return arg0 > 0x12A;
    }
    if (arg0 <= 47) {
        *arg1 = &sUnk_82D2738;
        return arg0 > 0x12A;
    }
    if (arg0 <= 55) {
        *arg1 = &sUnk_82D2746;
        return arg0 > 0x12A;
    }
    if (arg0 <= 63) {
        *arg1 = &sUnk_82D275A;
        return arg0 > 0x12A;
    }
    if (arg0 <= 71) {
        *arg1 = &sUnk_82D276E;
        return arg0 > 0x12A;
    }
    if (arg0 <= 87) {
        *arg1 = &sUnk_82D2956;
        return arg0 > 0x12A;
    }
    if (arg0 <= 95) {
        *arg1 = &sUnk_82D2788;
        return arg0 > 0x12A;
    }
    if (arg0 <= 103) {
        *arg1 = &sUnk_82D27B4;
        return arg0 > 0x12A;
    }
    if (arg0 <= 111) {
        *arg1 = &sUnk_82D27E0;
        return arg0 > 0x12A;
    }
    if (arg0 <= 119) {
        *arg1 = &sUnk_82D2812;
        return arg0 > 0x12A;
    }
    if (arg0 <= 139) {
        *arg1 = &sUnk_82D283E;
        return arg0 > 0x12A;
    }
    if (arg0 <= 159) {
        *arg1 = &sUnk_82D286A;
        return arg0 > 0x12A;
    }
    if (arg0 <= 179) {
        *arg1 = &sUnk_82D289C;
        return arg0 > 0x12A;
    }
    if (arg0 <= 199) {
        *arg1 = &sUnk_82D28D4;
        return arg0 > 0x12A;
    }
    *arg1 = &sUnk_82D2912;
    return arg0 > 0x12A;
}

s32 func_800F8A4(s32 arg0, u8 ** arg1)
{
    if (arg0 <= 7) {
        *arg1 = &sUnk_82D2976;
        return arg0 > 0xFC;
    }
    if (arg0 <= 15) {
        *arg1 = &sUnk_82D297E;
        return arg0 > 0xFC;
    }
    if (arg0 <= 23) {
        *arg1 = &sUnk_82D298C;
        return arg0 > 0xFC;
    }
    if (arg0 <= 31) {
        *arg1 = &sUnk_82D2994;
        return arg0 > 0xFC;
    }
    if (arg0 <= 47) {
        *arg1 = &sUnk_82D29A2;
        return arg0 > 0xFC;
    }
    if (arg0 <= 55) {
        *arg1 = &sUnk_82D29B0;
        return arg0 > 0xFC;
    }
    if (arg0 <= 63) {
        *arg1 = &sUnk_82D29BE;
        return arg0 > 0xFC;
    }
    if (arg0 <= 93) {
        *arg1 = &sUnk_82D29D2;
        return arg0 > 0xFC;
    }
    if (arg0 <= 113) {
        *arg1 = &sUnk_82D29E6;
        return arg0 > 0xFC;
    }
    if (arg0 <= 133) {
        *arg1 = &sUnk_82D2A00;
        return arg0 > 0xFC;
    }
    if (arg0 <= 153) {
        *arg1 = &sUnk_82D2A20;
        return arg0 > 0xFC;
    }
    *arg1 = &sUnk_82D2A46;
    return arg0 > 0xFC;
}

s32 func_800F940(s32 arg0, s32 arg1, s16 *arg2, s16 *arg3)
{
    u16 *table1;
    u16 *table2;
    s32 index;

    table1 = sUnk_878E7C0[(s16)arg0];
    table2 = sUnk_878E7D0[(s16)arg0];
    index = 0;
    if (arg1 >= 0) {
        index = arg1;
        if (arg1 > 179) {
            index = 179;
        }
    }
    *arg2 = -table1[index];
    *arg3 = -table2[index];
    return arg1 > 178;
}

s32 func_800F990(s32 arg0, s32 arg1, s16 *arg2, s16 *arg3)
{
    u16 *table1;
    u16 *table2;
    s32 index;

    table1 = sUnk_878E7E0[(s16)arg0];
    table2 = sUnk_878E7F0[(s16)arg0];
    index = 0;
    if (arg1 >= 0) {
        index = arg1;
        if (arg1 > 179) {
            index = 179;
        }
    }
    *arg2 = -table1[index];
    *arg3 = -table2[index];
    return arg1 > 178;
}