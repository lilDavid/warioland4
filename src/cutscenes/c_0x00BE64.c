#include "cutscenes/c_0x00BE64.h"

s32 func_800BE64(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 9;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_829A7C0;
    } else {
        *arg1 = sUnk_829A7E6;
    }

    result = 0;
    if (frame == 8) {
        result = 1;
    }

    return result;
}

s32 func_800BE94(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 9;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_829A80C;
    } else {
        *arg1 = sUnk_829A850;
    }

    result = 0;
    if (frame == 8) {
        result = 1;
    }

    return result;
}

s32 func_800BEC4(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 16;
    s32 result;

    if (frame <= 3) {
        *arg1 = sUnk_829A894;
    } else if (frame <= 7) {
        *arg1 = sUnk_829A8A8;
    } else if (frame <= 11) {
        *arg1 = sUnk_829A8BC;
    } else {
        *arg1 = sUnk_829A8D0;
    }

    result = 0;
    if (frame == 15) {
        result = 1;
    }

    return result;
}

void func_800BF0C(u16 **arg0)
{
    *arg0 = sUnk_829A8E4;
}

void func_800BF18(u16 **arg0)
{
    *arg0 = sUnk_829A8F8;
}

void func_800BF24(u16 **arg0)
{
    *arg0 = sUnk_829A90C;
}

s32 func_800BF30(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 24;
    s32 result;

    if (frame <= 7) {
        *arg1 = sUnk_829A926;
    } else if (frame <= 15) {
        *arg1 = sUnk_829A92E;
    } else {
        *arg1 = sUnk_829A936;
    }

    result = 0;
    if (frame == 23) {
        result = 1;
    }

    return result;
}

s32 func_800BF6C(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 116;
    s32 result;

    if (frame <= 7) {
        *arg1 = sUnk_829A9A6;
    } else if (frame <= 15) {
        *arg1 = sUnk_829A9AE;
    } else {
        *arg1 = sUnk_829A9B6;
    }

    result = 0;
    if (frame == 115) {
        result = 1;
    }

    return result;
}

s32 func_800BFA8(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 24;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_829A9BE;
    } else if (frame <= 11) {
        *arg1 = sUnk_829A9D8;
    } else if (frame <= 17) {
        *arg1 = sUnk_829A9F2;
    } else {
        *arg1 = sUnk_829AA0C;
    }

    result = 0;
    if (frame == 23) {
        result = 1;
    }

    return result;
}

s32 func_800BFF0(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 9;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_829AA5E;
    } else {
        *arg1 = sUnk_829AA6C;
    }

    result = 0;
    if (frame == 8) {
        result = 1;
    }

    return result;
}

s32 func_800C020(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 8;
    s32 result;

    if (frame <= 1) {
        *arg1 = sUnk_829AA7A;
    } else if (frame <= 3) {
        *arg1 = 0;
    } else if (frame <= 5) {
        *arg1 = sUnk_829AA94;
    } else {
        *arg1 = 0;
    }

    result = 0;
    if (frame == 7) {
        result = 1;
    }

    return result;
}

s32 func_800C05C(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 4;
    s32 result;

    if (frame <= 0) {
        *arg1 = sUnk_829AAAE;
    } else if (frame <= 1) {
        *arg1 = 0;
    } else if (frame <= 2) {
        *arg1 = sUnk_829AAE0;
    } else {
        *arg1 = 0;
    }

    result = 0;
    if (frame == 3) {
        result = 1;
    }

    return result;
}

s32 func_800C098(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 42;
    s32 result;

    if (frame <= 2) {
        *arg1 = sUnk_829AB84;
    } else if (frame <= 5) {
        *arg1 = sUnk_829ABB6;
    } else if (frame <= 9) {
        *arg1 = sUnk_829AC00;
    } else if (frame <= 13) {
        *arg1 = sUnk_829AC62;
    } else if (frame <= 18) {
        *arg1 = sUnk_829ACC4;
    } else if (frame <= 23) {
        *arg1 = sUnk_829AD0E;
    } else if (frame <= 29) {
        *arg1 = sUnk_829AD58;
    } else if (frame <= 35) {
        *arg1 = sUnk_829AD8A;
    } else {
        *arg1 = sUnk_829ADA4;
    }

    result = 0;
    if (frame == 41) {
        result = 1;
    }

    return result;
}

void func_800C11C(u16 **arg0)
{
    *arg0 = sUnk_829AB1E;
}

void func_800C128(u16 **arg0)
{
    *arg0 = sUnk_829AB2C;
}

void func_800C134(u16 **arg0)
{
    *arg0 = sUnk_829AB46;
}

void func_800C140(u16 **arg0)
{
    *arg0 = sUnk_829ADBE;
}

void func_800C14C(u16 **arg0)
{
    *arg0 = sUnk_829AA56;
}

void func_800C158(u16 **arg0)
{
    *arg0 = sUnk_829A93E;
}

void func_800C164(u16 **arg0)
{
    *arg0 = sUnk_829A952;
}

void func_800C170(u16 **arg0)
{
    *arg0 = sUnk_829A966;
}

void func_800C17C(u16 **arg0)
{
    *arg0 = sUnk_829A986;
}

void func_800C188(u16 **arg0)
{
    *arg0 = sUnk_829AA26;
}

void func_800C194(u16 **arg0)
{
    *arg0 = sUnk_829AA3A;
}

void func_800C1A0(u16 **arg0)
{
    *arg0 = sUnk_829AA48;
}

s32 func_800C1AC(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 24;
    s32 result;

    if (frame <= 7) {
        *arg1 = sUnk_829ADEA;
    } else if (frame <= 15) {
        *arg1 = sUnk_829ADF8;
    } else {
        *arg1 = sUnk_829AE06;
    }

    result = 0;
    if (frame == 23) {
        result = 1;
    }

    return result;
}

s32 func_800C1E8(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 116;
    s32 result;

    if (frame <= 7) {
        *arg1 = sUnk_829AE14;
    } else if (frame <= 15) {
        *arg1 = sUnk_829AE22;
    } else {
        *arg1 = sUnk_829AE30;
    }

    result = 0;
    if (frame == 115) {
        result = 1;
    }

    return result;
}

void func_800C224(u32 arg0)
{
    if (arg0 <= 15) {
        vu32 *dma = (vu32 *)0x040000D4;
        u32 offset = arg0 << 5;
        u32 control;

        dma[0] = (u32)(sUnk_829AE3E + offset);
        dma[1] = 0x05000200;
        control = 0x80000010;
        dma[2] = control;
        dma[2];

        dma[0] = (u32)(sUnk_829B03E + offset);
        dma[1] = 0x05000220;
        dma[2] = control;
        dma[2];
    }
}
