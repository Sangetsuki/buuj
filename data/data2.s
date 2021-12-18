	.section .rodata

	.global gUnknown_8004070
gUnknown_8004070:
	.incbin "baserom.gba", 0x4070, 0x200

	.global gUnknown_8004270
gUnknown_8004270:
	.incbin "baserom.gba", 0x4270, 0x1c00

gUnknown_8005e70:
	.string "LUGIA$"
gUnknown_8005e7c:
	.string "HO-OH$"
gUnknown_8005e88:
	.string "ENTEI$"
gUnknown_8005e94:
	.string "LATIOS$"
gUnknown_8005ea2:
	.string "LATIAS$"
gUnknown_8005eb0:
	.string "CHARIZARD$"
gUnknown_8005ec4:
	.string "ARTICUNO$"
gUnknown_8005ed6:
	.string "RAIKOU$"
gUnknown_8005ee4:
	.string "SUICUNE$"
gUnknown_8005ef4:
	.string "PIKACHU$"

	.global MultiSio
MultiSio:
	.ascii "MultiSio010918\0\0"

	.global siirtc_data
siirtc_data:
	.ascii "SIIRTC_V001\0"

	.global gUnknown_8005f20
gUnknown_8005f20:
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x03000A62 @ sLocked
	.4byte 0x080000C6 @ GPIO_PORT_DIRECTION
	.space 0x100

	.global gUnknown_800604c
gUnknown_800604c:
	.4byte gbaRom1
	.4byte gbaRom2
	.4byte gbaRom3
	.4byte gbaRom4
	.4byte gbaRom5
	.4byte gbaRom6
	.4byte gbaRom7
	.4byte gbaRom8
	.4byte gbaRom9
	.4byte gbaRom10

	.global gUnknown_8006074
gUnknown_8006074:
	.4byte gbaRom2
	.4byte gbaRom3
	.4byte gbaRom4
	.4byte gbaRom5
	.4byte gbaRom6
	.4byte gbaRom7
	.4byte gbaRom8
	.4byte gbaRom9
	.4byte gbaRom10
	.4byte gbaRom10End

	.global gUnknown_800609c
gUnknown_800609c:
	.incbin "baserom.gba", 0x609c, 0x29d8

	.global gUnknown_8008a74
gUnknown_8008a74:
	.4byte gUnknown_8005e70
	.4byte gUnknown_8005e7c
	.4byte gUnknown_8005e88
	.4byte gUnknown_8005e94
	.4byte gUnknown_8005ea2
	.4byte gUnknown_8005eb0
	.4byte gUnknown_8005ec4
	.4byte gUnknown_8005ed6
	.4byte gUnknown_8005ee4
	.4byte gUnknown_8005ef4
