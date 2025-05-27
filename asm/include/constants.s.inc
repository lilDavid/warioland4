.set PSR_IRQ_MODE, 0x12
.set PSR_SYS_MODE, 0x1F

.set REG_BASE, 0x4000000
.set REG_IE_OFFSET, 0x200
.set REG_IF_OFFSET, 0x202
.set REG_IME_OFFSET, 0x208

.set IRQ_VBLANK, 1 << 0
.set IRQ_HBLANK, 1 << 1
.set IRQ_VCOUNT, 1 << 2
.set IRQ_TIMER0, 1 << 3
.set IRQ_TIMER1, 1 << 4
.set IRQ_TIMER2, 1 << 5
.set IRQ_TIMER3, 1 << 6
.set IRQ_COM, 1 << 7
.set IRQ_DMA0, 1 << 8
.set IRQ_DMA1, 1 << 9
.set IRQ_DMA2, 1 << 10
.set IRQ_DMA3, 1 << 11
.set IRQ_KEYPAD, 1 << 12
.set IRQ_GAMEPAK, 1 << 13

.set THUMB_BIT, 1
