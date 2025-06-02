VERSION ?= us


# Build tools
HOSTCC=cc

TOOLCHAIN ?= arm-none-eabi-
AS = $(TOOLCHAIN)as
LD = $(TOOLCHAIN)ld
OBJCOPY = $(TOOLCHAIN)objcopy
OBJDUMP = $(TOOLCHAIN)objdump

CPP = cpp
DIFF = diff -u
MD5SUM = md5sum

TOOLS = tools
GBAFIX = $(TOOLS)/gbafix/gbafix

CC = $(TOOLS)/agbcc/agbcc


# Files
GAME_NAME = warioland4
FILENAME = $(GAME_NAME)_$(VERSION)
BASEROM = baserom_$(VERSION).gba
MD5FILE = $(FILENAME).md5

BUILD = build/$(VERSION)
ASM = asm
SRC = src
INCLUDE = include
BUILT_ASM = $(BUILD)/asm
OBJ = $(BUILD)/obj

SRCS_C = $(shell find $(SRC) -type f -name '*.c')
SRCS_ASM = $(shell find $(ASM) -type f -name '*.s')
BUILT_ASMS = $(SRCS_C:$(SRC)/%.c=$(BUILT_ASM)/%.s)
OBJS = $(SRCS_ASM:$(ASM)/%.s=$(OBJ)/%.o) $(SRCS_C:$(SRC)/%.c=$(OBJ)/%.o)
.PRECIOUS: $(BUILT_ASMS)

TARGET = $(BUILD)/$(FILENAME).gba
ELF = $(TARGET:.gba=.elf)
MAP = $(TARGET:.gba=.map)
DUMPS = $(BASEROM).dump $(TARGET).dump


# ROM header
ifeq ($(VERSION), us)
	GAME_TITLE = WARIOLANDE
	GAME_CODE = AWAE
	CPPFLAGS += -DVERSION_US
	ASFLAGS += --defsym VERSION_US=1
else ifeq ($(VERSION), jp)
	GAME_TITLE = WARIOLAND
	GAME_CODE = AWAJ
	CPPFLAGS += -DVERSION_JP
	ASFLAGS += --defsym VERSION_JP=1
else
$(error Unupported version $(VERSION))
endif

MAKER_CODE = 01
GAME_REVISION = 00


# Flags
ASFLAGS += -I$(ASM) -mcpu=arm7tdmi
CFLAGS = -O2 -mthumb-interwork -fhex-asm -fprologue-bugfix -Wall
CPPFLAGS += -I$(INCLUDE) -nostdinc


# Quiet/verbose output
ifeq ($(V), 1)
	Q =
	MSG = @:
else
	Q = @
	MSG = @echo " "
endif


.PHONY: all check dump diff clean help

all: check

check: $(TARGET)
	$(MSG) MD5SUM $(MD5FILE)
	$Q$(MD5SUM) -c $(MD5FILE)

dump: $(DUMPS)

diff: $(DUMPS)
	$(MSG) DIFF $^
	$Q$(DIFF) $^

clean:
	$(MSG) RM build
	$Qrm -rf build
	$(MSG) RM DUMPS
	$Qrm -f baserom_*.gba.dump
	$(MSG) RM $(GBAFIX)
	$Qrm -rf $(GBAFIX)
ifeq ($(AGBCC),1)
	$(MSG) CLEAN $(CC)
	$Qcd tools/agbcc && git clean -xdf .
endif

help:
	@echo 'Targets:'
	@echo '  all: build and checksum the ROM'
	@echo '  check: same as `all`'
	@echo '  dump: dump the ROMs'
	@echo '  diff: dump and compare the ROMs'
	@echo '  clean: remove build files'
	@echo '    AGBCC=1: remove build files for agbcc'
	@echo '  help: show this message'
	@echo ''
	@echo 'Flags:'
	@echo '  VERSION=<version>: select the version of the ROM to build, supported versions:'
	@echo '    us'
	@echo '    jp'


%.dump: %
	$(MSG) OBJDUMP $<
	$Q$(OBJDUMP) -D -bbinary -marm7tdmi -Mforce-thumb $< > $@

$(TARGET): $(ELF) $(GBAFIX)
	$(MSG) OBJCOPY $<
	$Q$(OBJCOPY) -O binary --gap-fill 0xff --pad-to 0x08800000 $< $@
	$(MSG) GBAFIX $@
	$Q$(GBAFIX) $@ -t$(GAME_TITLE) -c$(GAME_CODE) -m$(MAKER_CODE) -r$(GAME_REVISION)

$(ELF): $(OBJS) linker.ld
	$(MSG) LD linker.ld
	$Q$(LD) $(LDFLAGS) -n -T linker.ld -Map=$(MAP) -L$(BUILD) -o $@

$(OBJ)/%.o: $(ASM)/%.s
	$(MSG) AS $<
	$Qmkdir -p $(shell dirname $@)
	$Q$(AS) $(ASFLAGS) $< -o $@

$(OBJ)/%.o: $(BUILT_ASM)/%.s
	$(MSG) AS $<
	$Qmkdir -p $(shell dirname $@)
	$Q$(AS) $(ASFLAGS) $< -o $@

$(BUILT_ASM)/%.s: $(SRC)/%.c $(CC)
	$(MSG) CC $<
	$Qmkdir -p $(shell dirname $@)
	$Q$(CPP) $(CPPFLAGS) $< | $(CC) $(CFLAGS) -o $@
	@echo '    .align 2, 0' >> $@

$(TOOLS)/%: $(TOOLS)/%.c
	$(MSG) HOSTCC $<
	$Q$(HOSTCC) $< $(HOSTCFLAGS) $(HOSTCPPFLAGS) -o $@

# Compilation doesn't work if -j is set so force default flags
$(CC):
	$(MSG) MAKE $@
	$Qcd $(shell dirname $@) && MAKEFLAGS="" ./build.sh
