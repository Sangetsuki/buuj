	.include "asm/macros.inc"
  .syntax unified

  thumb_func_start CpuSet
CpuSet: @ 0x08002710
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x08002714
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x08002718
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start MultiBoot
MultiBoot: @ 0x08002720
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x08002728
	ldr r3, _0800273C @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _08002740 @ =0x03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_0800273C: .4byte 0x04000208
_08002740: .4byte 0x03007FFA

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08002744
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
