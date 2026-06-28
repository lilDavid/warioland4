#include "cutscenes/cutscene_gfx.h"

s32 SelectCutsceneGfx1(s32 timer, u8 **gfxData)
{
    s32 frame;
    s32 done;

    frame = timer % 24;
    if (frame > 5) goto gt5;
    *gfxData = &sCutsceneGfx1_Frame0;
    goto done_store;

gt5:
    if (frame > 11) goto gt11;
    *gfxData = &sCutsceneGfx1_Frame1;
    goto done_store;

gt11:
    if (frame > 17) goto gt17;
    *gfxData = &sCutsceneGfx1_Frame2;
    goto done_store;

gt17:
    *gfxData = &sCutsceneGfx1_Frame3;

done_store:
    done = 0;
    if (frame == 23) {
        done = 1;
    }
    return done;
}

s32 SelectCutsceneGfx2(s32 timer, u8 **gfxData)
{
    s32 frame;
    s32 done;

    frame = timer % 42;
    if (frame > 5) goto gt5;
    *gfxData = &sCutsceneGfx2_Frame0;
    goto done_store;

gt5:
    if (frame > 11) goto gt11;
    *gfxData = &sCutsceneGfx2_Frame1;
    goto done_store;

gt11:
    if (frame > 17) goto gt17;
    *gfxData = &sCutsceneGfx2_Frame2;
    goto done_store;

gt17:
    if (frame > 23) goto gt23;
    *gfxData = &sCutsceneGfx2_Frame3;
    goto done_store;

gt23:
    if (frame > 29) goto gt29;
    *gfxData = &sCutsceneGfx2_Frame4;
    goto done_store;

gt29:
    if (frame > 35) goto gt35;
    *gfxData = &sCutsceneGfx2_Frame5;
    goto done_store;

gt35:
    *gfxData = &sCutsceneGfx2_Frame6;

done_store:
    done = 0;
    if (frame == 41) {
        done = 1;
    }
    return done;
}

s32 SelectCutsceneGfx3(s32 timer, u8 **gfxData)
{
    s32 frame;
    s32 done;

    frame = timer % 24;
    if (frame > 5) goto gt5;
    *gfxData = &sCutsceneGfx3_Frame0;
    goto done_store;

gt5:
    if (frame > 11) goto gt11;
    *gfxData = &sCutsceneGfx3_Frame1;
    goto done_store;

gt11:
    if (frame > 17) goto gt17;
    *gfxData = &sCutsceneGfx3_Frame2;
    goto done_store;

gt17:
    *gfxData = &sCutsceneGfx3_Frame3;

done_store:
    done = 0;
    if (frame == 23) {
        done = 1;
    }
    return done;
}

s32 SelectCutsceneGfx4(s32 timer, u8 **gfxData)
{
    s32 frame;
    s32 done;

    frame = timer % 48;
    if (frame > 5) goto gt5;
    *gfxData = &sCutsceneGfx4_Frame0;
    goto done_store;

gt5:
    if (frame > 11) goto gt11;
    *gfxData = &sCutsceneGfx4_Frame1;
    goto done_store;

gt11:
    if (frame > 17) goto gt17;
    *gfxData = &sCutsceneGfx4_Frame2;
    goto done_store;

gt17:
    if (frame > 23) goto gt23;
    *gfxData = &sCutsceneGfx4_Frame3;
    goto done_store;

gt23:
    if (frame > 29) goto gt29;
    *gfxData = &sCutsceneGfx4_Frame4;
    goto done_store;

gt29:
    if (frame > 35) goto gt35;
    *gfxData = &sCutsceneGfx4_Frame5;
    goto done_store;

gt35:
    if (frame > 41) goto gt41;
    *gfxData = &sCutsceneGfx4_Frame6;
    goto done_store;

gt41:
    *gfxData = &sCutsceneGfx4_Frame7;

done_store:
    done = 0;
    if (frame == 47) {
        done = 1;
    }
    return done;
}

s32 SelectCutsceneGfx5(s32 timer, u8 **gfxData)
{
    s32 frame;
    s32 done;

    frame = timer % 48;
    if (frame > 5) goto gt5;
    *gfxData = &sCutsceneGfx5_Frame0;
    goto done_store;

gt5:
    if (frame > 11) goto gt11;
    *gfxData = &sCutsceneGfx5_Frame1;
    goto done_store;

gt11:
    if (frame > 17) goto gt17;
    *gfxData = &sCutsceneGfx5_Frame2;
    goto done_store;

gt17:
    if (frame > 23) goto gt23;
    *gfxData = &sCutsceneGfx5_Frame3;
    goto done_store;

gt23:
    if (frame > 29) goto gt29;
    *gfxData = &sCutsceneGfx5_Frame4;
    goto done_store;

gt29:
    if (frame > 35) goto gt35;
    *gfxData = &sCutsceneGfx5_Frame5;
    goto done_store;

gt35:
    if (frame > 41) goto gt41;
    *gfxData = &sCutsceneGfx5_Frame6;
    goto done_store;

gt41:
    *gfxData = &sCutsceneGfx5_Frame7;

done_store:
    done = 0;
    if (frame == 47) {
        done = 1;
    }
    return done;
}
