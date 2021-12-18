TOOLCHAIN := $(DEVKITARM)
export PATH := $(TOOLCHAIN)/bin:$(PATH)
PREFIX := arm-none-eabi-
OBJCOPY := $(PREFIX)objcopy
export AS := $(PREFIX)as

export CPP := $(PREFIX)cpp
export LD := $(PREFIX)ld

GAME_CODE   := BUUJ
MAKER_CODE  := 01
REVISION    := 0

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

BUILD_NAME := buuj

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD  := tools/agbcc/bin/old_agbcc$(EXE)

CPPFLAGS := -I tools/agbcc/include -I tools/agbcc -I include -iquote include -Wno-trigraphs
CFLAGS   := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm
ASFLAGS  := -mcpu=arm7tdmi

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
BUILD_DIR = build

C_BUILDDIR = $(BUILD_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(BUILD_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(BUILD_DIR)/$(DATA_ASM_SUBDIR)

TOOLDIRS := $(filter-out tools/agbcc tools/binutils,$(wildcard tools/*))
TOOLBASE = $(TOOLDIRS:tools/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),tools/$(tool)/$(tool)$(EXE))

#### Files/Directories ####

ROM          := $(BUILD_NAME).gba
ELF          := $(ROM:.gba=.elf)
MAP          := $(ROM:.gba=.map)
LDSCRIPT     := ldscript.txt
SYM_FILES    := sym_iwram.txt sym_ewram.txt

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

ALL_OBJS := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS)

SUBDIRS := $(sort $(dir $(ALL_OBJS)))

LIBPATH := -L../tools/agbcc/lib
LIB := $(LIBPATH) -lgcc -lc -L../libagbsyscall -lagbsyscall

GFX  := tools/gbagfx/gbagfx$(EXE)
FIX  := tools/gbafix/gbafix$(EXE)
PREPROC := tools/preproc/preproc$(EXE)

#### Recipes ####
$(shell mkdir -p $(SUBDIRS))

all: $(ROM) tools

tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) -C $(tooldir);)

include graphics.mk

$(ROM): $(ELF)
	$(OBJCOPY) -O binary  $< $@
	$(FIX) $@ -p10 --silent

$(ELF): $(ALL_OBJS) $(LDSCRIPT) libagbsyscall/libagbsyscall.a 
	cd $(BUILD_DIR) && $(LD) -T ../$(LDSCRIPT) -Map ../$(MAP) -o ../$@ $(LIB)
	$(FIX) $@ -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

$(C_BUILDDIR)/siirtc.o: $(C_SUBDIR)/siirtc.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/siirtc.i
	$(CC1) -mthumb-interwork -Wimplicit -Wparentheses -Werror -O0 -fhex-asm $(C_BUILDDIR)/siirtc.i -o $(C_BUILDDIR)/siirtc.s
	echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/siirtc.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/siirtc.s -o $@

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt | $(CC1) $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/$*.s -o $@ 

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s graphics
	$(AS) $(ASFLAGS) $< -o $@

clean: clean-tools
	rm -f $(ROM) $(ELF) $(MAP) 
	rm -r $(BUILD_DIR)/
	find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.rl' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +
	$(MAKE) clean -C libagbsyscall

clean-tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) clean -C $(tooldir);)

compare: all
	sha1sum -c $(BUILD_NAME).sha1

libagbsyscall/libagbsyscall.a:
	$(MAKE) -C libagbsyscall TOOLCHAIN=$(TOOLCHAIN)

SYMTAB := $(BUILD_NAME)_syms.dump

symtab: $(SYMTAB)

$(SYMTAB): $(ELF)
	$(DEVKITARM)/bin/arm-none-eabi-nm $< | uniq > $@

.PHONY: compare all clean clean-tools tools
