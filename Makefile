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
else ifeq ($(VERSION), jp)
	GAME_TITLE = WARIOLAND
	GAME_CODE = AWAJ
else
$(error Unupported version $(VERSION))
endif

MAKER_CODE = 01
GAME_REVISION = 00


# Flags
ASFLAGS += -mcpu=arm7tdmi
CFLAGS = -O2 -mthumb-interwork -fhex-asm -fprologue-bugfix -Wall -Werror
CPPFLAGS_COMMON += -nostdinc
CPPFLAGS_ASM += $(CPPFLAGS_COMMON) -I$(ASM) -DBASEROM=\"$(BASEROM)\"
CPPFLAGS_C +=  $(CPPFLAGS_COMMON) -I$(INCLUDE) -DVERSION_$(shell echo $(VERSION) | tr a-z A-Z)


.PHONY: all check dump diff clean help

all: check

check: $(TARGET)
	$(MD5SUM) -c $(MD5FILE)

dump: $(DUMPS)

diff: $(DUMPS)
	$(DIFF) $^

clean:
	rm -rf build baserom_*.gba.dump $(GBAFIX)

help:
	@echo 'Targets:'
	@echo '  all: build and checksum the ROM'
	@echo '  check: same as `all`'
	@echo '  dump: dump the ROMs'
	@echo '  diff: dump and compare the ROMs'
	@echo '  clean: remove build files'
	@echo '  help: show this message'
	@echo ''
	@echo 'Flags:'
	@echo '  VERSION=<version>: select the version of the ROM to build, supported versions:'
	@echo '    us'
	@echo '    jp'


%.dump: %
	$(OBJDUMP) -D -bbinary -marm7tdmi -Mforce-thumb $< > $@

$(TARGET): $(ELF) $(GBAFIX)
	$(OBJCOPY) -O binary --gap-fill 0xff --pad-to 0x08800000 $< $@
	$(GBAFIX) $@ -t$(GAME_TITLE) -c$(GAME_CODE) -m$(MAKER_CODE) -r$(GAME_REVISION)

$(ELF): $(OBJS) linker.ld
	$(LD) $(LDFLAGS) -n -T linker.ld -Map=$(MAP) -L$(BUILD) -o $@

$(OBJ)/%.o: $(ASM)/%.s
	@mkdir -p $(shell dirname $@)
	$(CPP) $(CPPFLAGS_ASM) $< | $(AS) $(ASFLAGS) -o $@

$(OBJ)/%.o: $(BUILT_ASM)/%.s
	@mkdir -p $(shell dirname $@)
	$(AS) $(ASFLAGS) $< -o $@

$(BUILT_ASM)/%.s: $(SRC)/%.c $(CC)
	@mkdir -p $(shell dirname $@)
	$(CPP) $(CPPFLAGS_C) $< | $(CC) $(CFLAGS) -o $@
	@echo '    .align 2, 0' >> $@

$(TOOLS)/%: $(TOOLS)/%.c
	$(HOSTCC) $< $(HOSTCFLAGS) $(HOSTCPPFLAGS) -o $@

$(CC):
	cd $(shell dirname $@) && MAKEFLAGS="" ./build.sh
