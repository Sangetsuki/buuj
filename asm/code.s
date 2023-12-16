
  .include "asm/macros.inc"
  .syntax unified
  
	arm_func_start sub_08000000
sub_08000000: @ 0x08000000
	b _080000C0
_08000004:
	.byte 0x24, 0xFF, 0xAE, 0x51, 0x69, 0x9A, 0xA2, 0x21, 0x3D, 0x84, 0x82, 0x0A
	.byte 0x84, 0xE4, 0x09, 0xAD, 0x11, 0x24, 0x8B, 0x98, 0xC0, 0x81, 0x7F, 0x21, 0xA3, 0x52, 0xBE, 0x19
	.byte 0x93, 0x09, 0xCE, 0x20, 0x10, 0x46, 0x4A, 0x4A, 0xF8, 0x27, 0x31, 0xEC, 0x58, 0xC7, 0xE8, 0x33
	.byte 0x82, 0xE3, 0xCE, 0xBF, 0x85, 0xF4, 0xDF, 0x94, 0xCE, 0x4B, 0x09, 0xC1, 0x94, 0x56, 0x8A, 0xC0
	.byte 0x13, 0x72, 0xA7, 0xFC, 0x9F, 0x84, 0x4D, 0x73, 0xA3, 0xCA, 0x9A, 0x61, 0x58, 0x97, 0xA3, 0x27
	.byte 0xFC, 0x03, 0x98, 0x76, 0x23, 0x1D, 0xC7, 0x61, 0x03, 0x04, 0xAE, 0x56, 0xBF, 0x38, 0x84, 0x00
	.byte 0x40, 0xA7, 0x0E, 0xFD, 0xFF, 0x52, 0xFE, 0x03, 0x6F, 0x95, 0x30, 0xF1, 0x97, 0xFB, 0xC0, 0x85
	.byte 0x60, 0xD6, 0x80, 0x25, 0xA9, 0x63, 0xBE, 0x03, 0x01, 0x4E, 0x38, 0xE2, 0xF9, 0xA2, 0x34, 0xFF
	.byte 0xBB, 0x3E, 0x03, 0x44, 0x78, 0x00, 0x90, 0xCB, 0x88, 0x11, 0x3A, 0x94, 0x65, 0xC0, 0x7C, 0x63
	.byte 0x87, 0xF0, 0x3C, 0xAF, 0xD6, 0x25, 0xE4, 0x8B, 0x38, 0x0A, 0xAC, 0x72, 0x21, 0xD4, 0xF8, 0x07
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x55, 0x55, 0x4A
	.byte 0x30, 0x31, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBA, 0x00, 0x00
_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007F00
	ldr r1, _080001C8 @ =0x03007FFC
	add r0, pc, #0x18 @ =sub_080000FC
	str r0, [r1]
	ldr r1, _080001CC @ =AgbMain
	mov lr, pc
	bx r1

	arm_func_start sub_080000F0
sub_080000F0: @ 0x080000F0
	b _080000C0
	.align 2, 0
_080000F4: .4byte 0x03007F00
_080000F8: .4byte 0x03007FA0

	arm_func_start sub_080000FC
sub_080000FC: @ 0x080000FC
	mov ip, #0x4000000
	add r3, ip, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_08000118:
	bne _08000118
	ands r0, r1, #0xc0
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #1
	strhne r0, [ip, #-8]
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001B4
	add r2, r2, #4
	ands r0, r1, #0x1000
_080001B4:
	strh r0, [r3, #2]
	ldr r1, _080001D0 @ =0x03000A70
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_080001C8: .4byte 0x03007FFC
_080001CC: .4byte AgbMain
_080001D0: .4byte 0x03000A70

	arm_func_start sub_080001D4
sub_080001D4: @ 0x080001D4
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _08000210 @ =0x03001050
	add sl, fp, #0x40
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1, r2, r3, r4, r5, r6, r7}
	stm sl!, {r4, r5, r6, r7}
	stm sl!, {r0, r1, r2, r3}
	ldr r0, [fp, #4]
	str r8, [fp, #4]
	strb sb, [ip, #0x208]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08000210: .4byte 0x03001050

	arm_func_start sub_08000214
sub_08000214: @ 0x08000214
	mov ip, #0x4000000
	add ip, ip, #0x120
	ldm ip, {r0, r1}
	push {r7, r8, sb, sl, fp}
	ldr fp, _0800032C @ =0x03001050
	mov sb, #0xfe
	add sb, sb, #0xfe00
	ldrh r3, [ip, #8]
	and r3, r3, #0x40
	strb r3, [fp, #9]
	ldr sl, [fp, #0x14]
	adds r3, sl, #1
	blt _08000270
	bne _08000264
	strh sb, [ip, #0xa]
	add r8, fp, #0x28
	ldm r8, {r2, r3}
	mov r7, r2
	stm r8, {r3, r7}
	b _08000270
_08000264:
	ldr r3, [fp, #0x2c]
	ldr r2, [r3, sl, lsl #1]
	strh r2, [ip, #0xa]
_08000270:
	cmp sl, #0xb
	addlt sl, sl, #1
	strlt sl, [fp, #0x14]
	push {r0, r1, r5, r6}
	mov r6, #3
_08000284:
	add r8, fp, #0x18
	add r8, r8, r6, lsl #2
	ldr sl, [r8]
	lsl r3, r6, #1
	ldrh r5, [sp, r3]
	cmp r5, sb
	bne _080002B4
	cmp sl, #9
	ble _080002B4
	mov r0, #1
	sub sl, r0, #2
	b _080002E0
_080002B4:
	ldr r0, [r8, #0x18]
	lsl r3, sl, #1
	strh r5, [r0, r3]
	cmp sl, #9
	bne _080002E0
	ldr r1, [r8, #0x28]
	str r0, [r8, #0x28]
	str r1, [r8, #0x18]
	add r3, fp, #4
	mov r0, #1
	strb r0, [r3, r6]
_080002E0:
	cmp sl, #0xb
	addlt sl, sl, #1
	str sl, [r8]
	subs r6, r6, #1
	bge _08000284
	ldrb r0, [fp]
	cmp r0, #0
	beq _08000320
	ldr r7, _08000330 @ =0x0400010E
	mov r0, #0
	strh r0, [r7]
	ldrh r0, [ip, #8]
	orr r0, r0, #0x80
	strh r0, [ip, #8]
	mov r0, #0xc0
	strh r0, [r7]
_08000320:
	add sp, sp, #8
	pop {r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_0800032C: .4byte 0x03001050
_08000330: .4byte 0x0400010E

	thumb_func_start sub_08000334
sub_08000334: @ 0x08000334
	bx lr
	.align 2, 0

	thumb_func_start sub_08000338
sub_08000338: @ 0x08000338
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r0, _08000370 @ =0x7ED7F420
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #0x2c]
	movs r2, #6
	str r2, [r1, #0x30]
	movs r0, #1
	str r0, [r1, #0x34]
	str r0, [r1, #0x38]
	str r2, [r1, #0x3c]
	movs r0, #8
	str r0, [r1, #0x40]
	movs r0, #0x1f
	str r0, [r1, #0x44]
	movs r2, #0
	movs r1, #9
	ldr r0, _08000374 @ =0x02000028
_08000360:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _08000360
	pop {r0}
	bx r0
	.align 2, 0
_08000370: .4byte 0x7ED7F420
_08000374: .4byte 0x02000028

	thumb_func_start sub_08000378
sub_08000378: @ 0x08000378
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r1, [r0]
	ldr r0, _08000390 @ =0x7ED7F420
	cmp r1, r0
	beq _0800038A
	bl sub_08000338
_0800038A:
	pop {r0}
	bx r0
	.align 2, 0
_08000390: .4byte 0x7ED7F420

	thumb_func_start sub_08000394
sub_08000394: @ 0x08000394
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080003D8 @ =0x0300000C
	ldr r0, [r0]
	cmp r0, r6
	beq _08000456
	movs r1, #0x50
	subs r4, r6, #1
	ldr r0, _080003DC @ =0x00007FFF
	adds r3, r0, #0
	ldr r5, _080003E0 @ =0x060001DE
_080003AC:
	lsls r0, r1, #4
	adds r2, r1, #1
	subs r0, r0, r1
	movs r1, #0xef
	lsls r0, r0, #5
	adds r0, r0, r5
_080003B8:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _080003B8
	adds r1, r2, #0
	cmp r1, #0x5f
	ble _080003AC
	cmp r4, #6
	bhi _08000456
	lsls r0, r4, #2
	ldr r1, _080003E4 @ =_080003E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080003D8: .4byte 0x0300000C
_080003DC: .4byte 0x00007FFF
_080003E0: .4byte 0x060001DE
_080003E4: .4byte _080003E8
_080003E8: @ jump table
	.4byte _08000404 @ case 0
	.4byte _0800040C @ case 1
	.4byte _08000414 @ case 2
	.4byte _0800041C @ case 3
	.4byte _08000424 @ case 4
	.4byte _0800042C @ case 5
	.4byte _08000444 @ case 6
_08000404:
	ldr r0, _08000408 @ =0x08003A68
	b _0800042E
	.align 2, 0
_08000408: .4byte 0x08003A68
_0800040C:
	ldr r0, _08000410 @ =0x08003A7E
	b _0800042E
	.align 2, 0
_08000410: .4byte 0x08003A7E
_08000414:
	ldr r0, _08000418 @ =0x08003A94
	b _0800042E
	.align 2, 0
_08000418: .4byte 0x08003A94
_0800041C:
	ldr r0, _08000420 @ =0x08003AB4
	b _0800042E
	.align 2, 0
_08000420: .4byte 0x08003AB4
_08000424:
	ldr r0, _08000428 @ =0x08003ACC
	b _0800042E
	.align 2, 0
_08000428: .4byte 0x08003ACC
_0800042C:
	ldr r0, _08000440 @ =0x08003AFA
_0800042E:
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_080013B8
	b _08000456
	.align 2, 0
_08000440: .4byte 0x08003AFA
_08000444:
	ldr r0, _08000464 @ =0x08003B0E
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_080013B8
_08000456:
	ldr r0, _08000468 @ =0x0300000C
	str r6, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000464: .4byte 0x08003B0E
_08000468: .4byte 0x0300000C

	thumb_func_start sub_0800046C
sub_0800046C: @ 0x0800046C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #1
	movs r7, #0
	ldr r0, _080004A4 @ =0x03000010
	mov r8, r0
	cmp r5, #1
	blt _0800048C
_08000482:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r4, r0, #1
	cmp r5, r4
	bge _08000482
_0800048C:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08003050
	adds r4, r0, #0
	cmp r4, #0
	bne _080004A8
	movs r0, #0x30
	mov r1, r8
	strh r0, [r1]
	strh r4, [r1, #2]
	b _080004E2
	.align 2, 0
_080004A4: .4byte 0x03000010
_080004A8:
	cmp r4, #0
	ble _080004DA
	lsls r0, r7, #1
	mov r1, r8
	adds r6, r0, r1
_080004B2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08003050
	adds r0, #0x30
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080030E8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08003050
	adds r4, r0, #0
	cmp r4, #0
	bgt _080004B2
_080004DA:
	lsls r0, r7, #1
	add r0, r8
	movs r1, #0
	strh r1, [r0]
_080004E2:
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	movs r1, #0x64
	movs r2, #0x8c
	movs r3, #0x50
	bl sub_080013B8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000504
sub_08000504: @ 0x08000504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r4, #1
	movs r0, #0
	mov r8, r0
	ldr r1, _08000550 @ =0x03000010
	mov sb, r1
	cmp r5, #1
	blt _08000532
_08000528:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r4, r0, #1
	cmp r5, r4
	bge _08000528
_08000532:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08003050
	adds r4, r0, #0
	cmp r4, #0
	bne _08000554
	movs r0, #0x30
	mov r2, sb
	strh r0, [r2]
	strh r4, [r2, #2]
	movs r7, #1
	lsls r6, r6, #0x18
	mov sl, r6
	b _080005A2
	.align 2, 0
_08000550: .4byte 0x03000010
_08000554:
	movs r7, #0
	lsls r6, r6, #0x18
	mov sl, r6
	cmp r4, #0
	ble _08000598
	mov r1, r8
	lsls r0, r1, #1
	mov r2, sb
	adds r6, r0, r2
_08000566:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08003050
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	strh r0, [r6]
	adds r6, #2
	movs r0, #1
	add r8, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080030E8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08003050
	adds r4, r0, #0
	adds r7, #1
	cmp r4, #0
	bgt _08000566
_08000598:
	mov r1, r8
	lsls r0, r1, #1
	add r0, sb
	movs r1, #0
	strh r1, [r0]
_080005A2:
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldr r2, [sp, #8]
	subs r1, r2, r3
	movs r0, #0x10
	str r0, [sp]
	mov r2, sl
	lsrs r0, r2, #0x18
	str r0, [sp, #4]
	mov r0, sb
	ldr r2, [sp, #0xc]
	bl sub_080013B8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080005D0
sub_080005D0: @ 0x080005D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov sl, r1
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	movs r4, #0xa
	movs r7, #0
	ldr r0, _08000658 @ =0x03000010
	mov r8, r0
	mov r6, r8
_080005F2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08003050
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080030E8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08003050
	adds r4, r0, #0
	cmp r4, #0
	bgt _080005F2
	lsls r3, r7, #1
	mov r2, r8
	adds r1, r3, r2
	movs r0, #0
	strh r0, [r1]
	adds r3, r3, r7
	lsls r3, r3, #2
	mov r0, sl
	subs r1, r0, r3
	movs r0, #0x10
	str r0, [sp]
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, r8
	ldr r2, [sp, #8]
	bl sub_080013B8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000658: .4byte 0x03000010

	thumb_func_start sub_0800065C
sub_0800065C: @ 0x0800065C
	push {lr}
_0800065E:
	bl sub_08002744
	b _0800065E

	thumb_func_start sub_08000664
sub_08000664: @ 0x08000664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _0800071C @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000720 @ =sub_080000FC
	ldr r4, _08000724 @ =0x03000030
	ldr r2, _08000728 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0800072C @ =0x03007FFC
	str r4, [r0]
	mov r7, sp
	adds r7, #2
	ldr r1, _08000730 @ =0x03000A70
	ldr r2, _08000734 @ =sub_08000AA0
	adds r3, r1, #0
	adds r0, r3, #0
	adds r0, #0x30
_08000692:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08000692
	movs r2, #0
	ldr r0, _08000738 @ =0x04000004
	mov sb, r0
	ldr r1, _0800073C @ =0x00009F08
	adds r0, r1, #0
	mov r4, sb
	strh r0, [r4]
	ldr r1, _08000740 @ =0x04000202
	ldr r4, _08000744 @ =0x00002001
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _08000748 @ =0x04000200
	mov r8, r0
	movs r4, #1
	strh r4, [r0]
	ldr r0, _0800074C @ =0x03000F10
	str r0, [r3]
	ldr r0, _08000750 @ =sub_08000A94
	str r0, [r3, #4]
	ldr r6, _0800071C @ =0x04000208
	strh r4, [r6]
	mov r0, sp
	strh r2, [r0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	ldr r2, _08000754 @ =0x0100C000
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _08000758 @ =0x00007FFF
	adds r0, r1, #0
	strh r0, [r7]
	ldr r0, _0800075C @ =0x040000D4
	str r7, [r0]
	str r5, [r0, #4]
	ldr r1, _08000760 @ =0x8100C000
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08000764 @ =0x03000B10
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r0, _08000768 @ =0x0400000C
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0800076C @ =0x00001443
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, r8
	strh r4, [r0]
	movs r0, #8
	mov r1, sb
	strh r0, [r1]
	strh r4, [r6]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800071C: .4byte 0x04000208
_08000720: .4byte sub_080000FC
_08000724: .4byte 0x03000030
_08000728: .4byte 0x04000080
_0800072C: .4byte 0x03007FFC
_08000730: .4byte 0x03000A70
_08000734: .4byte sub_08000AA0
_08000738: .4byte 0x04000004
_0800073C: .4byte 0x00009F08
_08000740: .4byte 0x04000202
_08000744: .4byte 0x00002001
_08000748: .4byte 0x04000200
_0800074C: .4byte 0x03000F10
_08000750: .4byte sub_08000A94
_08000754: .4byte 0x0100C000
_08000758: .4byte 0x00007FFF
_0800075C: .4byte 0x040000D4
_08000760: .4byte 0x8100C000
_08000764: .4byte 0x03000B10
_08000768: .4byte 0x0400000C
_0800076C: .4byte 0x00001443

	thumb_func_start sub_08000770
sub_08000770: @ 0x08000770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r7, _080008E4 @ =0x03000B10
	mov r6, sp
	adds r6, #2
	add r0, sp, #4
	mov sl, r0
	movs r1, #6
	add r1, sp
	mov ip, r1
	movs r5, #4
	rsbs r5, r5, #0
	movs r4, #2
	adds r2, r7, #1
	movs r3, #0x7f
_08000796:
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bge _08000796
	movs r3, #0
	ldr r2, _080008E8 @ =0x0800350C
	mov sb, r2
	mov r8, sp
	str r6, [sp, #8]
	mov r5, sl
	ldr r4, _080008E4 @ =0x03000B10
_080007B6:
	lsls r1, r3, #0x12
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x40
	lsls r2, r2, #1
	add r2, sb
	ldrh r0, [r2]
	mov r6, r8
	strh r0, [r6]
	lsls r1, r1, #1
	add r1, sb
	ldrh r0, [r1]
	ldr r6, [sp, #8]
	strh r0, [r6]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r5]
	ldrh r1, [r2]
	mov r0, ip
	strh r1, [r0]
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r4, #6]
	ldrh r0, [r6]
	strh r0, [r4, #0xe]
	ldrh r0, [r5]
	strh r0, [r4, #0x16]
	strh r1, [r4, #0x1e]
	adds r4, #0x20
	adds r3, #1
	cmp r3, #0x1f
	ble _080007B6
	ldrb r0, [r7, #1]
	movs r6, #4
	rsbs r6, r6, #0
	mov sb, r6
	mov r8, sb
	mov r1, r8
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	mov r8, r1
	ldrh r1, [r7, #2]
	ldr r0, _080008EC @ =0xFFFFFE00
	ands r0, r1
	movs r1, #0xd0
	orrs r0, r1
	strh r0, [r7, #2]
	movs r0, #0x80
	strb r0, [r7]
	ldrb r0, [r7, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r0
	subs r6, #0xd
	ands r2, r6
	movs r0, #0x21
	rsbs r0, r0, #0
	mov ip, r0
	ands r2, r0
	ldrb r1, [r7, #5]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	mov sl, r1
	ands r0, r1
	strb r0, [r7, #5]
	ldrh r1, [r7, #4]
	ldr r4, _080008F0 @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r7, #4]
	movs r1, #0x3f
	ands r2, r1
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r7, #3]
	mov r2, r8
	ands r2, r1
	strb r2, [r7, #1]
	ldrb r0, [r7, #9]
	mov r6, sb
	ands r6, r0
	mov sb, r6
	ldrh r0, [r7, #0xa]
	ldr r6, _080008EC @ =0xFFFFFE00
	ands r6, r0
	movs r0, #0x14
	orrs r6, r0
	strh r6, [r7, #0xa]
	strb r0, [r7, #8]
	ldrb r0, [r7, #0xb]
	ands r3, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r3, r0
	mov r2, ip
	ands r3, r2
	ldrb r0, [r7, #0xd]
	ands r5, r0
	mov r6, sl
	ands r5, r6
	strb r5, [r7, #0xd]
	ldrh r0, [r7, #0xc]
	ands r4, r0
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r4, r0
	strh r4, [r7, #0xc]
	ands r3, r1
	movs r0, #0x40
	orrs r3, r0
	strb r3, [r7, #0xb]
	mov r6, sb
	ands r6, r1
	strb r6, [r7, #9]
	ldr r1, _080008F4 @ =0x05000200
	ldr r0, _080008F8 @ =0x0800378C
	movs r2, #0x10
	bl CpuSet
	ldr r0, _080008FC @ =0x080037AC
	ldr r1, _08000900 @ =0x06014000
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuSet
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r7, #0
	bl CpuSet
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080008E4: .4byte 0x03000B10
_080008E8: .4byte 0x0800350C
_080008EC: .4byte 0xFFFFFE00
_080008F0: .4byte 0xFFFFFC00
_080008F4: .4byte 0x05000200
_080008F8: .4byte 0x0800378C
_080008FC: .4byte 0x080037AC
_08000900: .4byte 0x06014000

	thumb_func_start sub_08000904
sub_08000904: @ 0x08000904
	push {r4, r5, r6, lr}
	ldr r5, _0800095C @ =0x03000B10
	ldr r6, _08000960 @ =0x03000028
	ldr r3, [r6]
	movs r1, #7
	ands r1, r3
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	asrs r1, r3, #3
	movs r4, #1
	ands r1, r4
	lsls r1, r1, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	asrs r1, r3, #4
	ands r1, r4
	lsls r1, r1, #5
	subs r2, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	adds r3, #1
	str r3, [r6]
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r2, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800095C: .4byte 0x03000B10
_08000960: .4byte 0x03000028

	thumb_func_start sub_08000964
sub_08000964: @ 0x08000964
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_08000904
	ldr r2, _08000984 @ =0x03000AC0
	ldrb r1, [r2, #0x1d]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08000988
	movs r0, #1
	b _08000998
	.align 2, 0
_08000984: .4byte 0x03000AC0
_08000988:
	ldrb r1, [r2, #0x1e]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080009A8
	movs r0, #2
_08000998:
	bl sub_08000394
	ldr r0, _080009A4 @ =0x03000230
	str r4, [r0]
	b _080009B6
	.align 2, 0
_080009A4: .4byte 0x03000230
_080009A8:
	movs r0, #2
	bl sub_08000394
	ldr r1, _08000A1C @ =0x03000230
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080009B6:
	bl sub_08000A64
	ldr r4, _08000A1C @ =0x03000230
	ldr r0, [r4]
	cmp r0, #0xb4
	ble _080009F4
	movs r0, #3
	bl sub_08000394
	ldr r0, [r4]
	cmp r0, #0xb4
	ble _080009F4
	ldr r3, _08000A20 @ =0x03000AC0
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _080009F4
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _080009F4
	ldr r0, _08000A24 @ =0x03000AA4
	ldr r1, [r0]
	adds r1, #0xc0
	ldr r0, _08000A28 @ =0x03000AB0
	ldr r2, [r0]
	subs r2, #0xc0
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #4
	bl sub_08002124
_080009F4:
	ldr r4, _08000A20 @ =0x03000AC0
	adds r0, r4, #0
	bl sub_08001CC4
	ldr r1, _08000A2C @ =0x03000AA8
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080021E8
	cmp r0, #0
	bne _08000A34
	ldr r0, _08000A30 @ =0x03000AAC
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08000A56
	movs r0, #0
	b _08000A58
	.align 2, 0
_08000A1C: .4byte 0x03000230
_08000A20: .4byte 0x03000AC0
_08000A24: .4byte 0x03000AA4
_08000A28: .4byte 0x03000AB0
_08000A2C: .4byte 0x03000AA8
_08000A30: .4byte 0x03000AAC
_08000A34:
	movs r0, #2
	bl sub_08000394
	lsls r1, r5, #2
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldr r0, _08000A60 @ =0x02000004
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, [r2, #0x2c]
	adds r0, #1
	str r0, [r2, #0x2c]
	adds r0, r4, #0
	bl sub_08001C88
_08000A56:
	movs r0, #1
_08000A58:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08000A60: .4byte 0x02000004

	thumb_func_start sub_08000A64
sub_08000A64: @ 0x08000A64
	push {r4, lr}
	ldr r0, _08000A84 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _08000A88 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r4, _08000A8C @ =0x03000B0C
	ldr r3, _08000A90 @ =0x03000AAC
	ldrh r2, [r3]
	adds r0, r1, #0
	bics r0, r2
	strh r0, [r4]
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000A84: .4byte 0x04000130
_08000A88: .4byte 0x000003FF
_08000A8C: .4byte 0x03000B0C
_08000A90: .4byte 0x03000AAC

	thumb_func_start sub_08000A94
sub_08000A94: @ 0x08000A94
	ldr r1, _08000A9C @ =0x03007FF8
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000A9C: .4byte 0x03007FF8

	thumb_func_start sub_08000AA0
sub_08000AA0: @ 0x08000AA0
	bx lr
	.align 2, 0

	thumb_func_start sub_08000AA4
sub_08000AA4: @ 0x08000AA4
	push {lr}
	sub sp, #8
	ldr r0, _08000ABC @ =0x08003B1E
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_080013B8
_08000ABA:
	b _08000ABA
	.align 2, 0
_08000ABC: .4byte 0x08003B1E

	thumb_func_start sub_08000AC0
sub_08000AC0: @ 0x08000AC0
	push {lr}
	sub sp, #8
	ldr r0, _08000AE0 @ =0x08003B38
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_080013B8
_08000AD6:
	bl sub_08002744
	bl sub_08000904
	b _08000AD6
	.align 2, 0
_08000AE0: .4byte 0x08003B38

	thumb_func_start sub_08000AE4
sub_08000AE4: @ 0x08000AE4
	push {r4, r5, lr}
	bl sub_08001804
	adds r4, r0, #0
	bl sub_08001820
	adds r5, r0, #0
	bl sub_0800183C
	adds r2, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r0, [r1, #0x30]
	cmp r4, r0
	blt _08000B34
	cmp r4, r0
	bne _08000B16
	ldr r0, [r1, #0x34]
	cmp r5, r0
	blt _08000B34
	cmp r5, r0
	bne _08000B16
	ldr r0, [r1, #0x38]
	cmp r2, r0
	blt _08000B34
_08000B16:
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r0, [r1, #0x3c]
	cmp r4, r0
	bgt _08000B34
	cmp r4, r0
	bne _08000B3A
	ldr r0, [r1, #0x40]
	cmp r5, r0
	bgt _08000B34
	cmp r5, r0
	bne _08000B3A
	ldr r0, [r1, #0x44]
	cmp r2, r0
	ble _08000B3A
_08000B34:
	movs r0, #1
	rsbs r0, r0, #0
	b _08000B3C
_08000B3A:
	movs r0, #0
_08000B3C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000B44
sub_08000B44: @ 0x08000B44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	ble _08000BB0
	cmp r5, #0
	bne _08000B5E
	adds r1, r4, #6
	movs r0, #4
	movs r3, #4
	bl sub_08001BD4
_08000B5E:
	cmp r5, #1
	bne _08000B6E
	adds r1, r4, #6
	movs r0, #9
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000B6E:
	cmp r5, #2
	bne _08000B7E
	adds r1, r4, #6
	movs r0, #0xc
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000B7E:
	cmp r5, #3
	bne _08000B8E
	adds r1, r4, #6
	movs r0, #0x11
	adds r2, r6, #0
	movs r3, #4
	bl sub_08001BD4
_08000B8E:
	cmp r5, #4
	bne _08000B9E
	adds r1, r4, #6
	movs r0, #0x16
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000B9E:
	cmp r5, #5
	bne _08000C10
	adds r1, r4, #6
	movs r0, #0x19
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
	b _08000C10
_08000BB0:
	cmp r5, #0
	bne _08000BC0
	movs r0, #4
	movs r1, #3
	adds r2, r6, #0
	movs r3, #4
	bl sub_08001BD4
_08000BC0:
	cmp r5, #1
	bne _08000BD0
	movs r0, #9
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000BD0:
	cmp r5, #2
	bne _08000BE0
	movs r0, #0xc
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000BE0:
	cmp r5, #3
	bne _08000BF0
	movs r0, #0xf
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000BF0:
	cmp r5, #4
	bne _08000C00
	movs r0, #0x12
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000C00:
	cmp r5, #5
	bne _08000C10
	movs r0, #0x15
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_08001BD4
_08000C10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000C18
sub_08000C18: @ 0x08000C18
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _08000C50 @ =0x03000B0C
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08000C34
	ldr r0, [r3]
	cmp r0, #0
	ble _08000C34
	subs r0, #1
	str r0, [r3]
_08000C34:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08000C48
	ldr r0, [r3]
	cmp r0, r4
	bge _08000C48
	adds r0, #1
	str r0, [r3]
_08000C48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000C50: .4byte 0x03000B0C

	thumb_func_start sub_08000C54
sub_08000C54: @ 0x08000C54
	push {lr}
	ldr r0, _08000C68 @ =0x03000B0C
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08000C6C
	movs r0, #1
	rsbs r0, r0, #0
	b _08000C7A
	.align 2, 0
_08000C68: .4byte 0x03000B0C
_08000C6C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000C78
	movs r0, #0
	b _08000C7A
_08000C78:
	movs r0, #1
_08000C7A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000C80
sub_08000C80: @ 0x08000C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #0
	str r1, [sp, #8]
	bl sub_080019B4
	movs r2, #0
	mov sl, r2
	movs r3, #0x80
	lsls r3, r3, #0x12
	mov sb, r3
_08000CA4:
	mov r1, sb
	ldr r0, [r1, #0x30]
	ldr r1, [r1, #0x34]
	mov r3, sb
	ldr r2, [r3, #0x38]
	movs r4, #7
	str r4, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r3, #4
	bl sub_08001A30
	mov r1, sb
	ldr r0, [r1, #0x3c]
	ldr r1, [r1, #0x40]
	mov r3, sb
	ldr r2, [r3, #0x44]
	str r4, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r3, #0x11
	bl sub_08001A30
	bl sub_08001804
	adds r5, r0, #0
	bl sub_08001820
	adds r4, r0, #0
	bl sub_0800183C
	adds r2, r0, #0
	movs r6, #3
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #4
	bl sub_08001A30
	bl sub_08001858
	adds r5, r0, #0
	bl sub_08001874
	adds r4, r0, #0
	bl sub_08001890
	adds r2, r0, #0
	str r6, [sp]
	mov r1, sl
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xf
	bl sub_08001B10
	bl sub_08000A64
	ldr r0, _08000D58 @ =0x03000B0C
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08000D2C
	bl sub_08000378
_08000D2C:
	ldr r0, _08000D5C @ =0x03000AAC
	ldrh r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08000D64
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08000D64
	mov r2, sl
	mov r3, sb
	str r2, [r3]
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	ldr r3, _08000D60 @ =0x08003310
	bl sub_08001C34
	b _08000EE4
	.align 2, 0
_08000D58: .4byte 0x03000B0C
_08000D5C: .4byte 0x03000AAC
_08000D60: .4byte 0x08003310
_08000D64:
	ldr r1, _08000D84 @ =0x03000B0C
	ldrh r2, [r1]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _08000D8C
	bl sub_08001C0C
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	ldr r3, _08000D88 @ =0x08003324
	bl sub_08001C34
	b _08000EE4
	.align 2, 0
_08000D84: .4byte 0x03000B0C
_08000D88: .4byte 0x08003324
_08000D8C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08000DEA
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08000DA6
	mov r1, r8
	cmp r1, #0
	ble _08000DA6
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
_08000DA6:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08000DBA
	mov r0, r8
	cmp r0, #1
	bgt _08000DBA
	movs r1, #1
	add r8, r1
_08000DBA:
	ldrh r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08000DCA
	cmp r7, #0
	ble _08000DCA
	subs r7, #1
_08000DCA:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08000DDA
	cmp r7, #4
	bgt _08000DDA
	adds r7, #1
_08000DDA:
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08000EBE
	movs r2, #1
	str r2, [sp, #8]
	b _08000ED0
_08000DEA:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08000DF6
	movs r3, #0
	str r3, [sp, #8]
_08000DF6:
	mov r0, r8
	cmp r0, #0
	ble _08000E60
	cmp r7, #0
	bne _08000E08
	ldr r0, _08000E48 @ =0x02000030
	movs r1, #0x63
	bl sub_08000C18
_08000E08:
	cmp r7, #1
	bne _08000E14
	ldr r0, _08000E4C @ =0x02000034
	movs r1, #0xc
	bl sub_08000C18
_08000E14:
	cmp r7, #2
	bne _08000E20
	ldr r0, _08000E50 @ =0x02000038
	movs r1, #0x1f
	bl sub_08000C18
_08000E20:
	cmp r7, #3
	bne _08000E2C
	ldr r0, _08000E54 @ =0x0200003C
	movs r1, #0x63
	bl sub_08000C18
_08000E2C:
	cmp r7, #4
	bne _08000E38
	ldr r0, _08000E58 @ =0x02000040
	movs r1, #0xc
	bl sub_08000C18
_08000E38:
	cmp r7, #5
	bne _08000EBE
	ldr r0, _08000E5C @ =0x02000044
	movs r1, #0x1f
	bl sub_08000C18
	b _08000EBE
	.align 2, 0
_08000E48: .4byte 0x02000030
_08000E4C: .4byte 0x02000034
_08000E50: .4byte 0x02000038
_08000E54: .4byte 0x0200003C
_08000E58: .4byte 0x02000040
_08000E5C: .4byte 0x02000044
_08000E60:
	bl sub_08000C54
	adds r4, r0, #0
	cmp r4, #0
	beq _08000EBE
	cmp r7, #0
	bne _08000E78
	bl sub_08001804
	adds r0, r0, r4
	bl sub_080018AC
_08000E78:
	cmp r7, #1
	bne _08000E86
	bl sub_08001820
	adds r0, r0, r4
	bl sub_080018D8
_08000E86:
	cmp r7, #2
	bne _08000E94
	bl sub_0800183C
	adds r0, r0, r4
	bl sub_08001904
_08000E94:
	cmp r7, #3
	bne _08000EA2
	bl sub_08001858
	adds r0, r0, r4
	bl sub_08001930
_08000EA2:
	cmp r7, #4
	bne _08000EB0
	bl sub_08001874
	adds r0, r0, r4
	bl sub_0800195C
_08000EB0:
	cmp r7, #5
	bne _08000EBE
	bl sub_08001890
	adds r0, r0, r4
	bl sub_08001988
_08000EBE:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _08000ED0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_08000B44
	b _08000EDA
_08000ED0:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #2
	bl sub_08000B44
_08000EDA:
	bl sub_08002744
	bl sub_08001C68
	b _08000CA4
_08000EE4:
	bl sub_08001C68
	ldr r1, _08000F48 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000F4C @ =sub_080000FC
	ldr r4, _08000F50 @ =0x03000030
	ldr r2, _08000F54 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08000F58 @ =0x03007FFC
	str r4, [r0]
	ldr r1, _08000F5C @ =0x03000A70
	ldr r2, _08000F60 @ =sub_08000AA0
	adds r0, r1, #0
	adds r0, #0x30
_08000F06:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08000F06
	ldr r1, _08000F64 @ =0x04000004
	ldr r2, _08000F68 @ =0x00009F08
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08000F6C @ =0x04000202
	ldr r3, _08000F70 @ =0x00002001
	adds r1, r3, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r1, _08000F48 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	bl sub_08000334
	bl sub_08002744
	bl sub_08001C0C
	ldr r3, _08000F74 @ =0x08003338
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	bl sub_08001C34
	bl sub_08001C68
_08000F44:
	b _08000F44
	.align 2, 0
_08000F48: .4byte 0x04000208
_08000F4C: .4byte sub_080000FC
_08000F50: .4byte 0x03000030
_08000F54: .4byte 0x04000080
_08000F58: .4byte 0x03007FFC
_08000F5C: .4byte 0x03000A70
_08000F60: .4byte sub_08000AA0
_08000F64: .4byte 0x04000004
_08000F68: .4byte 0x00009F08
_08000F6C: .4byte 0x04000202
_08000F70: .4byte 0x00002001
_08000F74: .4byte 0x08003338

	thumb_func_start sub_08000F78
sub_08000F78: @ 0x08000F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	mov sb, r5
	ldr r0, _08000FD0 @ =0x08008A74
	mov sl, r0
	mov r8, r5
_08000F8C:
	movs r4, #0
	mov r7, r8
	lsls r0, r5, #2
	mov r1, sl
	adds r6, r0, r1
_08000F96:
	ldm r6!, {r0}
	movs r1, #0x5a
	muls r1, r4, r1
	adds r1, #0x2a
	adds r2, r7, #0
	adds r2, #0x28
	movs r3, #0
	bl sub_080014A4
	adds r5, #1
	cmp r5, #9
	bgt _08000FC2
	adds r4, #1
	cmp r4, #1
	ble _08000F96
	movs r0, #0x14
	add r8, r0
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #9
	ble _08000F8C
_08000FC2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000FD0: .4byte 0x08008A74

	thumb_func_start sub_08000FD4
sub_08000FD4: @ 0x08000FD4
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r5, #0
	ldr r0, _080010AC @ =0x08003B50
	movs r1, #0xa
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0xdc
	bl sub_080013B8
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r0, [r0, #0x2c]
	movs r1, #0xc8
	movs r2, #0x94
	movs r3, #0
	bl sub_08000504
	bl sub_08000F78
	ldr r6, _080010B0 @ =0x03000B10
_08001002:
	adds r4, r5, #0
	bl sub_08000A64
	ldr r0, _080010B4 @ =0x03000B0C
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001028
	subs r4, r5, #2
	cmp r4, #0
	bge _08001028
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r5, r0
	adds r4, r0, #0
	adds r4, #8
_08001028:
	ldr r2, _080010B4 @ =0x03000B0C
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08001044
	adds r4, #2
	cmp r4, #9
	ble _08001044
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r4, r4, r0
_08001044:
	ldrh r3, [r2]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _08001064
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r4, #1
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r2, r2, r1
	adds r4, r0, r2
_08001064:
	cmp r4, #9
	bhi _0800106A
	adds r5, r4, #0
_0800106A:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080010C0
	lsrs r3, r5, #0x1f
	adds r3, r5, r3
	asrs r3, r3, #1
	lsls r0, r3, #1
	subs r0, r5, r0
	movs r1, #0x5a
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, #0x1a
	ldr r1, _080010B8 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r6, #0xa]
	ldr r4, _080010BC @ =0xFFFFFE00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r6, #0xa]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, #0x27
	strb r0, [r6, #8]
	bl sub_08002744
	bl sub_08000904
	b _08001002
	.align 2, 0
_080010AC: .4byte 0x08003B50
_080010B0: .4byte 0x03000B10
_080010B4: .4byte 0x03000B0C
_080010B8: .4byte 0x000001FF
_080010BC: .4byte 0xFFFFFE00
_080010C0:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start AgbMain
AgbMain: @ 0x080010CC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_080015DC
	bl sub_08000664
	bl sub_08000770
	ldr r0, _08001194 @ =0x03000234
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001198 @ =0x03000230
	str r1, [r0]
	bl sub_08000378
	bl sub_08000A64
	ldr r0, _0800119C @ =0x03000AAC
	ldrh r2, [r0]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08001102
	bl sub_08000C80
_08001102:
	bl sub_08000FD4
	adds r7, r0, #0
	movs r1, #0
	ldr r5, _080011A0 @ =0x08008A74
	lsls r6, r7, #2
	ldr r0, _080011A4 @ =0x00007FFF
	adds r3, r0, #0
	ldr r4, _080011A8 @ =0x060001DE
_08001114:
	lsls r0, r1, #4
	adds r2, r1, #1
	subs r0, r0, r1
	movs r1, #0xef
	lsls r0, r0, #5
	adds r0, r0, r4
_08001120:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08001120
	adds r1, r2, #0
	cmp r1, #0x9f
	ble _08001114
	adds r0, r6, r5
	ldr r0, [r0]
	movs r1, #0x10
	str r1, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r1, #0x3c
	movs r2, #0xa
	movs r3, #0x3c
	bl sub_080013B8
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldr r1, _080011AC @ =0x02000004
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0xc8
	movs r2, #0x8a
	movs r3, #0
	bl sub_08000504
	ldr r0, [r4, #0x2c]
	movs r1, #0xc8
	movs r2, #0x94
	movs r3, #0
	bl sub_08000504
	ldr r0, _080011B0 @ =0x03000028
	str r5, [r0]
	ldr r2, _080011B4 @ =0x03000AA4
	ldr r0, _080011B8 @ =0x0800604C
	adds r0, r6, r0
	ldr r1, [r0]
	str r1, [r2]
	ldr r2, _080011BC @ =0x03000AB0
	ldr r0, _080011C0 @ =0x08006074
	adds r0, r6, r0
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, _080011C4 @ =0x03000AC0
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x4b
	strb r5, [r1]
	bl sub_08001C88
	movs r4, #0x84
	lsls r4, r4, #1
	b _080011E8
	.align 2, 0
_08001194: .4byte 0x03000234
_08001198: .4byte 0x03000230
_0800119C: .4byte 0x03000AAC
_080011A0: .4byte 0x08008A74
_080011A4: .4byte 0x00007FFF
_080011A8: .4byte 0x060001DE
_080011AC: .4byte 0x02000004
_080011B0: .4byte 0x03000028
_080011B4: .4byte 0x03000AA4
_080011B8: .4byte 0x0800604C
_080011BC: .4byte 0x03000AB0
_080011C0: .4byte 0x08006074
_080011C4: .4byte 0x03000AC0
_080011C8:
	ldr r0, _080011E4 @ =0x03000AAC
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, r4
	bne _080011E8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080011E8
	bl sub_08000338
	b _080011F6
	.align 2, 0
_080011E4: .4byte 0x03000AAC
_080011E8:
	bl sub_08002744
	adds r0, r7, #0
	bl sub_08000964
	cmp r0, #0
	beq _080011C8
_080011F6:
	ldr r1, _08001248 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800124C @ =sub_080000FC
	ldr r4, _08001250 @ =0x03000030
	ldr r2, _08001254 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08001258 @ =0x03007FFC
	str r4, [r0]
	ldr r1, _0800125C @ =0x03000A70
	ldr r2, _08001260 @ =sub_08000AA0
	adds r0, r1, #0
	adds r0, #0x30
_08001214:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08001214
	ldr r1, _08001264 @ =0x04000004
	ldr r2, _08001268 @ =0x00009F08
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800126C @ =0x04000202
	ldr r2, _08001270 @ =0x00002001
	adds r1, r2, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r1, _08001248 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	bl sub_08000334
	movs r0, #0xfe
	bl sub_08002728
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001248: .4byte 0x04000208
_0800124C: .4byte sub_080000FC
_08001250: .4byte 0x03000030
_08001254: .4byte 0x04000080
_08001258: .4byte 0x03007FFC
_0800125C: .4byte 0x03000A70
_08001260: .4byte sub_08000AA0
_08001264: .4byte 0x04000004
_08001268: .4byte 0x00009F08
_0800126C: .4byte 0x04000202
_08001270: .4byte 0x00002001

	thumb_func_start sub_08001274
sub_08001274: @ 0x08001274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _08001330 @ =0x0800609C
	movs r0, #0x1a
	adds r2, r3, #0
	muls r2, r0, r2
	adds r0, r2, r1
	ldrb r7, [r0]
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	adds r1, #2
	adds r2, r2, r1
	str r2, [sp, #0xc]
	movs r1, #0
	subs r0, r0, r7
	str r0, [sp, #0x10]
	rsbs r3, r7, #0
	mov sl, r3
_080012B2:
	movs r3, #0
	lsls r6, r1, #1
	mov ip, r6
	adds r0, r1, #1
	mov sb, r0
	ldr r6, [sp, #4]
	adds r1, r1, r6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	str r0, [sp, #0x14]
_080012C8:
	mov r1, ip
	adds r0, r1, r3
	ldr r6, [sp, #0xc]
	adds r0, r6, r0
	ldrb r1, [r0]
	movs r2, #0
	adds r5, r3, #1
	lsls r4, r3, #3
	ldr r3, [sp]
	adds r0, r3, r4
	add r0, sl
	ldr r6, [sp, #0x14]
	adds r0, r0, r6
	lsls r0, r0, #1
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r3, r0, r6
_080012EA:
	adds r0, r4, r2
	cmp r0, r7
	blt _08001304
	cmp r0, r8
	bge _08001304
	adds r0, r1, #0
	movs r6, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08001304
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r3]
_08001304:
	lsls r0, r1, #0x19
	lsrs r1, r0, #0x18
	adds r3, #2
	adds r2, #1
	cmp r2, #7
	ble _080012EA
	adds r3, r5, #0
	cmp r3, #1
	ble _080012C8
	mov r1, sb
	cmp r1, #0xb
	ble _080012B2
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001330: .4byte 0x0800609C

	thumb_func_start sub_08001334
sub_08001334: @ 0x08001334
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800134C @ =0x0800609C
	movs r1, #0x1a
	muls r0, r1, r0
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_0800134C: .4byte 0x0800609C

	thumb_func_start sub_08001350
sub_08001350: @ 0x08001350
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _080013A0 @ =0x080034CC
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r4, _080013A4 @ =0x08003344
	cmp r2, #0x30
	bgt _08001380
	lsls r1, r2, #3
	adds r0, r1, r4
	ldr r0, [r0]
	cmp r3, r0
	blt _08001380
	adds r1, r1, r4
_08001372:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x30
	bgt _08001380
	ldr r0, [r1]
	cmp r3, r0
	bge _08001372
_08001380:
	subs r2, #1
	lsls r0, r2, #3
	adds r0, r0, r4
	ldr r1, [r0]
	subs r1, r3, r1
	lsls r0, r2, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, _080013A8 @ =0x0000019B
	cmp r1, r0
	bhi _080013AC
	adds r0, r1, #0
	b _080013B0
	.align 2, 0
_080013A0: .4byte 0x080034CC
_080013A4: .4byte 0x08003344
_080013A8: .4byte 0x0000019B
_080013AC:
	movs r0, #1
	rsbs r0, r0, #0
_080013B0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080013B8
sub_080013B8: @ 0x080013B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r6, #0
	mov r4, sb
	movs r3, #0
	movs r2, #0
	b _0800141C
_080013DE:
	cmp r0, #0xa
	bne _080013EE
	cmp r3, r6
	ble _080013E8
	adds r6, r3, #0
_080013E8:
	movs r3, #0
	adds r2, #0xb
	b _0800141A
_080013EE:
	ldrh r0, [r4]
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_08001350
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001334
	adds r1, r0, #0
	ldr r3, [sp, #4]
	adds r0, r3, r1
	ldr r2, [sp]
	cmp r0, r8
	ble _08001416
	cmp r3, r6
	ble _08001412
	adds r6, r3, #0
_08001412:
	movs r3, #0
	adds r2, #0xb
_08001416:
	adds r0, r3, #1
	adds r3, r0, r1
_0800141A:
	adds r4, #2
_0800141C:
	ldrh r0, [r4]
	cmp r0, #0
	bne _080013DE
	cmp r3, r6
	ble _08001428
	adds r6, r3, #0
_08001428:
	adds r2, #0xa
	mov r4, sb
	adds r0, r5, #0
	add r0, r8
	mov sb, r0
	mov r1, r8
	subs r0, r1, r6
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r6, r5, r0
	ldr r0, [sp, #0x28]
	subs r0, r0, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r7, r7, r0
	adds r5, r6, #0
	b _0800148C
_0800144E:
	cmp r0, #0xa
	bne _08001458
	adds r5, r6, #0
	adds r7, #0xb
	b _0800148A
_08001458:
	ldrh r0, [r4]
	bl sub_08001350
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001334
	adds r0, r5, r0
	cmp r0, sb
	ble _08001470
	adds r5, r6, #0
	adds r7, #0xb
_08001470:
	ldrh r0, [r4]
	bl sub_08001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	bl sub_08001274
	adds r1, r5, #1
	adds r5, r1, r0
_0800148A:
	adds r4, #2
_0800148C:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0800144E
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080014A4
sub_080014A4: @ 0x080014A4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	adds r4, r0, #0
	b _080014CE
_080014B2:
	ldrh r0, [r4]
	bl sub_08001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08001274
	adds r1, r5, #1
	adds r5, r1, r0
	adds r4, #2
_080014CE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _080014B2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080014DC
sub_080014DC: @ 0x080014DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r5, r1, #0
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r1, sl
	movs r4, #0
	cmp r1, #0
	beq _0800150A
_080014FA:
	adds r4, #1
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_080031B8
	adds r1, r0, #0
	cmp r1, #0
	bne _080014FA
_0800150A:
	cmp r4, #0
	bne _0800152A
	movs r0, #0x30
	bl sub_08001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_08001274
	adds r2, r0, #0
	adds r1, r5, #1
	adds r5, r1, r2
_0800152A:
	subs r2, r4, #1
	cmp r2, #0
	blt _0800157A
_08001530:
	mov r1, sl
	adds r6, r5, #1
	subs r7, r2, #1
	cmp r2, #0
	ble _0800154C
	adds r4, r2, #0
_0800153C:
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_080031B8
	adds r1, r0, #0
	subs r4, #1
	cmp r4, #0
	bne _0800153C
_0800154C:
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_08003230
	adds r1, r0, #0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_08001274
	adds r1, r0, #0
	adds r5, r6, r1
	adds r2, r7, #0
	cmp r2, #0
	bge _08001530
_0800157A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001588
sub_08001588: @ 0x08001588
	ldr r2, _08001598 @ =0x03000256
	ldr r1, _0800159C @ =0x04000208
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08001598: .4byte 0x03000256
_0800159C: .4byte 0x04000208

	thumb_func_start sub_080015A0
sub_080015A0: @ 0x080015A0
	ldr r0, _080015AC @ =0x04000208
	ldr r1, _080015B0 @ =0x03000256
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080015AC: .4byte 0x04000208
_080015B0: .4byte 0x03000256

	thumb_func_start sub_080015B4
sub_080015B4: @ 0x080015B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x9f
	bhi _080015C6
	movs r3, #0xf
	ands r3, r2
	cmp r3, #9
	bls _080015CA
_080015C6:
	movs r0, #0xff
	b _080015D8
_080015CA:
	lsrs r1, r0, #0x1c
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
_080015D8:
	pop {r1}
	bx r1

	thumb_func_start sub_080015DC
sub_080015DC: @ 0x080015DC
	push {r4, r5, lr}
	ldr r5, _08001608 @ =0x03000240
	movs r0, #0
	strh r0, [r5]
	bl sub_08001588
	bl sub_0800274C
	bl sub_0800277C
	ldr r4, _0800160C @ =0x03000254
	strb r0, [r4]
	bl sub_080015A0
	ldrb r4, [r4]
	movs r0, #0xf
	ands r0, r4
	cmp r0, #1
	beq _08001610
	movs r0, #1
	b _08001632
	.align 2, 0
_08001608: .4byte 0x03000240
_0800160C: .4byte 0x03000254
_08001610:
	movs r0, #0xf0
	ands r0, r4
	cmp r0, #0
	beq _0800161A
	movs r0, #2
_0800161A:
	strh r0, [r5]
	ldr r4, _0800163C @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldr r5, _08001640 @ =0x03000240
	ldrh r0, [r5]
	cmp r0, #0
	bne _08001634
	adds r0, r4, #0
	bl sub_080016DC
_08001632:
	strh r0, [r5]
_08001634:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800163C: .4byte 0x03000248
_08001640: .4byte 0x03000240

	thumb_func_start sub_08001644
sub_08001644: @ 0x08001644
	ldr r0, _0800164C @ =0x03000240
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0800164C: .4byte 0x03000240

	thumb_func_start sub_08001650
sub_08001650: @ 0x08001650
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0800166C @ =0x03000240
	ldrh r1, [r0]
	movs r0, #0xff
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08001674
	adds r1, r2, #0
	ldr r0, _08001670 @ =0x08003A2C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	b _0800167A
	.align 2, 0
_0800166C: .4byte 0x03000240
_08001670: .4byte 0x08003A2C
_08001674:
	adds r0, r2, #0
	bl sub_080016B0
_0800167A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08001680
sub_08001680: @ 0x08001680
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001588
	adds r0, r4, #0
	bl sub_08002A4C
	bl sub_080015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08001698
sub_08001698: @ 0x08001698
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001588
	adds r0, r4, #0
	bl sub_080028D8
	bl sub_080015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080016B0
sub_080016B0: @ 0x080016B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001698
	adds r0, r4, #0
	bl sub_08001680
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080016C4
sub_080016C4: @ 0x080016C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001588
	adds r0, r4, #0
	bl sub_08002AFC
	bl sub_080015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080016DC
sub_080016DC: @ 0x080016DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r1, [r6, #7]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	asrs r4, r0, #0x1f
	movs r0, #0x20
	ands r4, r0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080016FE
	movs r0, #0x10
	orrs r4, r0
_080016FE:
	ldrb r0, [r6]
	bl sub_080015B4
	cmp r0, #0xff
	bne _08001710
	movs r0, #0x40
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08001710:
	ldrb r0, [r6, #1]
	bl sub_080015B4
	adds r5, r0, #0
	cmp r5, #0xff
	beq _08001724
	cmp r5, #0
	beq _08001724
	cmp r5, #0xc
	ble _0800172C
_08001724:
	movs r0, #0x80
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_0800172C:
	ldrb r0, [r6, #2]
	bl sub_080015B4
	adds r2, r0, #0
	cmp r2, #0xff
	bne _08001744
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08001744:
	cmp r5, #2
	bne _08001754
	ldr r0, _08001750 @ =0x08003A38
	ldr r0, [r0, #4]
	adds r0, #1
	b _0800175E
	.align 2, 0
_08001750: .4byte 0x08003A38
_08001754:
	ldr r0, _080017C0 @ =0x08003A38
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0800175E:
	cmp r2, r0
	ble _0800176E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_0800176E:
	ldrb r0, [r6, #4]
	bl sub_080015B4
	adds r2, r0, #0
	cmp r2, #0x18
	ble _08001786
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08001786:
	ldrb r0, [r6, #5]
	bl sub_080015B4
	adds r2, r0, #0
	cmp r2, #0x3c
	ble _0800179E
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_0800179E:
	ldrb r0, [r6, #6]
	bl sub_080015B4
	adds r2, r0, #0
	cmp r2, #0x3c
	ble _080017B6
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_080017B6:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080017C0: .4byte 0x08003A38

	thumb_func_start sub_080017C4
sub_080017C4: @ 0x080017C4
	push {lr}
	bl sub_08001588
	bl sub_08002854
	bl sub_080015A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080017D8
sub_080017D8: @ 0x080017D8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x63
	bhi _080017FC
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r0, r5, #0
	movs r1, #0xa
	bl Mod
	orrs r4, r0
	adds r0, r4, #0
	b _080017FE
_080017FC:
	movs r0, #0xff
_080017FE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08001804
sub_08001804: @ 0x08001804
	push {r4, lr}
	ldr r4, _0800181C @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800181C: .4byte 0x03000248

	thumb_func_start sub_08001820
sub_08001820: @ 0x08001820
	push {r4, lr}
	ldr r4, _08001838 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4, #1]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001838: .4byte 0x03000248

	thumb_func_start sub_0800183C
sub_0800183C: @ 0x0800183C
	push {r4, lr}
	ldr r4, _08001854 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4, #2]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001854: .4byte 0x03000248

	thumb_func_start sub_08001858
sub_08001858: @ 0x08001858
	push {r4, lr}
	ldr r4, _08001870 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4, #4]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001870: .4byte 0x03000248

	thumb_func_start sub_08001874
sub_08001874: @ 0x08001874
	push {r4, lr}
	ldr r4, _0800188C @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4, #5]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800188C: .4byte 0x03000248

	thumb_func_start sub_08001890
sub_08001890: @ 0x08001890
	push {r4, lr}
	ldr r4, _080018A8 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	ldrb r0, [r4, #6]
	bl sub_080015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080018A8: .4byte 0x03000248

	thumb_func_start sub_080018AC
sub_080018AC: @ 0x080018AC
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	blt _080018CC
	ldr r4, _080018D4 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_080016C4
_080018CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080018D4: .4byte 0x03000248

	thumb_func_start sub_080018D8
sub_080018D8: @ 0x080018D8
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0xb
	bhi _080018FA
	ldr r4, _08001900 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_080016C4
_080018FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001900: .4byte 0x03000248

	thumb_func_start sub_08001904
sub_08001904: @ 0x08001904
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08001926
	ldr r4, _0800192C @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4, #2]
	adds r0, r4, #0
	bl sub_080016C4
_08001926:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800192C: .4byte 0x03000248

	thumb_func_start sub_08001930
sub_08001930: @ 0x08001930
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x18
	bhi _08001950
	ldr r4, _08001958 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl sub_080016C4
_08001950:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001958: .4byte 0x03000248

	thumb_func_start sub_0800195C
sub_0800195C: @ 0x0800195C
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _0800197C
	ldr r4, _08001984 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_080016C4
_0800197C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001984: .4byte 0x03000248

	thumb_func_start sub_08001988
sub_08001988: @ 0x08001988
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _080019A8
	ldr r4, _080019B0 @ =0x03000248
	adds r0, r4, #0
	bl sub_080016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080017D8
	strb r0, [r4, #6]
	adds r0, r4, #0
	bl sub_080016C4
_080019A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080019B0: .4byte 0x03000248

	thumb_func_start sub_080019B4
sub_080019B4: @ 0x080019B4
	ldr r0, _08001A04 @ =0x040000D4
	ldr r1, _08001A08 @ =0x08004270
	str r1, [r0]
	ldr r1, _08001A0C @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _08001A10 @ =0x84000700
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001A14 @ =0x08004070
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08001A18 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001A1C @ =0x08003B70
	str r1, [r0]
	ldr r2, _08001A20 @ =0x03000258
	str r2, [r0, #4]
	ldr r1, _08001A24 @ =0x84000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08001A28 @ =0x84000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08001A2C @ =0x04000008
	movs r0, #8
	strh r0, [r1]
	subs r1, #8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08001A04: .4byte 0x040000D4
_08001A08: .4byte 0x08004270
_08001A0C: .4byte 0x06008000
_08001A10: .4byte 0x84000700
_08001A14: .4byte 0x08004070
_08001A18: .4byte 0x84000080
_08001A1C: .4byte 0x08003B70
_08001A20: .4byte 0x03000258
_08001A24: .4byte 0x84000140
_08001A28: .4byte 0x84000200
_08001A2C: .4byte 0x04000008

	thumb_func_start sub_08001A30
sub_08001A30: @ 0x08001A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r7, r2, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, _08001B0C @ =0x03000258
	mov r8, r0
	lsls r5, r5, #5
	adds r5, r5, r3
	lsls r1, r5, #1
	add r1, r8
	lsls r6, r6, #0xc
	movs r2, #0x32
	adds r0, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, r5, #1
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0x30
	adds r0, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r4, r5, #2
	lsls r4, r4, #1
	add r4, r8
	mov r0, sb
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #3
	lsls r4, r4, #1
	add r4, r8
	mov r0, sb
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r0, r5, #4
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0x2f
	mov sb, r6
	mov r2, sb
	orrs r2, r1
	mov sb, r2
	strh r2, [r0]
	adds r4, r5, #5
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #6
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r0, r5, #7
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	adds r4, r5, #0
	adds r4, #8
	lsls r4, r4, #1
	add r4, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r5, #9
	lsls r5, r5, #1
	add r5, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r6, r0
	strh r6, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001B0C: .4byte 0x03000258

	thumb_func_start sub_08001B10
sub_08001B10: @ 0x08001B10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r7, r2, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, _08001BD0 @ =0x03000258
	mov r8, r0
	lsls r5, r5, #5
	adds r5, r5, r3
	lsls r4, r5, #1
	add r4, r8
	lsls r6, r6, #0xc
	mov r0, sb
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #1
	lsls r4, r4, #1
	add r4, r8
	mov r0, sb
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r0, r5, #2
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0x3a
	mov sb, r6
	mov r2, sb
	orrs r2, r1
	mov sb, r2
	strh r2, [r0]
	adds r4, r5, #3
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #4
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r0, r5, #5
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	adds r4, r5, #6
	lsls r4, r4, #1
	add r4, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08003050
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r5, #7
	lsls r5, r5, #1
	add r5, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080030E8
	adds r0, #0x30
	orrs r6, r0
	strh r6, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001BD0: .4byte 0x03000258

	thumb_func_start sub_08001BD4
sub_08001BD4: @ 0x08001BD4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	ble _08001BFE
	ldr r2, _08001C04 @ =0x03000258
	ldr r6, _08001C08 @ =0x00000FFF
	lsls r1, r0, #1
	lsls r0, r4, #6
	adds r0, r0, r2
	adds r2, r1, r0
	lsls r4, r5, #0xc
_08001BEC:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _08001BEC
_08001BFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001C04: .4byte 0x03000258
_08001C08: .4byte 0x00000FFF

	thumb_func_start sub_08001C0C
sub_08001C0C: @ 0x08001C0C
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08001C28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08001C2C @ =0x03000258
	str r0, [r1, #4]
	ldr r0, _08001C30 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08001C28: .4byte 0x040000D4
_08001C2C: .4byte 0x03000258
_08001C30: .4byte 0x85000200

	thumb_func_start sub_08001C34
sub_08001C34: @ 0x08001C34
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r1, r2, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08001C5C
	ldr r2, _08001C64 @ =0x03000258
	lsls r4, r1, #0xc
	lsls r1, r6, #1
	lsls r0, r5, #6
	adds r0, r0, r2
	adds r1, r1, r0
_08001C4C:
	ldrb r0, [r3]
	orrs r0, r4
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	ldrb r0, [r3]
	cmp r0, #0
	bne _08001C4C
_08001C5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001C64: .4byte 0x03000258

	thumb_func_start sub_08001C68
sub_08001C68: @ 0x08001C68
	ldr r1, _08001C7C @ =0x040000D4
	ldr r0, _08001C80 @ =0x03000258
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001C84 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08001C7C: .4byte 0x040000D4
_08001C80: .4byte 0x03000258
_08001C84: .4byte 0x84000200

	thumb_func_start sub_08001C88
sub_08001C88: @ 0x08001C88
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08001CB4 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08001CB8 @ =0x04000128
	ldr r3, _08001CBC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08001CC0 @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_08001CB4: .4byte 0x04000134
_08001CB8: .4byte 0x04000128
_08001CBC: .4byte 0x00002003
_08001CC0: .4byte 0x0400012A

	thumb_func_start sub_08001CC4
sub_08001CC4: @ 0x08001CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_080021E8
	cmp r0, #0
	beq _08001CDA
	b _080020A2
_08001CDA:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0xf
	bls _08001CEE
	subs r0, r1, #1
	mov r1, sl
	strb r0, [r1]
	b _080020A2
_08001CEE:
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _08001D18
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08001D14 @ =0x04000128
	ldrh r0, [r0]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _08001D18
	adds r0, r7, #0
	bl sub_08001C88
	movs r0, #8
	eors r0, r5
	b _080020A4
	.align 2, 0
_08001D14: .4byte 0x04000128
_08001D18:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _08001D6A
	adds r0, r7, #0
	bl sub_080021FC
	adds r5, r0, #0
	cmp r5, #0
	beq _08001D2C
	b _080020A4
_08001D2C:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _08001D48
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _08001D48
	adds r0, r7, #0
	bl sub_080021E8
	cmp r0, #0
	bne _08001D48
	b _08002092
_08001D48:
	adds r0, r7, #0
	bl sub_080021E8
	cmp r0, #0
	beq _08001D54
	b _080020A2
_08001D54:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _08001D64
	adds r0, r7, #0
	bl sub_08001C88
	movs r0, #0x71
	b _080020A4
_08001D64:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _080020A2
_08001D6A:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _08001D72
	b _08001EA8
_08001D72:
	cmp r0, #2
	bgt _08001D80
	cmp r0, #0
	beq _08001D8E
	cmp r0, #1
	beq _08001E4A
	b _08001FE0
_08001D80:
	cmp r0, #0xd0
	bne _08001D86
	b _08001EF4
_08001D86:
	cmp r0, #0xd1
	bne _08001D8C
	b _08001F8E
_08001D8C:
	b _08001FE0
_08001D8E:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _08001DD4 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _08001DD8 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _08001DB6
	adds r4, r1, #0
	ldr r1, _08001DDC @ =0x04000126
_08001DA6:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _08001DB6
	ldrh r0, [r1]
	cmp r0, r4
	beq _08001DA6
_08001DB6:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _08001DD4 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001DE4
	ldr r0, _08001DE0 @ =0x00007208
	b _08001E0A
	.align 2, 0
_08001DD4: .4byte 0x04000120
_08001DD8: .4byte 0x0000FFFF
_08001DDC: .4byte 0x04000126
_08001DE0: .4byte 0x00007208
_08001DE4:
	subs r5, #1
	cmp r5, #0
	beq _08001E10
	lsls r0, r5, #1
	ldr r1, _08001E38 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001DE4
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_08001E0A:
	cmp r4, r0
	beq _08001DE4
	movs r3, #0
_08001E10:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _08001E20
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
_08001E20:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08001E3C
	ldrb r0, [r7, #0x1d]
	ldrb r2, [r7, #0x1e]
	cmp r0, r2
	beq _08001E42
	adds r0, r7, #0
	bl sub_08002100
	b _08001E4A
	.align 2, 0
_08001E38: .4byte 0x04000120
_08001E3C:
	subs r0, #1
	mov r1, sl
	strb r0, [r1]
_08001E42:
	ldrb r1, [r7, #0x1e]
	movs r2, #0xc4
	lsls r2, r2, #7
	b _08001F4A
_08001E4A:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _08001EA0 @ =0x03000A58
_08001E58:
	lsls r0, r5, #1
	ldr r2, _08001EA4 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _08001E82
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _08001E82
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_08001E82:
	adds r5, r2, #0
	cmp r5, #0
	bne _08001E58
	ldrb r0, [r7, #0x1d]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _08001E42
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r2, ip
	ldrb r1, [r2]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _08001F4A
	.align 2, 0
_08001EA0: .4byte 0x03000A58
_08001EA4: .4byte 0x04000120
_08001EA8:
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	mov r4, ip
	movs r6, #1
	ldr r1, _08001EEC @ =0x03000A58
	mov sb, r1
	ldr r2, _08001EF0 @ =0x04000120
	mov r8, r2
_08001EBC:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _08001EE2
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _08001EE2
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_08001EE2:
	adds r5, r2, #0
	cmp r5, #0
	bne _08001EBC
	b _08002048
	.align 2, 0
_08001EEC: .4byte 0x03000A58
_08001EF0: .4byte 0x04000120
_08001EF4:
	movs r3, #1
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x19
	ldr r1, _08001F58 @ =0x03000A58
	mov r8, r1
_08001F06:
	lsls r0, r5, #1
	ldr r2, _08001F5C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	adds r0, r6, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08001F3A
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _08001F2E
	b _08002098
_08001F2E:
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r4, r0
	bne _08001F3A
	movs r3, #0
_08001F3A:
	adds r5, r2, #0
	cmp r5, #0
	bne _08001F06
	cmp r3, #0
	bne _08001F60
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_08001F4A:
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r7, #0
	bl sub_080020B4
	b _080020A4
	.align 2, 0
_08001F58: .4byte 0x03000A58
_08001F5C: .4byte 0x04000120
_08001F60:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	adds r1, r6, #2
_08001F6A:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _08001F6A
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_080020B4
	b _080020A4
_08001F8E:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _08001FCC @ =0x04000126
	movs r3, #1
_08001F98:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08001FAC
	asrs r0, r4, #8
	cmp r0, #0x73
	bne _08002098
_08001FAC:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _08001F98
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _08001FD0
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _080020A2
	.align 2, 0
_08001FCC: .4byte 0x04000126
_08001FD0:
	adds r0, r7, #0
	bl sub_08001C88
	movs r0, #0x1e
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x70
	b _080020A4
_08001FE0:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r0, #1
	mov sb, r0
_08001FEE:
	mov r1, r8
	ldrb r6, [r1]
	adds r0, r6, #0
	asrs r0, r5
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08002028
	lsls r0, r5, #1
	ldr r1, _08002044 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _08002022
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _08002028
_08002022:
	eors r6, r3
	mov r2, r8
	strb r6, [r2]
_08002028:
	subs r5, #1
	cmp r5, #0
	bne _08001FEE
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _08002048
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _08001E42
	.align 2, 0
_08002044: .4byte 0x04000120
_08002048:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800205A
	adds r0, r7, #0
	bl sub_08001C88
	movs r0, #0x50
	b _080020A4
_0800205A:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _0800206A
	b _08001E42
_0800206A:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_080020B4
	adds r5, r0, #0
	cmp r5, #0
	bne _080020A4
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080020A2
_08002092:
	bl sub_08002300
	b _08001CEE
_08002098:
	adds r0, r7, #0
	bl sub_08001C88
	movs r0, #0x60
	b _080020A4
_080020A2:
	movs r0, #0
_080020A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080020B4
sub_080020B4: @ 0x080020B4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _080020E0 @ =0x04000128
	ldrh r0, [r3]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _080020EC
	ldr r0, _080020E4 @ =0x0400012A
	strh r1, [r0]
	ldr r1, _080020E8 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _080020F8
	.align 2, 0
_080020E0: .4byte 0x04000128
_080020E4: .4byte 0x0400012A
_080020E8: .4byte 0x00002083
_080020EC:
	adds r0, r2, #0
	bl sub_08001C88
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_080020F8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002100
sub_08002100: @ 0x08002100
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08002112
	adds r0, r1, #0
	bl sub_08001C88
	b _0800211E
_08002112:
	adds r2, r1, #0
	adds r2, #0x4a
	strb r0, [r2]
	strb r0, [r1, #0x1e]
	movs r0, #1
	strb r0, [r1, #0x18]
_0800211E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002124
sub_08002124: @ 0x08002124
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0800215E
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _0800215E
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800215E
	str r6, [r5, #0x20]
	adds r2, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #0xf0
	adds r1, r2, r0
	ldr r0, _08002168 @ =0x0003FF00
	cmp r1, r0
	bls _0800216C
_0800215E:
	adds r0, r5, #0
	bl sub_08001C88
	b _080021E0
	.align 2, 0
_08002168: .4byte 0x0003FF00
_0800216C:
	adds r0, r6, r2
	str r0, [r5, #0x24]
	lsls r1, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _080021CC
	lsls r0, r0, #2
	ldr r1, _0800218C @ =_08002190
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800218C: .4byte _08002190
_08002190: @ jump table
	.4byte _080021B4 @ case 0
	.4byte _080021B4 @ case 1
	.4byte _080021B4 @ case 2
	.4byte _080021B4 @ case 3
	.4byte _080021BE @ case 4
	.4byte _080021C4 @ case 5
	.4byte _080021C4 @ case 6
	.4byte _080021C4 @ case 7
	.4byte _080021C4 @ case 8
_080021B4:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _080021CA
_080021BE:
	movs r0, #0x38
	adds r4, r3, #0
	b _080021CA
_080021C4:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_080021CA:
	orrs r4, r0
_080021CC:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r5, #0x1c]
	movs r0, #0xd0
	strb r0, [r5, #0x18]
_080021E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080021E8
sub_080021E8: @ 0x080021E8
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _080021F4
	movs r0, #0
	b _080021F6
_080021F4:
	movs r0, #1
_080021F6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080021FC
sub_080021FC: @ 0x080021FC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0xe0
	beq _08002218
	cmp r0, #0xe0
	blt _08002228
	cmp r0, #0xe8
	bgt _08002228
	cmp r0, #0xe7
	blt _08002228
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	b _08002288
_08002218:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r3, #0x18]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r3]
	b _0800227A
_08002228:
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	movs r6, #1
	ldr r1, _08002284 @ =0x04000126
_08002230:
	ldrh r0, [r1]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08002244
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _08002218
_08002244:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08002230
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	ldr r1, [r3]
	ldrh r0, [r3]
	str r0, [r3, #4]
	cmp r1, #0
	bne _08002272
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3, #4]
	lsls r1, r1, #5
	str r1, [r3]
_08002272:
	ldr r0, [r3]
	lsrs r0, r0, #5
	str r0, [r3]
_08002278:
	ldrh r1, [r3]
_0800227A:
	adds r0, r3, #0
	bl sub_080020B4
	b _080022E0
	.align 2, 0
_08002284: .4byte 0x04000126
_08002288:
	lsls r0, r4, #1
	ldr r1, _080022D0 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080022A4
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _080022D4
_080022A4:
	subs r4, #1
	cmp r4, #0
	bne _08002288
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _080022DE
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3]
	str r1, [r3, #4]
	b _08002278
	.align 2, 0
_080022D0: .4byte 0x04000120
_080022D4:
	adds r0, r3, #0
	bl sub_08001C88
	movs r0, #0x71
	b _080022E0
_080022DE:
	movs r0, #0
_080022E0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080022E8
sub_080022E8: @ 0x080022E8
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080022FA
	movs r1, #0xd
	cmp r2, #8
	beq _080022FA
	movs r1, #4
_080022FA:
	subs r0, r0, r1
	bgt _080022FA
	bx lr

	thumb_func_start sub_08002300
sub_08002300: @ 0x08002300
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _08002334 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002324
	ldr r5, _08002338 @ =0x0000795C
	movs r4, #0x80
_08002314:
	adds r2, #1
	cmp r2, r5
	bgt _08002324
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08002314
_08002324:
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_080022E8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002334: .4byte 0x04000128
_08002338: .4byte 0x0000795C

	thumb_func_start sub_0800233C
sub_0800233C: @ 0x0800233C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r3, _08002414 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08002418 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800241C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08002420 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08002424 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08002428 @ =0x03001050
	ldr r2, _0800242C @ =0x0500006C
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08002430 @ =sub_080001D4
	ldr r1, _08002434 @ =0x03001200
	ldr r2, _08002438 @ =0x04000010
	bl CpuSet
	ldr r0, _0800243C @ =sub_08000214
	ldr r1, _08002440 @ =0x03000F10
	ldr r2, _08002444 @ =0x04000050
	bl CpuSet
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x18
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0xc0
	movs r2, #0
	movs r7, #0x30
	adds r7, r7, r4
	mov r8, r7
	movs r0, #0x90
	adds r0, r0, r4
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0xa8
	movs r7, #0x40
	adds r7, r7, r4
	mov sb, r7
_080023C2:
	lsls r1, r3, #2
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r2, r6
	mov r7, sb
	adds r7, #4
	mov sb, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r5, [r1]
	adds r5, #0x48
	adds r2, #0x48
	adds r3, #1
	cmp r3, #3
	ble _080023C2
	movs r0, #0
	ldr r3, _08002414 @ =0x04000208
	strh r0, [r3]
	ldr r2, _08002418 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002414: .4byte 0x04000208
_08002418: .4byte 0x04000200
_0800241C: .4byte 0x0000FF3F
_08002420: .4byte 0x04000134
_08002424: .4byte 0x00004003
_08002428: .4byte 0x03001050
_0800242C: .4byte 0x0500006C
_08002430: .4byte sub_080001D4
_08002434: .4byte 0x03001200
_08002438: .4byte 0x04000010
_0800243C: .4byte sub_08000214
_08002440: .4byte 0x03000F10
_08002444: .4byte 0x04000050

	thumb_func_start sub_08002448
sub_08002448: @ 0x08002448
	push {lr}
	ldr r1, _0800245C @ =0x03001050
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002456
	movs r0, #1
	strb r0, [r1, #8]
_08002456:
	pop {r0}
	bx r0
	.align 2, 0
_0800245C: .4byte 0x03001050

	thumb_func_start sub_08002460
sub_08002460: @ 0x08002460
	push {r4, lr}
	ldr r3, _08002494 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08002498 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800249C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080024A0 @ =0x04000128
	ldr r2, _080024A4 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _080024A8 @ =0x0000B1FC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, _080024AC @ =0x03001050
	strb r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002494: .4byte 0x04000208
_08002498: .4byte 0x04000200
_0800249C: .4byte 0x0000FF3F
_080024A0: .4byte 0x04000128
_080024A4: .4byte 0x00002003
_080024A8: .4byte 0x0000B1FC
_080024AC: .4byte 0x03001050

	thumb_func_start sub_080024B0
sub_080024B0: @ 0x080024B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	mov ip, r1
	ldr r6, _080024D4 @ =0x04000128
	ldr r5, [r6]
	ldr r0, _080024D8 @ =0x03001050
	ldrb r2, [r0, #1]
	adds r7, r0, #0
	cmp r2, #1
	beq _08002544
	cmp r2, #1
	bgt _080024DC
	cmp r2, #0
	beq _080024E2
	b _08002580
	.align 2, 0
_080024D4: .4byte 0x04000128
_080024D8: .4byte 0x03001050
_080024DC:
	cmp r2, #2
	beq _08002574
	b _08002580
_080024E2:
	movs r1, #0x30
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08002540
	movs r0, #0x88
	adds r4, r5, #0
	ands r4, r0
	cmp r4, #8
	bne _08002580
	movs r1, #4
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08002540
	ldr r1, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08002540
	ldr r3, _08002558 @ =0x04000208
	strh r2, [r3]
	ldr r2, _0800255C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08002560 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r6, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #1]
	ldr r1, _08002564 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08002568 @ =0x0000B1FC
	str r0, [r1]
	strb r4, [r7]
_08002540:
	movs r0, #1
	strb r0, [r7, #1]
_08002544:
	ldr r1, _0800256C @ =0x03001050
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08002574
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bhi _08002570
	adds r0, #1
	strb r0, [r1, #0xa]
	b _08002574
	.align 2, 0
_08002558: .4byte 0x04000208
_0800255C: .4byte 0x04000200
_08002560: .4byte 0x0000FF7F
_08002564: .4byte 0x04000202
_08002568: .4byte 0x0000B1FC
_0800256C: .4byte 0x03001050
_08002570:
	movs r0, #2
	strb r0, [r1, #1]
_08002574:
	mov r0, ip
	bl sub_08002650
	mov r0, r8
	bl sub_080025DC
_08002580:
	ldr r1, _080025A0 @ =0x03001050
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	adds r7, r1, #0
	cmp r0, #8
	bne _080025A4
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _080025A8
	.align 2, 0
_080025A0: .4byte 0x03001050
_080025A4:
	adds r0, r3, #0
	orrs r0, r2
_080025A8:
	adds r2, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #0
	beq _080025B6
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_080025B6:
	ldrb r0, [r7, #0xa]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r5, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _080025CE
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _080025D2
_080025CE:
	adds r0, r2, #0
	orrs r0, r1
_080025D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080025DC
sub_080025DC: @ 0x080025DC
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _08002644 @ =0x03001050
	ldr r2, [r4, #0x28]
	ldrb r1, [r4, #0xb]
	strb r1, [r2]
	ldr r3, [r4, #0x28]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eors r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #0x28]
	strh r5, [r1, #2]
	ldr r1, [r4, #0x28]
	adds r1, #4
	ldr r2, _08002648 @ =0x04000004
	bl CpuSet
	movs r2, #0
	ldr r1, [r4, #0x28]
_08002604:
	ldrh r0, [r1]
	adds r5, r5, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _08002604
	adds r2, r4, #0
	ldr r1, [r2, #0x28]
	mvns r0, r5
	subs r0, #0xc
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08002626
	ldr r1, _0800264C @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08002626:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800263E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0800263E
	ldr r1, _0800264C @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0800263E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002644: .4byte 0x03001050
_08002648: .4byte 0x04000004
_0800264C: .4byte 0x0400010E

	thumb_func_start sub_08002650
sub_08002650: @ 0x08002650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08002700 @ =0x03001200
	movs r4, #0
	str r4, [sp]
	bl sub_08003014
	str r0, [sp, #4]
	ldr r0, _08002704 @ =0x03001050
	strb r4, [r0, #3]
	movs r5, #0
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov sb, r2
	mov r8, r0
	mov r7, r8
	adds r7, #0x50
_0800267E:
	movs r3, #0
	movs r2, #0
	lsls r4, r5, #2
	adds r6, r5, #1
	adds r0, r4, r7
	ldr r1, [r0]
_0800268A:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _0800268A
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _080026CA
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080026CA
	adds r0, r4, r7
	ldr r0, [r0]
	adds r0, #4
	lsls r1, r5, #4
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _08002708 @ =0x04000004
	bl CpuSet
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrb r1, [r2, #3]
	orrs r0, r1
	strb r0, [r2, #3]
_080026CA:
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _0800270C @ =0x05000004
	bl CpuSet
	adds r5, r6, #0
	cmp r5, #3
	ble _0800267E
	ldr r1, _08002704 @ =0x03001050
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orrs r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002700: .4byte 0x03001200
_08002704: .4byte 0x03001050
_08002708: .4byte 0x04000004
_0800270C: .4byte 0x05000004

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

	thumb_func_start sub_08002728
sub_08002728: @ 0x08002728 SoftResetRom
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

	thumb_func_start sub_08002744
sub_08002744: @ 0x08002744 VBlankIntrWait
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start sub_0800274C
sub_0800274C: @ 0x0800274C
	push {r7, lr}
	mov r7, sp
	bl sub_08002FEC
	ldr r0, _08002760 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002760: .4byte 0x03000A62

	thumb_func_start sub_08002764
sub_08002764: @ 0x08002764
	push {r7, lr}
	mov r7, sp
	bl sub_08003000
	ldr r0, _08002778 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002778: .4byte 0x03000A62

	thumb_func_start sub_0800277C
sub_0800277C: @ 0x0800277C
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_080028D8
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _08002796
	movs r0, #0
	b _0800284A
_08002796:
	adds r0, r7, #0
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _080027C6
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _080027E4
	b _080027C6
_080027C6:
	bl sub_08002854
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _080027D6
	movs r0, #0
	b _0800284A
_080027D6:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_080027E4:
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_08002B98
	adds r0, r7, #4
	ldrb r1, [r0, #6]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _08002832
	bl sub_08002854
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _08002824
	adds r0, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r1, r0, #0
	movs r2, #0xf
	adds r0, r1, #0
	bics r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	b _0800284A
_08002824:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_08002832:
	adds r0, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r1, r0, #0
	movs r2, #1
	adds r0, r1, #0
	orrs r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	b _0800284A
_0800284A:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002854
sub_08002854: @ 0x08002854
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	ldr r0, _08002868 @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800286C
	movs r0, #0
	b _080028D0
	.align 2, 0
_08002868: .4byte 0x03000A62
_0800286C:
	ldr r0, _080028C4 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080028C8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080028C8 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _080028CC @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x60
	bl sub_08002E1C
	ldr r0, _080028C8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080028C8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080028C4 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #7]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_080029A4
	adds r1, r7, #0
	strb r0, [r1]
	adds r0, r7, #0
	ldrb r1, [r0]
	adds r0, r1, #0
	b _080028D0
	.align 2, 0
_080028C4: .4byte 0x03000A62
_080028C8: .4byte 0x080000C4
_080028CC: .4byte 0x080000C6
_080028D0:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080028D8
sub_080028D8: @ 0x080028D8
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080028EC @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _080028F0
	movs r0, #0
	b _0800299C
	.align 2, 0
_080028EC: .4byte 0x03000A62
_080028F0:
	ldr r0, _08002990 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002994 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002994 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002998 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x63
	bl sub_08002E1C
	ldr r0, _08002998 @ =0x080000C6
	movs r1, #5
	strh r1, [r0]
	bl sub_08002F60
	adds r1, r7, #4
	strb r0, [r1]
	ldr r0, [r7]
	adds r1, r7, #4
	ldrb r2, [r1]
	movs r3, #0xc0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #0x20
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #3
	adds r2, r3, #0
	orrs r1, r2
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #8
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #2
	adds r2, r3, #0
	orrs r1, r2
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #2
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #1
	adds r2, r3, #0
	orrs r1, r2
	ldrb r2, [r0, #7]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #7]
	ldr r0, _08002994 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002994 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002990 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800299C
	.align 2, 0
_08002990: .4byte 0x03000A62
_08002994: .4byte 0x080000C4
_08002998: .4byte 0x080000C6
_0800299C:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080029A4
sub_080029A4: @ 0x080029A4
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080029B8 @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _080029BC
	movs r0, #0
	b _08002A44
	.align 2, 0
_080029B8: .4byte 0x03000A62
_080029BC:
	ldr r0, _08002A38 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002A3C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002A3C @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	ldr r1, [r7]
	ldrb r2, [r1, #7]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, [r7]
	ldrb r3, [r2, #7]
	movs r4, #2
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r3, r2, #0
	movs r4, #0x40
	adds r2, r3, #0
	orrs r2, r4
	orrs r1, r2
	ldr r2, [r7]
	ldrb r3, [r2, #7]
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	lsls r2, r3, #1
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08002A40 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x62
	bl sub_08002E1C
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_08002EC0
	ldr r0, _08002A3C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002A3C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002A38 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002A44
	.align 2, 0
_08002A38: .4byte 0x03000A62
_08002A3C: .4byte 0x080000C4
_08002A40: .4byte 0x080000C6
_08002A44:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002A4C
sub_08002A4C: @ 0x08002A4C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08002A60 @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _08002A64
	movs r0, #0
	b _08002AF4
	.align 2, 0
_08002A60: .4byte 0x03000A62
_08002A64:
	ldr r0, _08002A98 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002A9C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002A9C @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002AA0 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x65
	bl sub_08002E1C
	ldr r0, _08002AA0 @ =0x080000C6
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_08002A8E:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #6
	bls _08002AA4
	b _08002AC2
	.align 2, 0
_08002A98: .4byte 0x03000A62
_08002A9C: .4byte 0x080000C4
_08002AA0: .4byte 0x080000C6
_08002AA4:
	bl sub_08002F60
	adds r1, r7, #4
	ldrb r2, [r1]
	ldr r3, [r7]
	adds r1, r2, r3
	strb r0, [r1]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002A8E
_08002AC2:
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldrb r2, [r1]
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08002AEC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002AEC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002AF0 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002AF4
	.align 2, 0
_08002AEC: .4byte 0x080000C4
_08002AF0: .4byte 0x03000A62
_08002AF4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002AFC
sub_08002AFC: @ 0x08002AFC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08002B10 @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _08002B14
	movs r0, #0
	b _08002B90
	.align 2, 0
_08002B10: .4byte 0x03000A62
_08002B14:
	ldr r0, _08002B44 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002B48 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002B48 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002B4C @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x64
	bl sub_08002E1C
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_08002B38:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #6
	bls _08002B50
	b _08002B70
	.align 2, 0
_08002B44: .4byte 0x03000A62
_08002B48: .4byte 0x080000C4
_08002B4C: .4byte 0x080000C6
_08002B50:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_08002EC0
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002B38
_08002B70:
	ldr r0, _08002B88 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002B88 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002B8C @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002B90
	.align 2, 0
_08002B88: .4byte 0x080000C4
_08002B8C: .4byte 0x03000A62
_08002B90:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002B98
sub_08002B98: @ 0x08002B98
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08002BAC @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _08002BB0
	movs r0, #0
	b _08002C44
	.align 2, 0
_08002BAC: .4byte 0x03000A62
_08002BB0:
	ldr r0, _08002BE4 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002BE8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002BE8 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002BEC @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x67
	bl sub_08002E1C
	ldr r0, _08002BEC @ =0x080000C6
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_08002BDA:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bls _08002BF0
	b _08002C10
	.align 2, 0
_08002BE4: .4byte 0x03000A62
_08002BE8: .4byte 0x080000C4
_08002BEC: .4byte 0x080000C6
_08002BF0:
	bl sub_08002F60
	adds r1, r7, #4
	ldrb r2, [r1]
	ldr r3, [r7]
	adds r1, r2, r3
	adds r2, r1, #4
	strb r0, [r2]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002BDA
_08002C10:
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldrb r2, [r1]
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08002C3C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002C3C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002C40 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002C44
	.align 2, 0
_08002C3C: .4byte 0x080000C4
_08002C40: .4byte 0x03000A62
_08002C44:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002C4C
sub_08002C4C: @ 0x08002C4C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08002C60 @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _08002C64
	movs r0, #0
	b _08002CE0
	.align 2, 0
_08002C60: .4byte 0x03000A62
_08002C64:
	ldr r0, _08002C94 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08002C98 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002C98 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002C9C @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x66
	bl sub_08002E1C
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_08002C88:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bls _08002CA0
	b _08002CC2
	.align 2, 0
_08002C94: .4byte 0x03000A62
_08002C98: .4byte 0x080000C4
_08002C9C: .4byte 0x080000C6
_08002CA0:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	adds r1, r0, #4
	ldrb r2, [r1]
	adds r0, r2, #0
	bl sub_08002EC0
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002C88
_08002CC2:
	ldr r0, _08002CD8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002CD8 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002CDC @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002CE0
	.align 2, 0
_08002CD8: .4byte 0x080000C4
_08002CDC: .4byte 0x03000A62
_08002CE0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002CE8
sub_08002CE8: @ 0x08002CE8
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _08002CFC @ =0x03000A62
	ldrb r1, [r0]
	cmp r1, #1
	bne _08002D00
	movs r0, #0
	b _08002E14
	.align 2, 0
_08002CFC: .4byte 0x03000A62
_08002D00:
	ldr r0, _08002D68 @ =0x03000A62
	movs r1, #1
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r1, #8]
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	ldr r2, [r7]
	ldrb r3, [r2, #8]
	lsrs r2, r3, #4
	adds r3, r2, #0
	movs r4, #0xf
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	adds r4, r2, #0
	lsls r3, r4, #2
	adds r3, r3, r2
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0]
	cmp r1, #0xb
	bhi _08002D6C
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1, #8]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	b _08002D8A
	.align 2, 0
_08002D68: .4byte 0x03000A62
_08002D6C:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r1, #8]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_08002D8A:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1, #9]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r0, _08002DCC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002DCC @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _08002DD0 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x68
	bl sub_08002E1C
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_08002DC0:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #1
	bls _08002DD4
	b _08002DF6
	.align 2, 0
_08002DCC: .4byte 0x080000C4
_08002DD0: .4byte 0x080000C6
_08002DD4:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_08002EC0
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002DC0
_08002DF6:
	ldr r0, _08002E0C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002E0C @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _08002E10 @ =0x03000A62
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _08002E14
	.align 2, 0
_08002E0C: .4byte 0x080000C4
_08002E10: .4byte 0x03000A62
_08002E14:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002E1C
sub_08002E1C: @ 0x08002E1C
	push {r4, r5, r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r0, #0
	adds r2, r7, #0
	strb r1, [r2]
	adds r1, r7, #1
	movs r2, #0
	strb r2, [r1]
_08002E2E:
	adds r1, r7, #1
	ldrb r2, [r1]
	cmp r2, #7
	bls _08002E38
	b _08002EB8
_08002E38:
	adds r1, r7, #2
	adds r3, r7, #0
	ldrb r2, [r3]
	adds r3, r7, #1
	ldrb r4, [r3]
	movs r5, #7
	subs r3, r5, r4
	asrs r2, r3
	adds r3, r2, #0
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	strb r3, [r1]
	ldr r1, _08002EB4 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002EB4 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002EB4 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002EB4 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #5
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	adds r2, r7, #1
	adds r1, r7, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	adds r2, r3, #1
	adds r3, r2, #0
	strb r3, [r1]
	b _08002E2E
	.align 2, 0
_08002EB4: .4byte 0x080000C4
_08002EB8:
	add sp, #4
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002EC0
sub_08002EC0: @ 0x08002EC0
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r0, #0
	adds r2, r7, #0
	strb r1, [r2]
	adds r1, r7, #1
	movs r2, #0
	strb r2, [r1]
_08002ED2:
	adds r1, r7, #1
	ldrb r2, [r1]
	cmp r2, #7
	bls _08002EDC
	b _08002F58
_08002EDC:
	adds r1, r7, #2
	adds r3, r7, #0
	ldrb r2, [r3]
	adds r3, r7, #1
	ldrb r4, [r3]
	asrs r2, r4
	adds r3, r2, #0
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	strb r3, [r1]
	ldr r1, _08002F54 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002F54 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002F54 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _08002F54 @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #5
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	adds r2, r7, #1
	adds r1, r7, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	adds r2, r3, #1
	adds r3, r2, #0
	strb r3, [r1]
	b _08002ED2
	.align 2, 0
_08002F54: .4byte 0x080000C4
_08002F58:
	add sp, #4
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002F60
sub_08002F60: @ 0x08002F60
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	movs r1, #0
	strb r1, [r0]
_08002F6C:
	adds r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #7
	bls _08002F76
	b _08002FDC
_08002F76:
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _08002FD8 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #1
	ldr r1, _08002FD8 @ =0x080000C4
	ldrh r2, [r1]
	movs r3, #2
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #2
	adds r1, r7, #2
	ldrb r2, [r1]
	lsrs r1, r2, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	lsls r2, r3, #7
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _08002F6C
	.align 2, 0
_08002FD8: .4byte 0x080000C4
_08002FDC:
	adds r0, r7, #2
	ldrb r1, [r0]
	adds r0, r1, #0
	b _08002FE4
_08002FE4:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002FEC
sub_08002FEC: @ 0x08002FEC
	push {r7, lr}
	mov r7, sp
	ldr r0, _08002FFC @ =0x080000C8
	movs r1, #1
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002FFC: .4byte 0x080000C8

	thumb_func_start sub_08003000
sub_08003000: @ 0x08003000
	push {r7, lr}
	mov r7, sp
	ldr r0, _08003010 @ =0x080000C8
	movs r1, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003010: .4byte 0x080000C8

	thumb_func_start sub_08003014
sub_08003014: @ 0x08003014
	bx r0
	nop

	thumb_func_start sub_08003018
sub_08003018: @ 0x08003018
	bx r1
	nop

	thumb_func_start sub_0800301C
sub_0800301C: @ 0x0800301C
	bx r2
	nop

	thumb_func_start sub_08003020
sub_08003020: @ 0x08003020
	bx r3
	nop

	thumb_func_start sub_08003024
sub_08003024: @ 0x08003024
	bx r4
	nop

	thumb_func_start sub_08003028
sub_08003028: @ 0x08003028
	bx r5
	nop

	thumb_func_start sub_0800302C
sub_0800302C: @ 0x0800302C
	bx r6
	nop

	thumb_func_start sub_08003030
sub_08003030: @ 0x08003030
	bx r7
	nop

	thumb_func_start sub_08003034
sub_08003034: @ 0x08003034
	bx r8
	nop

	thumb_func_start sub_08003038
sub_08003038: @ 0x08003038
	bx sb
	nop

	thumb_func_start sub_0800303C
sub_0800303C: @ 0x0800303C
	bx sl
	nop

	thumb_func_start sub_08003040
sub_08003040: @ 0x08003040
	bx fp
	nop

	thumb_func_start sub_08003044
sub_08003044: @ 0x08003044
	bx ip
	nop

	thumb_func_start sub_08003048
sub_08003048: @ 0x08003048
	bx sp
	nop

	thumb_func_start sub_0800304C
sub_0800304C: @ 0x0800304C
	bx lr
	nop

	thumb_func_start sub_08003050
sub_08003050: @ 0x08003050
	cmp r1, #0
	beq _080030D8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08003066
	rsbs r1, r1, #0
_08003066:
	cmp r0, #0
	bpl _0800306C
	rsbs r0, r0, #0
_0800306C:
	cmp r0, r1
	blo _080030CA
	movs r4, #1
	lsls r4, r4, #0x1c
_08003074:
	cmp r1, r4
	bhs _08003082
	cmp r1, r0
	bhs _08003082
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003074
_08003082:
	lsls r4, r4, #3
_08003084:
	cmp r1, r4
	bhs _08003092
	cmp r1, r0
	bhs _08003092
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003084
_08003092:
	cmp r0, r1
	blo _0800309A
	subs r0, r0, r1
	orrs r2, r3
_0800309A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080030A6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080030A6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080030B2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080030B2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080030BE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080030BE:
	cmp r0, #0
	beq _080030CA
	lsrs r3, r3, #4
	beq _080030CA
	lsrs r1, r1, #4
	b _08003092
_080030CA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080030D4
	rsbs r0, r0, #0
_080030D4:
	pop {r4}
	mov pc, lr
_080030D8:
	push {lr}
	bl sub_080030E4
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080030E4
sub_080030E4: @ 0x080030E4
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080030E8
sub_080030E8: @ 0x080030E8
	movs r3, #1
	cmp r1, #0
	beq _080031AC
	bpl _080030F2
	rsbs r1, r1, #0
_080030F2:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080030FC
	rsbs r0, r0, #0
_080030FC:
	cmp r0, r1
	blo _080031A0
	movs r4, #1
	lsls r4, r4, #0x1c
_08003104:
	cmp r1, r4
	bhs _08003112
	cmp r1, r0
	bhs _08003112
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003104
_08003112:
	lsls r4, r4, #3
_08003114:
	cmp r1, r4
	bhs _08003122
	cmp r1, r0
	bhs _08003122
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003114
_08003122:
	movs r2, #0
	cmp r0, r1
	blo _0800312A
	subs r0, r0, r1
_0800312A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800313C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800313C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800314E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800314E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08003160
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08003160:
	mov ip, r3
	cmp r0, #0
	beq _0800316E
	lsrs r3, r3, #4
	beq _0800316E
	lsrs r1, r1, #4
	b _08003122
_0800316E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080031A0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08003184
	lsrs r4, r1, #3
	adds r0, r0, r4
_08003184:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08003192
	lsrs r4, r1, #2
	adds r0, r0, r4
_08003192:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080031A0
	lsrs r4, r1, #1
	adds r0, r0, r4
_080031A0:
	pop {r4}
	cmp r4, #0
	bpl _080031A8
	rsbs r0, r0, #0
_080031A8:
	pop {r4}
	mov pc, lr
_080031AC:
	push {lr}
	bl sub_080030E4
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080031B8
sub_080031B8: @ 0x080031B8
	cmp r1, #0
	beq _08003226
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08003220
	movs r4, #1
	lsls r4, r4, #0x1c
_080031CA:
	cmp r1, r4
	bhs _080031D8
	cmp r1, r0
	bhs _080031D8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080031CA
_080031D8:
	lsls r4, r4, #3
_080031DA:
	cmp r1, r4
	bhs _080031E8
	cmp r1, r0
	bhs _080031E8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080031DA
_080031E8:
	cmp r0, r1
	blo _080031F0
	subs r0, r0, r1
	orrs r2, r3
_080031F0:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080031FC
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080031FC:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08003208
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08003208:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08003214
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08003214:
	cmp r0, #0
	beq _08003220
	lsrs r3, r3, #4
	beq _08003220
	lsrs r1, r1, #4
	b _080031E8
_08003220:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08003226:
	push {lr}
	bl sub_080030E4
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08003230
sub_08003230: @ 0x08003230
	cmp r1, #0
	beq _080032E6
	movs r3, #1
	cmp r0, r1
	bhs _0800323C
	mov pc, lr
_0800323C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08003242:
	cmp r1, r4
	bhs _08003250
	cmp r1, r0
	bhs _08003250
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003242
_08003250:
	lsls r4, r4, #3
_08003252:
	cmp r1, r4
	bhs _08003260
	cmp r1, r0
	bhs _08003260
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003252
_08003260:
	movs r2, #0
	cmp r0, r1
	blo _08003268
	subs r0, r0, r1
_08003268:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800327A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800327A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800328C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800328C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0800329E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800329E:
	mov ip, r3
	cmp r0, #0
	beq _080032AC
	lsrs r3, r3, #4
	beq _080032AC
	lsrs r1, r1, #4
	b _08003260
_080032AC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080032B8
	pop {r4}
	mov pc, lr
_080032B8:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080032C6
	lsrs r4, r1, #3
	adds r0, r0, r4
_080032C6:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080032D4
	lsrs r4, r1, #2
	adds r0, r0, r4
_080032D4:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080032E2
	lsrs r4, r1, #1
	adds r0, r0, r4
_080032E2:
	pop {r4}
	mov pc, lr
_080032E6:
	push {lr}
	bl sub_080030E4
	movs r0, #0
	pop {pc}
