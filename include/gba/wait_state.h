#ifndef GBA_WAIT_STATE_H
#define GBA_WAIT_STATE_H

#include "gba/memory.h"


#define REG_WAITCNT (REG_BASE + 0x204)

#define WS_SRAM_4CYCLES (0 << 0)
#define WS_SRAM_3CYCLES (1 << 0)
#define WS_SRAM_2CYCLES (2 << 0)
#define WS_SRAM_8CYCLES (3 << 0)

#define WS_ROM0_4CYCLES (0 << 2)
#define WS_ROM0_3CYCLES (1 << 2)
#define WS_ROM0_2CYCLES (2 << 2)
#define WS_ROM0_8CYCLES (3 << 2)
#define WS_ROM0_SUB_2CYCLES (0 << 4)
#define WS_ROM0_SUB_1CYCLE (1 << 4)

#define WS_ROM1_4CYCLES (0 << 5)
#define WS_ROM1_3CYCLES (1 << 5)
#define WS_ROM1_2CYCLES (2 << 5)
#define WS_ROM1_8CYCLES (3 << 5)
#define WS_ROM1_SUB_2CYCLES (0 << 7)
#define WS_ROM1_SUB_1CYCLE (1 << 7)

#define WS_ROM2_4CYCLES (0 << 8)
#define WS_ROM2_3CYCLES (1 << 8)
#define WS_ROM2_2CYCLES (2 << 8)
#define WS_ROM2_8CYCLES (3 << 8)
#define WS_ROM2_SUB_2CYCLES (0 << 10)
#define WS_ROM2_SUB_1CYCLE (1 << 10)

#define WS_CART_OFF (0 << 11)
#define WS_CART_4MHZ (1 << 11)
#define WS_CART_8MHZ (2 << 11)
#define WS_CART_16MHZ (3 << 11)

#define WS_PREFETCH_DISABLE (0 << 14)
#define WS_PREFETCH_ENABLE (1 << 14)

#define WS_CART_AGB (0 << 15)
#define WS_CART_DMG_CGB (1 << 15)

#endif  // GBA_WAIT_STATE_H