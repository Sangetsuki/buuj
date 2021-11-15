	.section .rodata

	.global waiting1
waiting1:
	.ascii "W\0A\0I\0T\0I\0N\0G\0.\0.\0.\0\0\0"

	.global waiting2
waiting2:
	.ascii "W\0A\0I\0T\0I\0N\0G\0.\0.\0.\0\0\0"

	.global transferring
transferring:
	.ascii "T\0R\0A\0N\0S\0F\0E\0R\0R\0I\0N\0G\0.\0.\0.\0\0\0"

	.global checking
checking:
	.ascii "C\0h\0e\0c\0k\0i\0n\0g\0.\0.\0.\0\0\0"

	.global data2
data2:
	.incbin "baserom.gba", 0x3ACC, 0x53A28
