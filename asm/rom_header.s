#include "macros.s.inc"

arm_func_start entry_point
entry_point:
    b _start

header:
nintendo_logo:
    .space 156
game_title:
    .space 12
game_code:
    .space 4
maker_code:
    .space 2
magic_number:
    .space 1
main_unit_code:
    .space 1
device_type:
    .space 1
reserved_1:
    .space 7
software_version:
    .space 1
checksum:
    .space 1
reserved_2:
    .space 2
