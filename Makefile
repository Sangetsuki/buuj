TOOLCHAIN := $(DEVKITARM)
ifneq (,$(wildcard $(TOOLCHAIN)/base_tools))
include $(TOOLCHAIN)/base_tools
else
export PATH := $(TOOLCHAIN)/bin:$(PATH)
PREFIX := arm-none-eabi-
OBJCOPY := $(PREFIX)objcopy
export AS := $(PREFIX)as
endif

export CPP := $(PREFIX)cpp
export LD := $(PREFIX)ld

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

BUILD_NAME := buuj

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD  := tools/agbcc/bin/old_agbcc$(EXE)

CPPFLAGS := -I tools/agbcc/include -I tools/agbcc -iquote include -Wno-trigraphs
CFLAGS   := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm
ASFLAGS  := -mcpu=arm7tdmi


C_SUBDIR = src
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
BUILD_DIR = build

C_BUILDDIR = $(BUILD_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(BUILD_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(BUILD_DIR)/$(DATA_ASM_SUBDIR)


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

LIBPATH := -L "../tools/agbcc/lib"
LIB := $(LIBPATH) -lgcc

GFX := tools/gbagfx/gbagfx$(EXE)

#### Recipes ####
$(shell mkdir -p $(SUBDIRS))

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@

$(ELF): $(ALL_OBJS) $(LDSCRIPT)
	cd $(BUILD_DIR) && $(LD) -T ../$(LDSCRIPT) -Map ../$(MAP) $(LIB) -o ../$@

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(CC1) $(CFLAGS) $(C_BUILDDIR)/$*.i -o $(C_BUILDDIR)/$*.s
	echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/$*.s -o $@ 

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(DATA_ASM_BUILDDIR)/data.o: graphics/pokeball_1.4bpp graphics/pokeball_2.4bpp graphics/palette.gbapal

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(ROM) $(ELF) $(MAP) 
	rm -r $(BUILD_DIR)/
	find . \( -iname '*.4bpp' -o -iname '*.gbapal' \) -exec rm {} +

compare: $(ROM)
	sha1sum -c $(BUILD_NAME).sha1

%.png: ;
%.4bpp: %.png  ; $(GFX) $< $@
%.gbapal: %.pal ; $(GFX) $< $@

###################
### Symbol file ###
###################

$(SYM): $(ELF)
	$(OBJDUMP) -t $< | sort -u | grep -E "^0[2389]" | $(PERL) -p -e 's/^(\w{8}) (\w).{6} \S+\t(\w{8}) (\S+)$$/\1 \2 \3 \4/g' > $@
