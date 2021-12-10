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
	.incbin "baserom.gba", 0x4270, 0x1C94

	.global MultiSio
MultiSio:
	.ascii "MultiSio010918\0\0"

	.global siirtc_data
siirtc_data:
	.ascii "SIIRTC_V001\0"

	.global gUnknown_8005f20
gUnknown_8005f20:
	.incbin "baserom.gba", 0x5f20, 0x12C

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
	.incbin "baserom.gba", 0x8a74, 0x28

	.global gbaRom1
gbaRom1:
	.incbin "baserom.gba", 0x8a9c, 0x7d40
	
	.global gbaRom2
gbaRom2:
	.incbin "baserom.gba", 0x107dc,  0x7f28

	.global gbaRom3
gbaRom3:
	.incbin "baserom.gba", 0x18704, 0x7ed4

	.global gbaRom4
gbaRom4:
	.incbin "baserom.gba", 0x205d8, 0x7d44

	.global gbaRom5
gbaRom5:
	.incbin "baserom.gba", 0x2831C, 0x7d18

	.global gbaRom6
gbaRom6:
	.incbin "baserom.gba", 0x30034, 0x7e40

	.global gbaRom7
gbaRom7:
	.incbin "baserom.gba", 0x37e74, 0x7df0

	.global gbaRom8
gbaRom8:
	.incbin "baserom.gba", 0x3fc64, 0x7e60

	.global gbaRom9
gbaRom9:
	.incbin "baserom.gba", 0x47ac4, 0x7e6c

	.global gbaRom10
gbaRom10:
	.incbin "baserom.gba", 0x4f930, 0x7bc4
