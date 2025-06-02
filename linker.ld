MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {
        . = 0x001e; gDisableSoftReset = .;
        . = 0x0024; gCurrentRoom = .;
        . = 0x00a0; gUnk_30000A0 = .;
        . = 0x0564; gPersistentSpriteData = .;
        . = 0x0a24; gCurrentSprite = .;
        . = 0x0a50; gUnk_3000A50 = .;
        . = 0x0a51; gUnk_3000A51 = .;
        . = 0x0bec; gUnk_3000BEC = .;
        . = 0x0c3a; gMainGameMode = .;
        . = 0x0c3c; gSubGameMode = .;
        . = 0x0c42; gUnk_3000c42 = .;
        . = 0x0c44; gInterruptHandlerBuffer = .;
        . = 0x1844; gButtonsHeld = .;
        . = 0x1846; gButtonsHeldCopy = .;
        . = 0x1848; gButtonsPressed = .;
        . = 0x1898; gWarioData = .;
        . = 0x1910; gWarioHearts = .;
        . = 0x1914; gHeartGauge = .;
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
        obj/agbmain.o(.text);
        obj/soft_reset.o(.text);
        obj/blob_0x0007EC-0x000954.o(.text);
        obj/poll_input.o(.text);
        obj/init_helpers.o(.text);
        obj/blob_0x000A0C-0x000BE8.o(.text);
        obj/interrupt_callbacks.o(.text);
        obj/func_000CA8.o(.text);
        obj/blob_0x000CE0-0x001060.o(.text);
        obj/sound.o(.text);
        obj/syscalls.o(.text);
        obj/blob_0x003228-0x0238A4.o(.text);
        obj/sprite_util.o(.text);
        obj/sprite_ai/blob_0x026FAC-02BADC.o(.text);
        obj/sprite_ai/coins.o(.text);
        obj/sprite_ai/blob_0x02C894-03E560.o(.text);
        obj/sprite_ai/rock.o(.text);
        obj/sprite_ai/blob_0x03EC78-06ACA0.o(.text);
        obj/blob_0x06ACA0-0x072CA0.o(.text);
        obj/sram.o(.text);
        obj/blob_0x0743BC-0x076658.o(.text);
        obj/score.o(.text);
        obj/blob_0x076784-0x088620.o(.text);
        obj/wario_voice.o(.text);
        obj/blob_0x088678-0x094DFC.o(.text);
        obj/libgcc.o(.text);
    } >ROM =0xFF

    .rodata : ALIGN(2) {
        obj/blob_0x095138-0x0953B8.o(.rodata);
        obj/crt0.o(.rodata);
        obj/blob_0x0953EC-0x78F97C.o(.rodata);
    } > ROM =0xFF
}
