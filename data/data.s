	.section .rodata

	.global data
data:
	.incbin "baserom.gba", 0x32f0, 0x49C

	.global pokeballsPalette
pokeballsPalette:
	.incbin "graphics/big_pokeball.gbapal"

	.global pokeballs
pokeballs:
	.incbin "graphics/pokeballs.4bpp"

	.global data2
data2:
	.incbin "baserom.gba", 0x3A2C, 0x3FC5D4
