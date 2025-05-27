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
        obj/blob_0x0001CC-0x78F97C.o(.text);
    } >ROM =0xFF
}
