#include "gba/m4a.h"

// Some of these functions have different signatures, so we need to make this
// an array of void pointers or a struct. It's simpler to just make it an array
// for now.
void * const sMPlayJumpTableTemplate[] = {
    ply_fine,
    ply_goto,
    ply_patt,
    ply_pend,
    ply_rept,
    ply_fine,
    ply_fine,
    ply_fine,
    ply_fine,
    ply_prio,
    ply_tempo,
    ply_keysh,
    ply_voice,
    ply_vol,
    ply_pan,
    ply_bend,
    ply_bendr,
    ply_lfos,
    ply_lfodl,
    ply_mod,
    ply_modt,
    ply_fine,
    ply_fine,
    ply_tune,
    ply_fine,
    ply_fine,
    ply_fine,
    ply_port,
    ply_fine,
    ply_endtie,
    SampleFreqSet,
    TrackStop,
    FadeOutBody,
    TrkVolPitSet,
    RealClearChain,
    SoundMainBTM,
};

const u8 sScaleTable[] = {
    0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB,
    0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB,
    0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB,
    0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB,
    0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB,
    0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B,
    0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B,
    0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B,
    0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B,
    0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B,
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B,
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B,
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,
};

const u32 sFreqTable[] = {
    2147483648u,
    2275179671u,
    2410468894u,
    2553802834u,
    2705659852u,
    2866546760u,
    3037000500u,
    3217589947u,
    3408917802u,
    3611622603u,
    3826380858u,
    4053909305u,
};

const u16 sPcmSamplesPerVBlankTable[] = {
    96,
    132,
    176,
    224,
    264,
    304,
    352,
    448,
    528,
    608,
    672,
    704,
};

const u8 sCgbScaleTable[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B,
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B,
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B,
    0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B,
    0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B,
    0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B,
    0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B,
    0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B,
    0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB,
};

const s16 sCgbFreqTable[] = {
    -2004,
    -1891,
    -1785,
    -1685,
    -1591,
    -1501,
    -1417,
    -1337,
    -1262,
    -1192,
    -1125,
    -1062,
};

const u8 sNoiseTable[] = {
    0xD7, 0xD6, 0xD5, 0xD4,
    0xC7, 0xC6, 0xC5, 0xC4,
    0xB7, 0xB6, 0xB5, 0xB4,
    0xA7, 0xA6, 0xA5, 0xA4,
    0x97, 0x96, 0x95, 0x94,
    0x87, 0x86, 0x85, 0x84,
    0x77, 0x76, 0x75, 0x74,
    0x67, 0x66, 0x65, 0x64,
    0x57, 0x56, 0x55, 0x54,
    0x47, 0x46, 0x45, 0x44,
    0x37, 0x36, 0x35, 0x34,
    0x27, 0x26, 0x25, 0x24,
    0x17, 0x16, 0x15, 0x14,
    0x07, 0x06, 0x05, 0x04,
    0x03, 0x02, 0x01, 0x00,
};

const u8 sCgb3Vol[] = {
    0x00, 0x00,
    0x60, 0x60, 0x60, 0x60,
    0x40, 0x40, 0x40, 0x40,
    0x80, 0x80, 0x80, 0x80,
    0x20, 0x20,
};

const u8 sClockTable[] = {
    0x00,
    0x01,
    0x02,
    0x03,
    0x04,
    0x05,
    0x06,
    0x07,
    0x08,
    0x09,
    0x0A,
    0x0B,
    0x0C,
    0x0D,
    0x0E,
    0x0F,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x1C,
    0x1E,
    0x20,
    0x24,
    0x28,
    0x2A,
    0x2C,
    0x30,
    0x34,
    0x36,
    0x38,
    0x3C,
    0x40,
    0x42,
    0x44,
    0x48,
    0x4C,
    0x4E,
    0x50,
    0x54,
    0x58,
    0x5A,
    0x5C,
    0x60,
};

const XcmdFunc sXcmdTable[] = {
    ply_xxx,
    ply_xwave,
    ply_xtype,
    ply_xxx,
    ply_xatta,
    ply_xdeca,
    ply_xsust,
    ply_xrele,
    ply_xiecv,
    ply_xiecl,
    ply_xleng,
    ply_xswee,
};
