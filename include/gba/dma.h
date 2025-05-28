#ifndef GBA_DMA_H
#define GBA_DMA_H

#include "gba/memory.h"


#define REG_DMA0 (REG_BASE + 0xB0)
#define REG_DMA1 (REG_BASE + 0xBC)
#define REG_DMA2 (REG_BASE + 0xC8)
#define REG_DMA3 (REG_BASE + 0xD4)

#define DMA_SAD (0)
#define DMA_DAD (1)
#define DMA_CNT (2)

#define REG_DMA0SAD REG_DMA0
#define REG_DMA0DAD (REG_DMA0 + 4)
#define REG_DMA0CNT (REG_DMA0 + 8)
#define REG_DMA1SAD REG_DMA1
#define REG_DMA1DAD (REG_DMA1 + 4)
#define REG_DMA1CNT (REG_DMA1 + 8)
#define REG_DMA2SAD REG_DMA2
#define REG_DMA2DAD (REG_DMA2 + 4)
#define REG_DMA2CNT (REG_DMA2 + 8)
#define REG_DMA3SAD REG_DMA3
#define REG_DMA3DAD (REG_DMA3 + 4)
#define REG_DMA3CNT (REG_DMA3 + 8)


#define DMA_N(n) (n)

#define DMA_DST_INC (0 << 21)
#define DMA_DST_DEC (1 << 21)
#define DMA_DST_FIXED (2 << 21)
#define DMA_DST_RELOAD (3 << 21)

#define DMA_SRC_INC (0 << 23)
#define DMA_SRC_DEC (1 << 23)
#define DMA_SRC_FIXED (2 << 23)
#define DMA_SRC_RELOAD (3 << 23)

#define DMA_REPEAT (1 << 25)

#define DMA_16 (0 << 26)
#define DMA_32 (1 << 26)

#define DMA_NOW (0 << 28)
#define DMA_AT_VBLANK (1 << 28)
#define DMA_AT_HBLANK (2 << 28)
#define DMA_AT_REFRESH (3 << 28)

#define DMA_IRQ (1 << 30)

#define DMA_ENABLE (1 << 31)

#endif /* GBA_DMA_H */
