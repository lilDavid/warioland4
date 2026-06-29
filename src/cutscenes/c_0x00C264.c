#include "cutscenes/c_0x00C264.h"

s32 func_800C264(s32 arg0, u8 ** arg1)
{
    s32 temp;

    temp = arg0 % 72;
    if (temp <= 19) {
        *arg1 = &sUnk_829F590;
        return temp == 71;
    }
    if (temp <= 23) {
        *arg1 = &sUnk_829F5D4;
        return temp == 71;
    }
    if (temp <= 27) {
        *arg1 = &sUnk_829F63C;
        return temp == 71;
    }
    if (temp <= 31) {
        *arg1 = &sUnk_829F686;
        return temp == 71;
    }
    if (temp <= 37) {
        *arg1 = &sUnk_829F6B8;
        return temp == 71;
    }
    if (temp <= 43) {
        *arg1 = &sUnk_829F6E4;
        return temp == 71;
    }
    if (temp <= 47) {
        *arg1 = &sUnk_829F738;
        return temp == 71;
    }
    if (temp <= 51) {
        *arg1 = &sUnk_829F764;
        return temp == 71;
    }
    if (temp <= 55) {
        *arg1 = &sUnk_829F790;
        return temp == 71;
    }
    if (temp <= 59) {
        *arg1 = &sUnk_829F7E6;
        return temp == 71;
    }
    if (temp <= 63) {
        *arg1 = &sUnk_829F85A;
        return temp == 71;
    }
    if (temp <= 67) {
        *arg1 = &sUnk_829F8AA;
        return temp == 71;
    }
    
    *arg1 = &sUnk_829F8FA;
    return temp == 71;
}

s32 func_800C318(s32 arg0, u8 ** arg1)
{
    s32 temp;

    temp = arg0 % 28;
    if (temp <= 7) {
        *arg1 = &sUnk_829F4DC;
         return temp == 27;
    }
    if (temp > 13) {
        if (temp <= 21) {
            *arg1 = &sUnk_829F558;
             return temp == 27;
        }
    }
    *arg1 = &sUnk_829F520;
    return temp == 27;
}

s32 func_800C358(s32 arg0, u8 ** arg1)
{
    s32 temp;

    temp = arg0 % 36;
    if (temp <= 5) {
        *arg1 = &sUnk_829F4D4;
        return temp == 35;
    }
    if (temp <= 11) {
        *arg1 = &sUnk_829F710;
        return temp == 35;
    }
    if (temp <= 17) {
        *arg1 = &sUnk_829F718;
        return temp == 35;
    }
    if (temp <= 23) {
        *arg1 = &sUnk_829F720;
        return temp == 35;
    }
    if (temp <= 29) {
        *arg1 = &sUnk_829F728;
        goto done;
    }
    *arg1 = &sUnk_829F730;
    
done:
    return temp == 35;
}

s32 func_800C3B8(s32 arg0, u8 ** arg1)
{
    s32 temp;

    temp = arg0 % 24;
    if (temp <= 5) {
        *arg1 = &sUnk_829F93E;
        return temp == 0;
    }
    if (temp <= 11) {
        *arg1 = &sUnk_829F946;
         return temp == 0;
    }
    if (temp <= 17) {
        *arg1 = &sUnk_829F94E;
        goto done;
    }
    *arg1 = &sUnk_829F956;

done:
    return temp == 0;
}

void func_800C400(u32 arg0)
{
    vu32 *dma;
    s32 offset;

    if (arg0 <= 7) {
        dma = (vu32 *)0x040000D4;
        offset = (arg0 * 15) * 2;

        dma[0] = (u32)(&sUnk_829FA86 + offset);
        dma[1] = 0x05000002;
        dma[2] = 0x8000000F;
        dma[2];

        dma[0] = (u32)(&sUnk_829FB76 + offset);
        dma[1] = 0x05000202;
        dma[2] = 0x8000000F;
        dma[2];

        offset = (arg0 * 7) * 4;
        dma[0] = (u32)(&sUnk_829FC66 + offset);
        dma[1] = 0x05000222;
        dma[2] = 0x8000000E;
        dma[2];
    }
}
