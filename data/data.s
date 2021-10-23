	.section .rodata

	.global data
data:
	.incbin "baserom.gba", 0x32f0, 0x4BC

	.global grayBall
grayBall:
	.incbin "baserom.gba", 0x37AC, 0x200 /*.incbin "graphics/big_pokeball.4bpp"*/

	.global data2
data2:
	.incbin "baserom.gba", 0x39AC, 0x3FC654
