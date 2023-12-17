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
  .incbin "baserom.gba", 0x39AC + 0x80
