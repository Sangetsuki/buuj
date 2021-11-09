$(C_BUILDDIR)/siirtc.o: $(C_SUBDIR)/siirtc.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/siirtc.i
	$(CC1) -mthumb-interwork -Wimplicit -Wparentheses -Werror -O0 -fhex-asm $(C_BUILDDIR)/siirtc.i -o $(C_BUILDDIR)/siirtc.s
	echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/siirtc.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/siirtc.s -o $@
