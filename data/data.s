  .section .rodata

  .global romdata1
romdata1:
  .incbin "baserom.gba", 0x32f0, 0x49C

  .global pokeball_pal
pokeball_pal:
  .incbin "graphics/palette.gbapal"

  .global pokeball_big
pokeball_big:
  .incbin "graphics/pokeball_2.4bpp"

  .global pokeball_small
pokeball_small:
  .incbin "graphics/pokeball_1.4bpp"

  .global romdata2
romdata2:
  .incbin "baserom.gba", 0x3A2C, 0x2620

  .global payloadStart
payloadStart:
  .4byte payload1
  .4byte payload2
  .4byte payload3
  .4byte payload4
  .4byte payload5
  .4byte payload6
  .4byte payload7
  .4byte payload8
  .4byte payload9
  .4byte payload10

  .global payloadEnd
payloadEnd:
  .4byte payload2
  .4byte payload3
  .4byte payload4
  .4byte payload5
  .4byte payload6
  .4byte payload7
  .4byte payload8
  .4byte payload9
  .4byte payload10
  .4byte payload10End

  .global romdata3
romdata3:
  .incbin "baserom.gba", 0x609C, 0x8A9C - 0x609c

  .global payload1
payload1:
  .incbin "baserom.gba", 0x8A9C, 0x080107DC - 0x08008A9C

  .global payload2
payload2:
  .incbin "baserom.gba", 0x107DC, 0x08018704 - 0x080107DC

  .global payload3
payload3:
  .incbin "baserom.gba", 0x18704, 0x080205D8 - 0x08018704

  .global payload4
payload4:
  .incbin "baserom.gba", 0x205D8, 0x0802831C - 0x080205D8

  .global payload5
payload5:
  .incbin "baserom.gba", 0x2831C, 0x08030034 - 0x0802831C

  .global payload6
payload6:
  .incbin "baserom.gba", 0x30034, 0x08037E74 - 0x08030034

  .global payload7
payload7:
  .incbin "baserom.gba", 0x37E74, 0x0803FC64 - 0x08037E74

  .global payload8
payload8:
  .incbin "baserom.gba", 0x3FC64, 0x08047AC4 - 0x0803FC64

    .global payload9
payload9:
  .incbin "baserom.gba", 0x47AC4, 0x0804F930 - 0x08047AC4

  .global payload10
payload10:
  .incbin "baserom.gba", 0x4F930, 0x080574F4 - 0x0804F930
  .global payload10End
payload10End:

  .global padding
padding:
  .incbin "baserom.gba", 0x574f4
