	.include "asm/macro.inc"
	.syntax unified

	thumb_func_start DivRem
DivRem: @ 0x08002718
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0
