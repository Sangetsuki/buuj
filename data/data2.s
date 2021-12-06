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

	.global gUnknown_8003acc
gUnknown_8003acc:
	.incbin "baserom.gba", 0x3acc, 0x2e

	.global gUnknown_8003afa
gUnknown_8003afa:
	.incbin "baserom.gba", 0x3afa, 0x14

	.global gUnknown_8003b0e
gUnknown_8003b0e:
	.incbin "baserom.gba", 0x3b0e, 0x10

	.global gUnknown_8003b1e
gUnknown_8003b1e:
	.incbin "baserom.gba", 0x3b1e, 0x1a

	.global gUnknown_8003b38
gUnknown_8003b38:
	.incbin "baserom.gba", 0x3b38, 0x18

	.global gUnknown_8003b50
gUnknown_8003b50:
	.incbin "baserom.gba", 0x3b50, 0x20

	.global gUnknown_8003b70
gUnknown_8003b70:
	.incbin "baserom.gba", 0x3b70, 0x500

	.global gUnknown_8004070
gUnknown_8004070:
	.incbin "baserom.gba", 0x4070, 0x200

	.global gUnknown_8004270
gUnknown_8004270:
	.incbin "baserom.gba", 0x4270, 0x1ddc

	.global gUnknown_800604c
gUnknown_800604c:
	.incbin "baserom.gba", 0x604c, 0x28

	.global gUnknown_8006074
gUnknown_8006074:
	.incbin "baserom.gba", 0x6074, 0x28

	.global gUnknown_800609c
gUnknown_800609c:
	.incbin "baserom.gba", 0x609c, 0x29d8

	.global gUnknown_8008a74
gUnknown_8008a74:
	.incbin "baserom.gba", 0x8a74, 0x4ea80
