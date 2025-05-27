VERSION ?= us


# Build tools
MD5SUM = md5sum


# Files
GAME_NAME = warioland4
FILENAME = $(GAME_NAME)_$(VERSION)

BUILD = build/$(VERSION)

BASEROM = baserom_$(VERSION).gba
TARGET = $(BUILD)/$(FILENAME).gba
MD5FILE = $(FILENAME).md5


# ROM header
ifeq ($(VERSION), us)
	GAME_TITLE = WARIOLANDE
	GAME_CODE = AWAE
	CPPFLAGS += -DVERSION_US
else ifeq ($(VERSION), jp)
	GAME_TITLE = WARIOLAND
	GAME_CODE = AWAJ
	CPPFLAGS += -DVERSION_JP
else
$(error Unupported version $(VERSION))
endif

MAKER_CODE = 01
GAME_REVISION = 00


.PHONY: all check clean help


all: check

check: $(TARGET)
	$(MD5SUM) -c $(MD5FILE)

clean:
	rm -rf build

help:
	@echo 'Targets:'
	@echo '  all: build and checksum the ROM'
	@echo '  check: same as `all`'
	@echo '  clean: remove build files'
	@echo '  help: show this message'
	@echo ''
	@echo 'Flags:'
	@echo '  VERSION=<version>: select the version of the ROM to build, supported versions:'
	@echo '    us'
	@echo '    jp'


$(TARGET): $(BASEROM)
	@mkdir -p $(BUILD)
	cp $< $@
