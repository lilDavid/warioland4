MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {
        . = 0x1844; keys_held = .;
        . = 0x1846; keys_held_copy = .;
        . = 0x1848; keys_pressed = .;

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
        obj/key_poll.o(.text);
        obj/init_video_memory.o(.text);
        obj/init_irq.o(.text);
        obj/blob_0x000A0C-0x000BE8.o(.text);
        obj/interrupt_callbacks.o(.text);
        obj/blob_0x000CE0-0x001060.o(.text);
        obj/sound.o(.text);
        obj/syscalls.o(.text);
        obj/blob_0x003228-0x095138.o(.text);
    } >ROM =0xFF

    .rodata : ALIGN(2) {
        obj/blob_0x095138-0x78F97C.o(.rodata);
    } > ROM =0xFF
}
