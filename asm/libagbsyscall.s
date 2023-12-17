	.include "asm/macros.inc"
  .include "constants/gba_constants.inc"
  .syntax unified

  .set SOFT_RESET_DIRECT_BUF, 0x03007FFA

  thumb_func_start CpuSet
CpuSet:
	svc #0xb
	bx lr

	thumb_func_start Div
Div:
	svc #6
	bx lr

	thumb_func_start Mod
Mod:
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start MultiBoot
MultiBoot:
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom:
	ldr r3, =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r3, =SOFT_RESET_DIRECT_BUF
	movs r2, #0
	strb r2, [r3]
	subs r3, #SOFT_RESET_DIRECT_BUF - 0x3007f00
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0

	thumb_func_start VBlankIntrWait
VBlankIntrWait:
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
