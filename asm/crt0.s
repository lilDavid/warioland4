.include "constants.s.inc"
.include "macros.s.inc"

arm_func_start _start
_start:  @ 0x80000C0
    mov r0, #PSR_IRQ_MODE
    msr CPSR_fc, r0
    ldr sp, sp_irq
    mov r0, #PSR_SYS_MODE
    msr CPSR_fc, r0
    ldr sp, sp_sys

    ldr r1, intr_vector
    add r0, pc, #irq_handler - . - 8  @ Because of the execution pipeline, the PC is 2 instructions ahead of this line
    str r0, [r1]

    ldr r1, main_loop_ptr
    mov lr, pc
    bx r1
    b _start

sp_sys: .4byte IWRAM_END - 0x1A0
sp_irq: .4byte IWRAM_END - 0x60


arm_func_start irq_handler
irq_handler:  @ 0x80000FC
    mov r3, #REG_BASE
    add r3, r3, #OFFSET_REG_IE  @ r3 = REG_IE
    ldr r2, [r3]
    and r1, r2, r2, lsr #16  @ AND with REG_IF

    ands r0, r1, #INTR_FLAG_GAMEPAK
.freeze:
    bne .freeze

    mov r2, #0
    ands r0, r1, #INTR_FLAG_VBLANK
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_HBLANK
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_VCOUNT
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_TIMER0
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_TIMER1
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_TIMER2
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_TIMER3
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_SERIAL
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_DMA0
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_DMA1
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_DMA2
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_DMA3
    bne .found_interrupt

    add r2, r2, #4
    ands r0, r1, #INTR_FLAG_KEYPAD

.found_interrupt:
    strh r0, [r3, #2]  @ REG_IF
    ldr r1, interrupt_table_ptr
    add r1, r1, r2
    ldr r0, [r1]
    bx r0

intr_vector: .4byte INTR_VECTOR
main_loop_ptr: .4byte AgbMain
interrupt_table_ptr: .4byte interrupt_table


.section .rodata

interrupt_table:
    .4byte InterruptCallback_CallVBlank  @ INTR_FLAG_VBLANK
    .4byte InterruptCallback_CallHBlank  @ INTR_FLAG_HBLANK
    .4byte InterruptCallback_CallVCount  @ INTR_FLAG_VCOUNT
    .4byte InterruptCallback_Empty       @ INTR_FLAG_TIMER0
    .4byte InterruptCallback_Empty       @ INTR_FLAG_TIMER1
    .4byte InterruptCallback_Empty       @ INTR_FLAG_TIMER2
    .4byte InterruptCallback_Empty       @ INTR_FLAG_TIMER3
    .4byte InterruptCallback_Empty       @ INTR_FLAG_COM
    .4byte InterruptCallback_Empty       @ INTR_FLAG_DMA0
    .4byte InterruptCallback_Empty       @ INTR_FLAG_DMA1
    .4byte InterruptCallback_Empty       @ INTR_FLAG_DMA2
    .4byte InterruptCallback_Empty       @ INTR_FLAG_DMA3
    .4byte InterruptCallback_Empty       @ INTR_FLAG_KEYPAD
