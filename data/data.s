	.section .rodata
	
	.global data
data:
	.incbin "baserom.gba", 0x32f0, 0x3FCD10
