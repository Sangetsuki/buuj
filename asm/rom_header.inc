	.global RomHeaderNintendoLogo
RomHeaderNintendoLogo:
	.space 156

	.global RomHeaderGameTitle
RomHeaderGameTitle:
	.space 12

	.global RomHeaderGameCode
RomHeaderGameCode:
	.space 4

	.global RomHeaderMakerCode
RomHeaderMakerCode:
	.space 2

	.global RomHeaderMagic
RomHeaderMagic:
	.byte 0

	.global RomHeaderMainUnitCode
RomHeaderMainUnitCode:
	.byte 0

	.global RomHeaderDeviceType
RomHeaderDeviceType:
	.byte 0

	.global RomHeaderReserved1
RomHeaderReserved1:
	.space 7

	.global RomHeaderSoftwareVersion
RomHeaderSoftwareVersion:
	.byte 0

	.global RomHeaderChecksum
RomHeaderChecksum:
	.byte 0

	.global RomHeaderReserved2
RomHeaderReserved2:
	.space 2
