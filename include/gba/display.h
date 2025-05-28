#ifndef GBA_DISPLAY_H
#define GBA_DISPLAY_H

#include "memory.h"


#define REG_DISPCNT (REG_BASE + 0x000)
#define REG_DISPSTAT (REG_BASE + 0x004)

#define REG_BG0CNT (REG_BASE + 0x008)
#define REG_BG1CNT (REG_BASE + 0x00A)
#define REG_BG2CNT (REG_BASE + 0x00C)
#define REG_BG3CNT (REG_BASE + 0x00E)

#define REG_BG0HOFS (REG_BASE + 0x010)
#define REG_BG0VOFS (REG_BASE + 0x012)

#define REG_BG1HOFS (REG_BASE + 0x014)
#define REG_BG1VOFS (REG_BASE + 0x016)

#define REG_BG2HOFS (REG_BASE + 0x018)
#define REG_BG2VOFS (REG_BASE + 0x01A)

#define REG_BG3HOFS (REG_BASE + 0x01C)
#define REG_BG3VOFS (REG_BASE + 0x01E)

#define REG_BG2PA (REG_BASE + 0x020)
#define REG_BG2PB (REG_BASE + 0x022)
#define REG_BG2PC (REG_BASE + 0x024)
#define REG_BG2PD (REG_BASE + 0x026)

#define REG_BG2X (REG_BASE + 0x028)
#define REG_BG2Y (REG_BASE + 0x02C)

#define REG_WIN0H (REG_BASE + 0x040)
#define REG_WIN1H (REG_BASE + 0x042)
#define REG_WIN0V (REG_BASE + 0x044)
#define REG_WIN1V (REG_BASE + 0x046)
#define REG_WININ (REG_BASE + 0x048)
#define REG_WINOUT (REG_BASE + 0x04A)
#define REG_MOSAIC (REG_BASE + 0x04C)
#define REG_BLDCNT (REG_BASE + 0x050)
#define REG_BLDALPHA (REG_BASE + 0x052)
#define REG_BLDY (REG_BASE + 0x054)


#define DCNT_MODE0 (0 << 0)
#define DCNT_MODE1 (1 << 0)
#define DCNT_MODE2 (2 << 0)
#define DCNT_MODE3 (3 << 0)
#define DCNT_MODE4 (4 << 0)
#define DCNT_MODE5 (5 << 0)

#define DCNT_GB (1 << 3)
#define DCNT_PAGE (1 << 4)
#define DCNT_OAM_HBL (1 << 5)
#define DCNT_OBJ_1D (1 << 6)
#define DCNT_BLANK (1 << 7)

#define DCNT_BG0 (1 << 8)
#define DCNT_BG1 (1 << 9)
#define DCNT_BG2 (1 << 10)
#define DCNT_BG3 (1 << 11)
#define DCNT_OBJ (1 << 12)

#define DCNT_WIN0 (1 << 13)
#define DCNT_WIN1 (1 << 14)
#define DCNT_WINOBJ (1 << 15)


#define DSTAT_IN_VBL (1 << 0)
#define DSTAT_IN_HBL (1 << 1)
#define DSTAT_IN_VCT (1 << 2)
#define DSTAT_VBL_IRQ (1 << 3)
#define DSTAT_HBL_IRQ (1 << 4)
#define DSTAT_VCT_IRQ (1 << 5)
#define DSTAT_VCT(n) ((n) << 8)

#endif  // GBA_DISPLAY_H
