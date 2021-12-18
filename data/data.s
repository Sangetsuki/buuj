	.section .rodata

	.global gUnknown_80032f0
gUnknown_80032f0:
	.incbin "baserom.gba", 0x32f0, 0x20

	.global gUnknown_8003310
gUnknown_8003310:
	.ascii "NOW RESETTING......\0"

	.global gUnknown_8003324
gUnknown_8003324:
	.ascii "NOW WRITING......\0\0\0"

	.global gUnknown_8003338
gUnknown_8003338:
	.ascii "COMPLETE.\0\0\0"

	.global gUnknown_8003344
gUnknown_8003344:
	.incbin "baserom.gba", 0x3344, 0x188

	.global gUnknown_80034cc
gUnknown_80034cc:
	.incbin "baserom.gba", 0x34cc, 0x40

	.global gUnknown_800350c
gUnknown_800350c:
	.incbin "baserom.gba", 0x350c, 0x280

	.global pokeballsPalette
pokeballsPalette:
	.incbin "graphics/big_pokeball.gbapal"

	.global pokeballs
pokeballs:
	.incbin "graphics/pokeballs.4bpp"

