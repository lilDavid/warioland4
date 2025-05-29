MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {
        . = 0x001e; disable_soft_reset = .;
        . = 0x00a0; unk_30000A0 = .;
        . = 0x0a24; current_sprite = .;
        . = 0x0a50; unk_3000A50 = .;
        . = 0x0a51; unk_3000A51 = .;
        . = 0x0bec; unk_3000BEC = .;
        . = 0x0c3a; main_game_mode = .;
        . = 0x0c3c; secondary_game_mode = .;
        . = 0x0c42; unk_0c42 = .;
        . = 0x0c44; isr_buffer = .;
        . = 0x1844; keys_held = .;
        . = 0x1846; keys_held_copy = .;
        . = 0x1848; keys_pressed = .;
        . = 0x1898; wario_data = .;
        . = 0x19fc; vblank_callback = .;
        . = 0x1A00; hblank_callback = .;
        . = 0x1A04; vcount_callback = .;

        . = 0x7e60; sp_sys = .;
        . = 0x7fa0; sp_irq = .;
        . = 0x7ffc; intr_vector = .;
    } >IWRAM

    .text : ALIGN(2) {
        obj/rom_header.o(.text);
        obj/crt0.o(.text);
        obj/agb_main.o(.text);
        obj/soft_reset.o(.text);
        obj/blob_0x0007EC-0x000954.o(.text);
        obj/key_poll.o(.text);
        obj/init_helpers.o(.text);
        obj/blob_0x000A0C-0x000BE8.o(.text);
        obj/interrupt_callbacks.o(.text);
        obj/func_000CA8.o(.text);
        obj/blob_0x000CE0-0x001060.o(.text);
        obj/sound.o(.text);
        obj/syscalls.o(.text);
        obj/blob_0x003228-0x0238A4.o(.text);
        obj/sprite_util.o(.text);
        obj/blob_0x025C80-0x026FAC.o(.text);
        obj/sprite_ai/blob_0x026FAC-03E560.o(.text);
        obj/sprite_ai/rock.o(.text);
        obj/sprite_ai/blob_0x03EC78-06ACA0.o(.text);
        obj/blob_0x06ACA0-0x072CA0.o(.text);
        obj/sram.o(.text);
        obj/blob_0x0743BC-0x0766E8.o(.text);
        obj/secondary_sprite.o(.text);
        obj/blob_0x076784-0x094DFC.o(.text);
        obj/libgcc.o(.text);
    } >ROM =0xFF

    .rodata : ALIGN(2) {
        obj/blob_0x095138-0x0953B8.o(.rodata);
        obj/crt0.o(.rodata);
        obj/blob_0x0953EC-0x78F97C.o(.rodata);
    } > ROM =0xFF
}
