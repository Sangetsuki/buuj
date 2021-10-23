	.section .rodata

	.global data
data:
	.incbin "baserom.gba", 0x32f0, 0x49C

	.global pokeballsPalette
pokeballsPalette:
	.incbin "baserom.gba", 0x378C, 0x20 /*.incbin "graphics/big_pokeball.gbapal"*/

	.global grayBall
grayBall:
	.incbin "baserom.gba", 0x37AC, 0x200 /*.incbin "graphics/big_pokeball.4bpp"*/

	.global data2
data2:
	.incbin "baserom.gba", 0x39AC, 0x3FC654
