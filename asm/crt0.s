.include "constants.s.inc"
.include "macros.s.inc"

arm_func_start _start
_start:  @ 0x80000C0
    mov r0, #PSR_IRQ_MODE
    msr CPSR_fc, r0
    ldr sp, sp_irq_ptr
    mov r0, #PSR_SYS_MODE
    msr CPSR_fc, r0
    ldr sp, sp_sys_ptr

    ldr r1, intr_vector_ptr
    add r0, pc, #irq_handler - . - 8  @ Because of the execution pipeline, the PC is 2 instructions ahead of this line
    str r0, [r1]

    ldr r1, main_loop_ptr
    mov lr, pc
    bx r1
    b _start

sp_sys_ptr: .4byte sp_sys
sp_irq_ptr: .4byte sp_irq


arm_func_start irq_handler
irq_handler:  @ 0x80000FC
    mov r3, #REG_BASE
    add r3, r3, #REG_IE_OFFSET  @ r3 = REG_IE
    ldr r2, [r3]
    and r1, r2, r2, lsr #16  @ AND with REG_IF

    ands r0, r1, #IRQ_GAMEPAK
.freeze:
    bne .freeze

    mov r2, #0
    ands r0, r1, #IRQ_VBLANK
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_HBLANK
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_VCOUNT
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_TIMER0
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_TIMER1
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_TIMER2
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_TIMER3
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_COM
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_DMA0
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_DMA1
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_DMA2
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_DMA3
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #IRQ_KEYPAD

.found_interrupt:
    strh r0, [r3, #2]  @ REG_IF
    ldr r1, interrupt_table_ptr
    add r1, r1, r2
    ldr r0, [r1]
    bx r0

intr_vector_ptr: .4byte intr_vector
main_loop_ptr: .4byte agb_main
interrupt_table_ptr: .4byte interrupt_table


.section .rodata

interrupt_table:
    .4byte handle_vblank_intr  @ IRQ_VBLANK
    .4byte handle_hblank_intr  @ IRQ_HBLANK
    .4byte handle_vcount_intr  @ IRQ_VCOUNT
    .4byte null_callback       @ IRQ_TIMER0
    .4byte null_callback       @ IRQ_TIMER1
    .4byte null_callback       @ IRQ_TIMER2
    .4byte null_callback       @ IRQ_TIMER3
    .4byte null_callback       @ IRQ_COM
    .4byte null_callback       @ IRQ_DMA0
    .4byte null_callback       @ IRQ_DMA1
    .4byte null_callback       @ IRQ_DMA2
    .4byte null_callback       @ IRQ_DMA3
    .4byte null_callback       @ IRQ_KEYPAD
