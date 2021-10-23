$(C_BUILDDIR)/sub_800274C.o: $(C_SUBDIR)/sub_800274C.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/sub_800274C.i
	$(CC1) -mthumb-interwork -Wimplicit -Wparentheses -Werror -O0 -fhex-asm $(C_BUILDDIR)/sub_800274C.i -o $(C_BUILDDIR)/sub_800274C.s
	echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/sub_800274C.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/sub_800274C.s -o $@

$(C_BUILDDIR)/sub_8002FEC.o: $(C_SUBDIR)/sub_8002FEC.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/sub_8002FEC.i
	$(CC1) -mthumb-interwork -Wimplicit -Wparentheses -Werror -O0 -fhex-asm $(C_BUILDDIR)/sub_8002FEC.i -o $(C_BUILDDIR)/sub_8002FEC.s
	echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/sub_8002FEC.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/sub_8002FEC.s -o $@