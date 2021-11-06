	.section .rodata

	.global data
data:
	.incbin "baserom.gba", 0x32f0, 0x49C

	.global pokeballsPalette
pokeballsPalette:
	.incbin "graphics/big_pokeball.gbapal"

	.global grayBall
grayBall:
	.incbin "graphics/big_pokeball.4bpp"

	.global data2
data2:
	.incbin "baserom.gba", 0x39AC, 0x3FC654
