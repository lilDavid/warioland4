#include "cutscenes/c_0x00C470.h"

s32 func_800C470(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 329;
    s32 result;

    if (frame <= 49) {
        *arg1 = sUnk_82A34A4;
    }
    else if (frame <= 53) {
        *arg1 = sUnk_82A34B2;
    }
    else if (frame <= 57) {
        *arg1 = sUnk_82A34C0;
    }
    else if (frame <= 61) {
        *arg1 = sUnk_82A34B2;
    }
    else if (frame <= 111) {
        *arg1 = sUnk_82A34A4;
    }
    else if (frame <= 115) {
        *arg1 = sUnk_82A34B2;
    }
    else if (frame <= 123) {
        *arg1 = sUnk_82A34C0;
    }
    else if (frame <= 127) {
        *arg1 = sUnk_82A34B2;
    }
    else if (frame <= 177) {
        *arg1 = sUnk_82A34A4;
    }
    else if (frame <= 192) {
        *arg1 = sUnk_82A34CE;
    }
    else if (frame <= 200) {
        *arg1 = sUnk_82A34DC;
    }
    else if (frame <= 208) {
        *arg1 = sUnk_82A34F6;
    }
    else if (frame <= 212) {
        *arg1 = sUnk_82A3510;
    }
    else if (frame <= 216) {
        *arg1 = sUnk_82A352A;
    }
    else if (frame <= 220) {
        *arg1 = sUnk_82A3544;
    }
    else if (frame <= 224) {
        *arg1 = sUnk_82A355E;
    }
    else if (frame <= 228) {
        *arg1 = sUnk_82A3578;
    }
    else {
        *arg1 = sUnk_82A3592;
    }

    result = 0;
    if (frame == 328) {
        result = 1;
    }

    return result;
}

s32 func_800C568(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 24;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_82A35AC;
    }
    else if (frame <= 11) {
        *arg1 = sUnk_82A35C6;
    }
    else if (frame <= 17) {
        *arg1 = sUnk_82A35E0;
    }
    else {
        *arg1 = sUnk_82A35FA;
    }

    result = 0;
    if (frame == 23) {
        result = 1;
    }

    return result;
}

s32 func_800C5B0(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 74;
    s32 result;

    if (frame <= 49) {
        *arg1 = sUnk_82A3614;
    }
    else if (frame <= 55) {
        *arg1 = sUnk_82A3622;
    }
    else if (frame <= 61) {
        *arg1 = sUnk_82A3636;
    }
    else if (frame <= 67) {
        *arg1 = sUnk_82A3650;
    }
    else {
        *arg1 = sUnk_82A366A;
    }

    result = 0;
    if (frame == 73) {
        result = 1;
    }

    return result;
}

s32 func_800C604(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 30;
    s32 result;

    if (frame <= 5) {
        *arg1 = sUnk_82A3684;
    }
    else if (frame <= 11) {
        *arg1 = sUnk_82A368C;
    }
    else if (frame <= 17) {
        *arg1 = sUnk_82A3694;
    }
    else if (frame <= 23) {
        *arg1 = sUnk_82A369C;
    }
    else {
        *arg1 = sUnk_82A36A4;
    }

    result = 0;
    if (frame == 29) {
        result = 1;
    }

    return result;
}

/* Not score 0: executable instructions match, but target has one trailing alignment halfword after bx lr. */

s32 func_800C658(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 22;
    s32 result;

    if (frame <= 3) {
        *arg1 = sUnk_82A3760;
    }
    else if (frame <= 7) {
        *arg1 = sUnk_82A3768;
    }
    else if (frame <= 11) {
        *arg1 = sUnk_82A3770;
    }
    else if (frame <= 15) {
        *arg1 = sUnk_82A3778;
    }
    else {
        *arg1 = 0;
    }

    result = 0;
    if (frame == 0) {
        result = 1;
    }

    return result;
}

/* Not score 0: executable instructions match, but target has one trailing alignment halfword after bx lr. */

s32 func_800C6A8(s32 arg0, u16 **arg1)
{
    s32 frame = arg0 % 22;
    s32 result;

    if (frame <= 3) {
        *arg1 = sUnk_82A3780;
    }
    else if (frame <= 7) {
        *arg1 = sUnk_82A3788;
    }
    else if (frame <= 11) {
        *arg1 = sUnk_82A3790;
    }
    else if (frame <= 15) {
        *arg1 = sUnk_82A3798;
    }
    else {
        *arg1 = 0;
    }

    result = 0;
    if (frame == 0) {
        result = 1;
    }

    return result;
}

void func_800C6F8(u16 **arg0)
{
    *arg0 = sUnk_82A5310;
}

void func_800C704(u8 arg0, u8 arg1, u16 arg2)
{
    gWarioData.reaction = arg0;
    gWarioData.pose = arg1;
    gWarioData.horizontalDirection = arg2;
    gWarioData.unk_1F = 0;
    gWarioData.unk_1E = 0;
}

/* Not score 0: pure C behavioral reconstruction, but local code generation still differs from target. */

u16 *func_800C718(s32 xOffset, s32 yOffset, u16 priority, u16 held, u16 pressed)
{
    u16 oldPressed;
    u16 oldHeld;
    u16 count;
    u16 *src;
    u16 *dst;
    OamData *slot;
    s32 remaining;
    u16 attr0;
    u16 attr1;
    u16 attr2;
    s32 direction;
    s32 xMask;
    s32 xKeepMask;
    s32 priorityBits;
    s32 priorityMask;

    oldPressed = gButtonsPressed;
    oldHeld = gButtonsHeld;
    gButtonsPressed = pressed;
    gButtonsHeld = held;

    sWarioPoseHandlerTable[gWarioData.reaction]();

    gButtonsPressed = oldPressed;
    gButtonsHeld = oldHeld;

    direction = 1;
    if (gWarioData.horizontalDirection & 0x10) {
        direction = 0;
    }

    sUnk_82DED30[gWarioData.reaction](direction);

    gOamSlotsUsed = 0;
    dst = (u16 *)gOamBuffer;
    src = (u16 *)gWarioData.pOamData;
    count = *src++;

    if (count != 0) {
        xMask = 0x1FF;
        xKeepMask = 0xFFFFFE00;
        priorityBits = (priority & 3) << 2;
        slot = (OamData *)dst;
        priorityMask = -13;
        remaining = count;
        do {
            attr0 = *src++;
            *dst++ = attr0;
            ((u8 *)slot)[0] = attr0 + yOffset;

            attr1 = *src++;
            *dst++ = attr1;
            slot->all.attr1 = (xKeepMask & slot->all.attr1) | ((attr1 + xOffset) & xMask);

            attr2 = *src++;
            *dst = attr2;
            ((u8 *)slot)[5] = (((u8 *)slot)[5] & priorityMask) | priorityBits;

            dst += 2;
            slot++;
            remaining--;
        } while (remaining != 0);
    }

    gOamSlotsUsed = count;
    gWarioData.unk_1E++;
    return dst;
}

void func_800C82C(void)
{
    vu32 *dma;
    u32 control;

    if (gWarioData.objData1Size != 0) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)gWarioData.pObjData1;
        dma[1] = 0x06010000;
        control = (gWarioData.objData1Size >> 1) | 0x80000000;
        dma[2] = control;
        (void)dma[2];
    }

    if (gWarioData.objData2Size != 0) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)gWarioData.pObjData2;
        dma[1] = 0x06010400;
        control = (gWarioData.objData2Size >> 1) | 0x80000000;
        dma[2] = control;
        (void)dma[2];
    }
}

void func_800C87C(void)
{
    vu32 *dma = (vu32 *)0x040000D4;

    dma[0] = (u32)sUnk_82DDDA0;
    dma[1] = 0x05000200;
    dma[2] = 0x80000010;
    (void)dma[2];
}
