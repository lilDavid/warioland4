MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {
        . = 0x7e60; sp_sys = .;
        . = 0x7fa0; sp_irq = .;
        . = 0x7ffc; intr_vector = .;
    } >IWRAM

    .text : ALIGN(2) {
        obj/rom_header.o(.text);
        obj/crt0.o(.text);
        obj/agb_main.o(.text);
        obj/hardware_init.o(.text);
        obj/soft_reset_check.o(.text);
        obj/blob_0x0007EC-0x000954.o(.text);
        obj/check_keys.o(.text);
        obj/init_video_memory.o(.text);
        obj/init_irq.o(.text);
        obj/blob_0x000A0C-0x000C14.o(.text);
        obj/set_vblank_handler.o(.text);
        obj/blob_0x000C2C-0x001D98.o(.text);
        obj/sound_init.o(.text);
        obj/blob_0x001D98-0x78F97C.o(.text);
    } >ROM =0xFF
}
