  .section .rodata

  .global romdata
romdata:
  .incbin "baserom.gba", 0x32f0
