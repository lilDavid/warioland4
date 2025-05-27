MEMORY {
    EWRAM (rwx) : ORIGIN = 0x2000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x3000000, LENGTH = 32K
    ROM   (rx) : ORIGIN = 0x8000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {} >EWRAM
    iwram (NOLOAD) : ALIGN(4) {} >IWRAM

    .text : ALIGN(2) {
        obj/blob_0x000000-0x0000C0.o(.text);
        obj/crt0.o(.text);
        obj/blob_0x0001CC-0x78F97C.o(.text);
    } >ROM =0xFF
}
