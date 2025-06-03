MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {
        . = 0x0002; gCurrentPassage = .;
        . = 0x0003; gCurrentStageNumber = .;
        . = 0x0004; gCurrentStageID = .;
        . = 0x0006; gUnk_3000006 = .;
        . = 0x0010; gUnk_3000010 = .;
        . = 0x0012; gUnk_3000012 = .;
        . = 0x0013; gUnk_3000013 = .;
        . = 0x0014; gUnk_3000014 = .;
        . = 0x0018; gUnk_3000018 = .;
        . = 0x001e; gDisableSoftReset = .;
        . = 0x0020; gUnk_3000020 = .;
        . = 0x0022; gUnk_3000022 = .;
        . = 0x0024; gCurrentRoom = .;
        . = 0x0025; gUnk_3000025 = .;
        . = 0x0028; gUnk_3000028 = .;
        . = 0x0047; gUnk_3000047 = .;
        . = 0x0048; gUnk_3000048 = .;
        . = 0x00a0; gUnk_30000A0 = .;
        . = 0x00c8; gUnk_30000C8 = .;
        . = 0x0104; gSpriteData = .;
        . = 0x0564; gPersistentSpriteData = .;
        . = 0x0a24; gCurrentSprite = .;
        . = 0x0a50; gUnk_3000A50 = .;
        . = 0x0a51; gUnk_3000A51 = .;
        . = 0x0bec; gUnk_3000BEC = .;
        . = 0x0C01; gUnk_3000C01 = .;
        . = 0x0C03; gUnk_3000C03 = .;
        . = 0x0c35; gUnk_3000C35 = .;
        . = 0x0c37; gUnk_3000C37 = .;
        . = 0x0c3a; gMainGameMode = .;
        . = 0x0c3c; gSubGameMode = .;
        . = 0x0c3e; gUnk_3000C3E = .;
        . = 0x0c3f; gUnk_3000C3F = .;
        . = 0x0c40; gUnk_3000C40 = .;
        . = 0x0c41; gUnk_3000C41 = .;
        . = 0x0c42; gUnk_3000C42 = .;
        . = 0x0c44; gInterruptHandlerBuffer = .;
        . = 0x1844; gButtonsHeld = .;
        . = 0x1846; gButtonsHeldCopy = .;
        . = 0x1848; gButtonsPressed = .;
        . = 0x187A; gUnk_300187A = .;
        . = 0x187C; gUnk_300187C = .;
        . = 0x1898; gWarioData = .;
        . = 0x1910; gWarioHearts = .;
        . = 0x1914; gHeartGauge = .;
        . = 0x1948; gUnk_3001948 = .;
        . = 0x19f4; gUnk_30019F4 = .;
        . = 0x19f6; gWarioPauseTimer = .;
        . = 0x19fc; gVBlankCallback = .;
        . = 0x1A00; gHBlankCallback = .;
        . = 0x1A04; gVCountCallback = .;

        . = 0x7e60; sp_sys = .;
        . = 0x7fa0; sp_irq = .;
        . = 0x7ffc; intr_vector = .;
    } >IWRAM

    .text : ALIGN(2) {
        obj/rom_header.o(.text);
        obj/crt0.o(.text);
        obj/disasm_agbmain.o(.text);
        obj/soft_reset.o(.text);
        obj/disasm_0x0007EC.o(.text);
        obj/poll_input.o(.text);
        obj/init_helpers.o(.text);
        obj/blob_0x000A0C-0x000BE8.o(.text);
        obj/interrupt_callbacks.o(.text);
        obj/disasm_0x000CA8.o(.text);
        obj/blob_0x000CE0-0x001060.o(.text);
        obj/blob_sound.o(.text);
        obj/syscalls.o(.text);
        obj/blob_0x003228-0x0238A4.o(.text);
        obj/disasm_sprite_util.o(.text);
        obj/sprite_ai/blob_0x026FAC-02BADC.o(.text);
        obj/sprite_ai/coins.o(.text);
        obj/sprite_ai/blob_0x02C894-03E560.o(.text);
        obj/sprite_ai/rock.o(.text);
        obj/sprite_ai/blob_0x03EC78-06ACA0.o(.text);
        obj/blob_0x06ACA0-0x072CA0.o(.text);
        obj/blob_sram.o(.text);
        obj/blob_0x0743BC-0x076658.o(.text);
        obj/blob_score.o(.text);
        obj/blob_0x076784-0x088620.o(.text);
        obj/blob_wario_voice.o(.text);
        obj/blob_0x088678-0x094DFC.o(.text);
        obj/blob_libgcc.o(.text);
    } >ROM =0xFF

    .rodata : ALIGN(2) {
        obj/blob_0x095138-0x0953B8.o(.rodata);
        obj/crt0.o(.rodata);
        obj/blob_0x0953EC-0x78F97C.o(.rodata);
    } > ROM =0xFF
}
