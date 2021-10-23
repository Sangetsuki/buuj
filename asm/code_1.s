	.include "asm/macro.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

	thumb_func_start sub_8000394
sub_8000394: @ 0x08000394
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
	bl sub_80013B8
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
	bl sub_80013B8
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
_0800046C:
	.byte 0xF0, 0xB5, 0x47, 0x46
	.byte 0x80, 0xB4, 0x82, 0xB0, 0x05, 0x1C, 0x01, 0x24, 0x00, 0x27, 0x0A, 0x48, 0x80, 0x46, 0x01, 0x2D
	.byte 0x04, 0xDB, 0xA0, 0x00, 0x00, 0x19, 0x44, 0x00, 0xA5, 0x42, 0xFA, 0xDA, 0x20, 0x1C, 0x0A, 0x21
	.byte 0x02, 0xF0, 0xDE, 0xFD, 0x04, 0x1C, 0x00, 0x2C, 0x06, 0xD1, 0x30, 0x20, 0x41, 0x46, 0x08, 0x80
	.byte 0x4C, 0x80, 0x1E, 0xE0, 0x10, 0x00, 0x00, 0x03, 0x00, 0x2C, 0x16, 0xDD, 0x78, 0x00, 0x41, 0x46
	.byte 0x46, 0x18, 0x28, 0x1C, 0x21, 0x1C, 0x02, 0xF0, 0xCB, 0xFD, 0x30, 0x30, 0x30, 0x80, 0x02, 0x36
	.byte 0x01, 0x37, 0x28, 0x1C, 0x21, 0x1C, 0x02, 0xF0, 0x0F, 0xFE, 0x05, 0x1C, 0x20, 0x1C, 0x0A, 0x21
	.byte 0x02, 0xF0, 0xBE, 0xFD, 0x04, 0x1C, 0x00, 0x2C, 0xEB, 0xDC, 0x78, 0x00, 0x40, 0x44, 0x00, 0x21
	.byte 0x01, 0x80, 0x10, 0x20, 0x00, 0x90, 0x00, 0x20, 0x01, 0x90, 0x40, 0x46, 0x64, 0x21, 0x8C, 0x22
	.byte 0x50, 0x23, 0x00, 0xF0, 0x61, 0xFF, 0x02, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_8000504
sub_8000504: @ 0x08000504
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
	bl __divsi3
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
	bl __divsi3
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strh r0, [r6]
	adds r6, #2
	movs r0, #1
	add r8, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
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
	bl sub_80013B8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080005D0:
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x83, 0xB0, 0x05, 0x1C, 0x8A, 0x46
	.byte 0x02, 0x92, 0x1B, 0x04, 0x1B, 0x0C, 0x99, 0x46, 0x0A, 0x24, 0x00, 0x27, 0x1A, 0x48, 0x80, 0x46
	.byte 0x46, 0x46, 0x28, 0x1C, 0x21, 0x1C, 0x02, 0xF0, 0x2B, 0xFD, 0x0A, 0x21, 0x02, 0xF0, 0x74, 0xFD
	.byte 0x30, 0x30, 0x30, 0x80, 0x02, 0x36, 0x01, 0x37, 0x28, 0x1C, 0x21, 0x1C, 0x02, 0xF0, 0x6C, 0xFD
	.byte 0x05, 0x1C, 0x20, 0x1C, 0x0A, 0x21, 0x02, 0xF0, 0x1B, 0xFD, 0x04, 0x1C, 0x00, 0x2C, 0xE8, 0xDC
	.byte 0x7B, 0x00, 0x42, 0x46, 0x99, 0x18, 0x00, 0x20, 0x08, 0x80, 0xDB, 0x19, 0x9B, 0x00, 0x50, 0x46
	.byte 0xC1, 0x1A, 0x10, 0x20, 0x00, 0x90, 0x4A, 0x46, 0x10, 0x06, 0x00, 0x0E, 0x01, 0x90, 0x40, 0x46
	.byte 0x02, 0x9A, 0x00, 0xF0, 0xB9, 0xFE, 0x03, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0x00, 0x00, 0x03, 0x00, 0xB5, 0x02, 0xF0
	.byte 0x71, 0xF8, 0xFC, 0xE7

	thumb_func_start sub_8000664
sub_8000664: @ 0x08000664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _0800071C @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000720 @ =0x080000FC
	ldr r4, _08000724 @ =0x03000030
	ldr r2, _08000728 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0800072C @ =0x03007FFC
	str r4, [r0]
	mov r7, sp
	adds r7, #2
	ldr r1, _08000730 @ =0x03000A70
	ldr r2, _08000734 @ =0x08000AA1
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
	ldr r0, _08000750 @ =0x08000A95
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
_08000720: .4byte 0x080000FC
_08000724: .4byte 0x03000030
_08000728: .4byte 0x04000080
_0800072C: .4byte 0x03007FFC
_08000730: .4byte 0x03000A70
_08000734: .4byte 0x08000AA1
_08000738: .4byte 0x04000004
_0800073C: .4byte 0x00009F08
_08000740: .4byte 0x04000202
_08000744: .4byte 0x00002001
_08000748: .4byte 0x04000200
_0800074C: .4byte 0x03000F10
_08000750: .4byte 0x08000A95
_08000754: .4byte 0x0100C000
_08000758: .4byte 0x00007FFF
_0800075C: .4byte 0x040000D4
_08000760: .4byte 0x8100C000
_08000764: .4byte 0x03000B10
_08000768: .4byte 0x0400000C
_0800076C: .4byte 0x00001443

	thumb_func_start sub_8000770
sub_8000770: @ 0x08000770 this function creates the gray pokeball icon
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
	ldr r0, _080008F8 @ =pokeballsPalette
	movs r2, #0x10
	bl CpuSet
	ldr r0, _080008FC @ =grayBall
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
_080008F8: .4byte pokeballsPalette
_080008FC: .4byte grayBall
_08000900: .4byte 0x06014000

	thumb_func_start sub_8000904
sub_8000904: @ 0x08000904
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

	thumb_func_start sub_8000964
sub_8000964: @ 0x08000964
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8000904
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
	bl sub_8000394
	ldr r0, _080009A4 @ =0x03000230
	str r4, [r0]
	b _080009B6
	.align 2, 0
_080009A4: .4byte 0x03000230
_080009A8:
	movs r0, #2
	bl sub_8000394
	ldr r1, _08000A1C @ =0x03000230
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080009B6:
	bl ReadKeys
	ldr r4, _08000A1C @ =0x03000230
	ldr r0, [r4]
	cmp r0, #0xb4
	ble _080009F4
	movs r0, #3
	bl sub_8000394
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
	bl sub_8002124
_080009F4:
	ldr r4, _08000A20 @ =0x03000AC0
	adds r0, r4, #0
	bl sub_8001CC4
	ldr r1, _08000A2C @ =0x03000AA8
	str r0, [r1]
	adds r0, r4, #0
	bl sub_80021E8
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
	bl sub_8000394
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
	bl sub_8001C88
_08000A56:
	movs r0, #1
_08000A58:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08000A60: .4byte 0x02000004

	thumb_func_start ReadKeys
ReadKeys: @ 0x08000A64
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
_08000A94:
	.byte 0x01, 0x49, 0x01, 0x20, 0x08, 0x80, 0x70, 0x47, 0xF8, 0x7F, 0x00, 0x03
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x82, 0xB0, 0x04, 0x48, 0x10, 0x21, 0x00, 0x91, 0x00, 0x21
	.byte 0x01, 0x91, 0x50, 0x22, 0xF0, 0x23, 0x00, 0xF0, 0x7F, 0xFC, 0xFE, 0xE7, 0x1E, 0x3B, 0x00, 0x08
	.byte 0x00, 0xB5, 0x82, 0xB0, 0x06, 0x48, 0x10, 0x21, 0x00, 0x91, 0x00, 0x21, 0x01, 0x91, 0x50, 0x22
	.byte 0xF0, 0x23, 0x00, 0xF0, 0x71, 0xFC, 0x01, 0xF0, 0x35, 0xFE, 0xFF, 0xF7, 0x13, 0xFF, 0xFA, 0xE7
	.byte 0x38, 0x3B, 0x00, 0x08, 0x30, 0xB5, 0x00, 0xF0, 0x8D, 0xFE, 0x04, 0x1C, 0x00, 0xF0, 0x98, 0xFE
	.byte 0x05, 0x1C, 0x00, 0xF0, 0xA3, 0xFE, 0x02, 0x1C, 0x80, 0x21, 0x89, 0x04, 0x08, 0x6B, 0x84, 0x42
	.byte 0x18, 0xDB, 0x84, 0x42, 0x07, 0xD1, 0x48, 0x6B, 0x85, 0x42, 0x13, 0xDB, 0x85, 0x42, 0x02, 0xD1
	.byte 0x88, 0x6B, 0x82, 0x42, 0x0E, 0xDB, 0x80, 0x21, 0x89, 0x04, 0xC8, 0x6B, 0x84, 0x42, 0x09, 0xDC
	.byte 0x84, 0x42, 0x0A, 0xD1, 0x08, 0x6C, 0x85, 0x42, 0x04, 0xDC, 0x85, 0x42, 0x05, 0xD1, 0x48, 0x6C
	.byte 0x82, 0x42, 0x02, 0xDD, 0x01, 0x20, 0x40, 0x42, 0x00, 0xE0, 0x00, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_8000B44
sub_8000B44: @ 0x08000B44
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
	bl sub_8001BD4
_08000B5E:
	cmp r5, #1
	bne _08000B6E
	adds r1, r4, #6
	movs r0, #9
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000B6E:
	cmp r5, #2
	bne _08000B7E
	adds r1, r4, #6
	movs r0, #0xc
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000B7E:
	cmp r5, #3
	bne _08000B8E
	adds r1, r4, #6
	movs r0, #0x11
	adds r2, r6, #0
	movs r3, #4
	bl sub_8001BD4
_08000B8E:
	cmp r5, #4
	bne _08000B9E
	adds r1, r4, #6
	movs r0, #0x16
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000B9E:
	cmp r5, #5
	bne _08000C10
	adds r1, r4, #6
	movs r0, #0x19
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
	b _08000C10
_08000BB0:
	cmp r5, #0
	bne _08000BC0
	movs r0, #4
	movs r1, #3
	adds r2, r6, #0
	movs r3, #4
	bl sub_8001BD4
_08000BC0:
	cmp r5, #1
	bne _08000BD0
	movs r0, #9
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000BD0:
	cmp r5, #2
	bne _08000BE0
	movs r0, #0xc
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000BE0:
	cmp r5, #3
	bne _08000BF0
	movs r0, #0xf
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000BF0:
	cmp r5, #4
	bne _08000C00
	movs r0, #0x12
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000C00:
	cmp r5, #5
	bne _08000C10
	movs r0, #0x15
	movs r1, #3
	adds r2, r6, #0
	movs r3, #2
	bl sub_8001BD4
_08000C10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000C18
sub_8000C18: @ 0x08000C18
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

	thumb_func_start sub_8000C54
sub_8000C54: @ 0x08000C54
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

	thumb_func_start sub_8000C80
sub_8000C80: @ 0x08000C80
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
	bl sub_80019B4
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
	bl sub_8001A30
	mov r1, sb
	ldr r0, [r1, #0x3c]
	ldr r1, [r1, #0x40]
	mov r3, sb
	ldr r2, [r3, #0x44]
	str r4, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r3, #0x11
	bl sub_8001A30
	bl sub_8001804
	adds r5, r0, #0
	bl sub_8001820
	adds r4, r0, #0
	bl sub_800183C
	adds r2, r0, #0
	movs r6, #3
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #4
	bl sub_8001A30
	bl sub_8001858
	adds r5, r0, #0
	bl sub_8001874
	adds r4, r0, #0
	bl sub_8001890
	adds r2, r0, #0
	str r6, [sp]
	mov r1, sl
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xf
	bl sub_8001B10
	bl ReadKeys
	ldr r0, _08000D58 @ =0x03000B0C
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08000D2C
	bl sub_8000378
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
	bl sub_8001C34
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
	bl sub_8001C0C
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	ldr r3, _08000D88 @ =0x08003324
	bl sub_8001C34
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
	bl sub_8000C18
_08000E08:
	cmp r7, #1
	bne _08000E14
	ldr r0, _08000E4C @ =0x02000034
	movs r1, #0xc
	bl sub_8000C18
_08000E14:
	cmp r7, #2
	bne _08000E20
	ldr r0, _08000E50 @ =0x02000038
	movs r1, #0x1f
	bl sub_8000C18
_08000E20:
	cmp r7, #3
	bne _08000E2C
	ldr r0, _08000E54 @ =0x0200003C
	movs r1, #0x63
	bl sub_8000C18
_08000E2C:
	cmp r7, #4
	bne _08000E38
	ldr r0, _08000E58 @ =0x02000040
	movs r1, #0xc
	bl sub_8000C18
_08000E38:
	cmp r7, #5
	bne _08000EBE
	ldr r0, _08000E5C @ =0x02000044
	movs r1, #0x1f
	bl sub_8000C18
	b _08000EBE
	.align 2, 0
_08000E48: .4byte 0x02000030
_08000E4C: .4byte 0x02000034
_08000E50: .4byte 0x02000038
_08000E54: .4byte 0x0200003C
_08000E58: .4byte 0x02000040
_08000E5C: .4byte 0x02000044
_08000E60:
	bl sub_8000C54
	adds r4, r0, #0
	cmp r4, #0
	beq _08000EBE
	cmp r7, #0
	bne _08000E78
	bl sub_8001804
	adds r0, r0, r4
	bl sub_80018AC
_08000E78:
	cmp r7, #1
	bne _08000E86
	bl sub_8001820
	adds r0, r0, r4
	bl sub_80018D8
_08000E86:
	cmp r7, #2
	bne _08000E94
	bl sub_800183C
	adds r0, r0, r4
	bl sub_8001904
_08000E94:
	cmp r7, #3
	bne _08000EA2
	bl sub_8001858
	adds r0, r0, r4
	bl sub_8001930
_08000EA2:
	cmp r7, #4
	bne _08000EB0
	bl sub_8001874
	adds r0, r0, r4
	bl sub_800195C
_08000EB0:
	cmp r7, #5
	bne _08000EBE
	bl sub_8001890
	adds r0, r0, r4
	bl sub_8001988
_08000EBE:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _08000ED0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_8000B44
	b _08000EDA
_08000ED0:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #2
	bl sub_8000B44
_08000EDA:
	bl VBlankIntrWait
	bl sub_8001C68
	b _08000CA4
_08000EE4:
	bl sub_8001C68
	ldr r1, _08000F48 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000F4C @ =0x080000FC
	ldr r4, _08000F50 @ =0x03000030
	ldr r2, _08000F54 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08000F58 @ =0x03007FFC
	str r4, [r0]
	ldr r1, _08000F5C @ =0x03000A70
	ldr r2, _08000F60 @ =0x08000AA1
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
	bl sub_8000334
	bl VBlankIntrWait
	bl sub_8001C0C
	ldr r3, _08000F74 @ =0x08003338
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	bl sub_8001C34
	bl sub_8001C68
_08000F44:
	b _08000F44
	.align 2, 0
_08000F48: .4byte 0x04000208
_08000F4C: .4byte 0x080000FC
_08000F50: .4byte 0x03000030
_08000F54: .4byte 0x04000080
_08000F58: .4byte 0x03007FFC
_08000F5C: .4byte 0x03000A70
_08000F60: .4byte 0x08000AA1
_08000F64: .4byte 0x04000004
_08000F68: .4byte 0x00009F08
_08000F6C: .4byte 0x04000202
_08000F70: .4byte 0x00002001
_08000F74: .4byte 0x08003338

	thumb_func_start sub_8000F78
sub_8000F78: @ 0x08000F78
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
	bl sub_80014A4
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

	thumb_func_start sub_8000FD4
sub_8000FD4: @ 0x08000FD4
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
	bl sub_80013B8
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r0, [r0, #0x2c]
	movs r1, #0xc8
	movs r2, #0x94
	movs r3, #0
	bl sub_8000504
	bl sub_8000F78
	ldr r6, _080010B0 @ =0x03000B10
_08001002:
	adds r4, r5, #0
	bl ReadKeys
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
	bl VBlankIntrWait
	bl sub_8000904
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

	thumb_func_start sub_80010CC
sub_80010CC: @ 0x080010CC AgbMain?
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_80015DC
	bl sub_8000664
	bl sub_8000770
	ldr r0, _08001194 @ =0x03000234
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001198 @ =0x03000230
	str r1, [r0]
	bl sub_8000378
	bl ReadKeys
	ldr r0, _0800119C @ =0x03000AAC
	ldrh r2, [r0]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08001102
	bl sub_8000C80
_08001102:
	bl sub_8000FD4
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
	bl sub_80013B8
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldr r1, _080011AC @ =0x02000004
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0xc8
	movs r2, #0x8a
	movs r3, #0
	bl sub_8000504
	ldr r0, [r4, #0x2c]
	movs r1, #0xc8
	movs r2, #0x94
	movs r3, #0
	bl sub_8000504
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
	bl sub_8001C88
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
	bl sub_8000338
	b _080011F6
	.align 2, 0
_080011E4: .4byte 0x03000AAC
_080011E8:
	bl VBlankIntrWait
	adds r0, r7, #0
	bl sub_8000964
	cmp r0, #0
	beq _080011C8
_080011F6:
	ldr r1, _08001248 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800124C @ =0x080000FC
	ldr r4, _08001250 @ =0x03000030
	ldr r2, _08001254 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08001258 @ =0x03007FFC
	str r4, [r0]
	ldr r1, _0800125C @ =0x03000A70
	ldr r2, _08001260 @ =0x08000AA1
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
	bl sub_8000334
	movs r0, #0xfe
	bl SoftResetRom
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001248: .4byte 0x04000208
_0800124C: .4byte 0x080000FC
_08001250: .4byte 0x03000030
_08001254: .4byte 0x04000080
_08001258: .4byte 0x03007FFC
_0800125C: .4byte 0x03000A70
_08001260: .4byte 0x08000AA1
_08001264: .4byte 0x04000004
_08001268: .4byte 0x00009F08
_0800126C: .4byte 0x04000202
_08001270: .4byte 0x00002001

	thumb_func_start sub_8001274
sub_8001274: @ 0x08001274
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

	thumb_func_start sub_8001334
sub_8001334: @ 0x08001334
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

	thumb_func_start sub_8001350
sub_8001350: @ 0x08001350
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

	thumb_func_start sub_80013B8
sub_80013B8: @ 0x080013B8
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
	bl sub_8001350
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8001334
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
	bl sub_8001350
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8001334
	adds r0, r5, r0
	cmp r0, sb
	ble _08001470
	adds r5, r6, #0
	adds r7, #0xb
_08001470:
	ldrh r0, [r4]
	bl sub_8001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	bl sub_8001274
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

	thumb_func_start sub_80014A4
sub_80014A4: @ 0x080014A4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	adds r4, r0, #0
	b _080014CE
_080014B2:
	ldrh r0, [r4]
	bl sub_8001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8001274
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
_080014DC:
	.byte 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0x46, 0x0D, 0x1C, 0x91, 0x46, 0x1B, 0x04, 0x1B, 0x0C
	.byte 0x98, 0x46, 0x51, 0x46, 0x00, 0x24, 0x00, 0x29, 0x07, 0xD0, 0x01, 0x34, 0x08, 0x1C, 0x0A, 0x21
	.byte 0x01, 0xF0, 0x5A, 0xFE, 0x01, 0x1C, 0x00, 0x29, 0xF7, 0xD1, 0x00, 0x2C, 0x0D, 0xD1, 0x30, 0x20
	.byte 0xFF, 0xF7, 0x1E, 0xFF, 0x03, 0x1C, 0x1B, 0x04, 0x1B, 0x0C, 0x28, 0x1C, 0x49, 0x46, 0x42, 0x46
	.byte 0xFF, 0xF7, 0xA8, 0xFE, 0x02, 0x1C, 0x69, 0x1C, 0x8D, 0x18, 0x62, 0x1E, 0x00, 0x2A, 0x24, 0xDB
	.byte 0x51, 0x46, 0x6E, 0x1C, 0x57, 0x1E, 0x00, 0x2A, 0x08, 0xDD, 0x14, 0x1C, 0x08, 0x1C, 0x0A, 0x21
	.byte 0x01, 0xF0, 0x3A, 0xFE, 0x01, 0x1C, 0x01, 0x3C, 0x00, 0x2C, 0xF7, 0xD1, 0x08, 0x1C, 0x0A, 0x21
	.byte 0x01, 0xF0, 0x6E, 0xFE, 0x01, 0x1C, 0x30, 0x30, 0x00, 0x04, 0x00, 0x0C, 0xFF, 0xF7, 0xF8, 0xFE
	.byte 0x03, 0x1C, 0x1B, 0x04, 0x1B, 0x0C, 0x28, 0x1C, 0x49, 0x46, 0x42, 0x46, 0xFF, 0xF7, 0x82, 0xFE
	.byte 0x01, 0x1C, 0x75, 0x18, 0x3A, 0x1C, 0x00, 0x2A, 0xDA, 0xDA, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_8001588
sub_8001588: @ 0x08001588
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

	thumb_func_start sub_80015A0
sub_80015A0: @ 0x080015A0
	ldr r0, _080015AC @ =0x04000208
	ldr r1, _080015B0 @ =0x03000256
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080015AC: .4byte 0x04000208
_080015B0: .4byte 0x03000256

	thumb_func_start sub_80015B4
sub_80015B4: @ 0x080015B4
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

	thumb_func_start sub_80015DC
sub_80015DC: @ 0x080015DC
	push {r4, r5, lr}
	ldr r5, _08001608 @ =0x03000240
	movs r0, #0
	strh r0, [r5]
	bl sub_8001588
	bl sub_800274C
	bl sub_800277C
	ldr r4, _0800160C @ =0x03000254
	strb r0, [r4]
	bl sub_80015A0
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
	bl sub_80016B0
	ldr r5, _08001640 @ =0x03000240
	ldrh r0, [r5]
	cmp r0, #0
	bne _08001634
	adds r0, r4, #0
	bl sub_80016DC
_08001632:
	strh r0, [r5]
_08001634:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800163C: .4byte 0x03000248
_08001640: .4byte 0x03000240

	thumb_func_start sub_8001644
sub_8001644:
	ldr r0, _0800164C
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0800164C: .4byte 0x03000240

_08001650: @ sub_8001650 is hidden here
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x05, 0x48, 0x01, 0x88, 0xFF, 0x20, 0x00, 0x01, 0x08, 0x40, 0x00, 0x28
	.byte 0x08, 0xD0, 0x11, 0x1C, 0x02, 0x48, 0x1C, 0xC8, 0x1C, 0xC1, 0x06, 0xE0, 0x40, 0x02, 0x00, 0x03
	.byte 0x2C, 0x3A, 0x00, 0x08, 0x10, 0x1C, 0x00, 0xF0, 0x1B, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_8001680
sub_8001680: @ 0x08001680
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8001588
	adds r0, r4, #0
	bl sub_8002A4C
	bl sub_80015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8001698
sub_8001698: @ 0x08001698
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8001588
	adds r0, r4, #0
	bl sub_80028D8
	bl sub_80015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80016B0
sub_80016B0: @ 0x080016B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8001698
	adds r0, r4, #0
	bl sub_8001680
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80016C4
sub_80016C4: @ 0x080016C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8001588
	adds r0, r4, #0
	bl sub_8002AFC
	bl sub_80015A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80016DC
sub_80016DC: @ 0x080016DC
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
	bl sub_80015B4
	cmp r0, #0xff
	bne _08001710
	movs r0, #0x40
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08001710:
	ldrb r0, [r6, #1]
	bl sub_80015B4
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
	bl sub_80015B4
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
	bl sub_80015B4
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
	bl sub_80015B4
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
	bl sub_80015B4
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

	thumb_func_start sub_80017C4
sub_80017C4: @ 0x080017D8
	push {lr}
	bl sub_8001588
	bl sub_8002854
	bl sub_80015A0
	pop {r0}
	bx r0

	thumb_func_start sub_80017D8
sub_80017D8: @ 0x080017D8
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
	bl DivRem
	orrs r4, r0
	adds r0, r4, #0
	b _080017FE
_080017FC:
	movs r0, #0xff
_080017FE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8001804
sub_8001804: @ 0x08001804
	push {r4, lr}
	ldr r4, _0800181C @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800181C: .4byte 0x03000248

	thumb_func_start sub_8001820
sub_8001820: @ 0x08001820
	push {r4, lr}
	ldr r4, _08001838 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4, #1]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001838: .4byte 0x03000248

	thumb_func_start sub_800183C
sub_800183C: @ 0x0800183C
	push {r4, lr}
	ldr r4, _08001854 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4, #2]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001854: .4byte 0x03000248

	thumb_func_start sub_8001858
sub_8001858: @ 0x08001858
	push {r4, lr}
	ldr r4, _08001870 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4, #4]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001870: .4byte 0x03000248

	thumb_func_start sub_8001874
sub_8001874: @ 0x08001874
	push {r4, lr}
	ldr r4, _0800188C @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4, #5]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800188C: .4byte 0x03000248

	thumb_func_start sub_8001890
sub_8001890: @ 0x08001890
	push {r4, lr}
	ldr r4, _080018A8 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	ldrb r0, [r4, #6]
	bl sub_80015B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080018A8: .4byte 0x03000248

	thumb_func_start sub_80018AC
sub_80018AC: @ 0x080018AC
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	blt _080018CC
	ldr r4, _080018D4 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_80016C4
_080018CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080018D4: .4byte 0x03000248

	thumb_func_start sub_80018D8
sub_80018D8: @ 0x080018D8
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0xb
	bhi _080018FA
	ldr r4, _08001900 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80016C4
_080018FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001900: .4byte 0x03000248

	thumb_func_start sub_8001904
sub_8001904: @ 0x08001904
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08001926
	ldr r4, _0800192C @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #2]
	adds r0, r4, #0
	bl sub_80016C4
_08001926:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800192C: .4byte 0x03000248

	thumb_func_start sub_8001930
sub_8001930: @ 0x08001930
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x18
	bhi _08001950
	ldr r4, _08001958 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80016C4
_08001950:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001958: .4byte 0x03000248

	thumb_func_start sub_800195C
sub_800195C: @ 0x0800195C
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _0800197C
	ldr r4, _08001984 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_80016C4
_0800197C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001984: .4byte 0x03000248

	thumb_func_start sub_8001988
sub_8001988: @ 0x08001988
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _080019A8
	ldr r4, _080019B0 @ =0x03000248
	adds r0, r4, #0
	bl sub_80016B0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #6]
	adds r0, r4, #0
	bl sub_80016C4
_080019A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080019B0: .4byte 0x03000248

	thumb_func_start sub_80019B4
sub_80019B4: @ 0x080019B4
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

	thumb_func_start sub_8001A30
sub_8001A30: @ 0x08001A30
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #3
	lsls r4, r4, #1
	add r4, r8
	mov r0, sb
	movs r1, #0xa
	bl __modsi3
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #6
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl __modsi3
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r5, #9
	lsls r5, r5, #1
	add r5, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl __modsi3
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

	thumb_func_start sub_8001B10
sub_8001B10: @ 0x08001B10
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #1
	lsls r4, r4, #1
	add r4, r8
	mov r0, sb
	movs r1, #0xa
	bl __modsi3
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r4, r5, #4
	lsls r4, r4, #1
	add r4, r8
	mov r0, sl
	movs r1, #0xa
	bl __modsi3
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
	bl __divsi3
	adds r0, #0x30
	orrs r0, r6
	strh r0, [r4]
	adds r5, #7
	lsls r5, r5, #1
	add r5, r8
	adds r0, r7, #0
	movs r1, #0xa
	bl __modsi3
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

	thumb_func_start sub_8001BD4
sub_8001BD4: @ 0x08001BD4
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

	thumb_func_start sub_8001C0C
sub_8001C0C: @ 0x08001C0C
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

	thumb_func_start sub_8001C34
sub_8001C34: @ 0x08001C34
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

	thumb_func_start sub_8001C68
sub_8001C68: @ 0x08001C68
	ldr r1, _08001C7C @ =REG_DMA3SAD_L
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
_08001C7C: .4byte REG_DMA3SAD_L
_08001C80: .4byte 0x03000258
_08001C84: .4byte 0x84000200

	thumb_func_start sub_8001C88
sub_8001C88: @ 0x08001C88
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

	thumb_func_start sub_8001CC4
sub_8001CC4: @ 0x08001CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_80021E8
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
	bl sub_8001C88
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
	bl sub_80021FC
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
	bl sub_80021E8
	cmp r0, #0
	bne _08001D48
	b _08002092
_08001D48:
	adds r0, r7, #0
	bl sub_80021E8
	cmp r0, #0
	beq _08001D54
	b _080020A2
_08001D54:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _08001D64
	adds r0, r7, #0
	bl sub_8001C88
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
	bl sub_8002100
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
	bl sub_80020B4
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
	bl sub_80020B4
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
	bl sub_8001C88
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
	bl sub_8001C88
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
	bl sub_80020B4
	adds r5, r0, #0
	cmp r5, #0
	bne _080020A4
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080020A2
_08002092:
	bl sub_8002300
	b _08001CEE
_08002098:
	adds r0, r7, #0
	bl sub_8001C88
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

	thumb_func_start sub_80020B4
sub_80020B4: @ 0x080020B4
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
	bl sub_8001C88
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_080020F8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8002100
sub_8002100: @ 0x08002100
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08002112
	adds r0, r1, #0
	bl sub_8001C88
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

	thumb_func_start sub_8002124
sub_8002124: @ 0x08002124
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
	bl sub_8001C88
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

	thumb_func_start sub_80021E8
sub_80021E8: @ 0x080021E8
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

	thumb_func_start sub_80021FC
sub_80021FC: @ 0x080021FC
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
	bl sub_80020B4
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
	bl sub_8001C88
	movs r0, #0x71
	b _080022E0
_080022DE:
	movs r0, #0
_080022E0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80022E8
sub_80022E8: @ 0x080022E8
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

	thumb_func_start sub_8002300
sub_8002300: @ 0x08002300
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
	bl sub_80022E8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002334: .4byte 0x04000128
_08002338: .4byte 0x0000795C
_0800233C: @ There are more functions hidden here
	.byte 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x81, 0xB0, 0x33, 0x4B, 0x00, 0x24, 0x1C, 0x80, 0x32, 0x4A, 0x11, 0x88
	.byte 0x32, 0x48, 0x08, 0x40, 0x10, 0x80, 0x01, 0x20, 0x18, 0x80, 0x31, 0x48, 0x04, 0x80, 0xD8, 0x3A
	.byte 0x80, 0x20, 0x80, 0x01, 0x10, 0x60, 0x10, 0x88, 0x2E, 0x4B, 0x19, 0x1C, 0x08, 0x43, 0x10, 0x80
	.byte 0x00, 0x20, 0x00, 0x90, 0x2C, 0x4C, 0x2D, 0x4A, 0x68, 0x46, 0x21, 0x1C, 0x00, 0xF0, 0xC8, 0xF9
	.byte 0x2B, 0x48, 0x2C, 0x49, 0x2C, 0x4A, 0x00, 0xF0, 0xC3, 0xF9, 0x2C, 0x48, 0x2C, 0x49, 0x2D, 0x4A
	.byte 0x00, 0xF0, 0xBE, 0xF9, 0x01, 0x20, 0x40, 0x42, 0x60, 0x61, 0x20, 0x1C, 0x60, 0x30, 0xA0, 0x62
	.byte 0x18, 0x30, 0xE0, 0x62, 0x00, 0x23, 0x25, 0x1C, 0xC0, 0x35, 0x00, 0x22, 0x30, 0x27, 0x3F, 0x19
	.byte 0xB8, 0x46, 0x90, 0x20, 0x00, 0x19, 0x84, 0x46, 0x26, 0x1C, 0xA8, 0x36, 0x40, 0x27, 0x3F, 0x19
	.byte 0xB9, 0x46, 0x99, 0x00, 0x67, 0x46, 0xD0, 0x19, 0x47, 0x46, 0x04, 0x37, 0xB8, 0x46, 0x04, 0x3F
	.byte 0x01, 0xC7, 0x90, 0x19, 0x4F, 0x46, 0x04, 0x37, 0xB9, 0x46, 0x04, 0x3F, 0x01, 0xC7, 0x20, 0x1C
	.byte 0x50, 0x30, 0x09, 0x18, 0x0D, 0x60, 0x48, 0x35, 0x48, 0x32, 0x01, 0x33, 0x03, 0x2B, 0xE8, 0xDD
	.byte 0x00, 0x20, 0x08, 0x4B, 0x18, 0x80, 0x08, 0x4A, 0x10, 0x88, 0x80, 0x21, 0x08, 0x43, 0x10, 0x80
	.byte 0x01, 0x20, 0x18, 0x80, 0x01, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x08, 0x02, 0x00, 0x04, 0x00, 0x02, 0x00, 0x04, 0x3F, 0xFF, 0x00, 0x00
	.byte 0x34, 0x01, 0x00, 0x04, 0x03, 0x40, 0x00, 0x00, 0x50, 0x10, 0x00, 0x03, 0x6C, 0x00, 0x00, 0x05
	.byte 0xD4, 0x01, 0x00, 0x08, 0x00, 0x12, 0x00, 0x03, 0x10, 0x00, 0x00, 0x04, 0x14, 0x02, 0x00, 0x08
	.byte 0x10, 0x0F, 0x00, 0x03, 0x50, 0x00, 0x00, 0x04, 0x00, 0xB5, 0x04, 0x49, 0x08, 0x78, 0x00, 0x28
	.byte 0x01, 0xD0, 0x01, 0x20, 0x08, 0x72, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x50, 0x10, 0x00, 0x03
	.byte 0x10, 0xB5, 0x0C, 0x4B, 0x00, 0x24, 0x1C, 0x80, 0x0B, 0x4A, 0x11, 0x88, 0x0B, 0x48, 0x08, 0x40
	.byte 0x10, 0x80, 0x01, 0x20, 0x18, 0x80, 0x0A, 0x49, 0x0A, 0x4A, 0x10, 0x1C, 0x08, 0x80, 0x1C, 0x39
	.byte 0x09, 0x48, 0x08, 0x60, 0xF6, 0x31, 0xC0, 0x20, 0x08, 0x80, 0x08, 0x48, 0x04, 0x72, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x08, 0x02, 0x00, 0x04, 0x00, 0x02, 0x00, 0x04, 0x3F, 0xFF, 0x00, 0x00
	.byte 0x28, 0x01, 0x00, 0x04, 0x03, 0x20, 0x00, 0x00, 0xFC, 0xB1, 0x00, 0x00, 0x50, 0x10, 0x00, 0x03
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x80, 0x46, 0x8C, 0x46, 0x06, 0x4E, 0x35, 0x68, 0x06, 0x48
	.byte 0x42, 0x78, 0x07, 0x1C, 0x01, 0x2A, 0x3D, 0xD0, 0x01, 0x2A, 0x07, 0xDC, 0x00, 0x2A, 0x08, 0xD0
	.byte 0x56, 0xE0, 0x00, 0x00, 0x28, 0x01, 0x00, 0x04, 0x50, 0x10, 0x00, 0x03, 0x02, 0x2A, 0x49, 0xD0
	.byte 0x4E, 0xE0, 0x30, 0x21, 0x28, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x29, 0xD1, 0x88, 0x20, 0x2C, 0x1C
	.byte 0x04, 0x40, 0x08, 0x2C, 0x44, 0xD1, 0x04, 0x21, 0x28, 0x1C, 0x08, 0x40, 0x00, 0x06, 0x02, 0x0E
	.byte 0x00, 0x2A, 0x1D, 0xD1, 0x79, 0x69, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x18, 0xD1, 0x12, 0x4B
	.byte 0x1A, 0x80, 0x12, 0x4A, 0x11, 0x88, 0x12, 0x48, 0x08, 0x40, 0x10, 0x80, 0x10, 0x88, 0x40, 0x21
	.byte 0x08, 0x43, 0x10, 0x80, 0x01, 0x20, 0x18, 0x80, 0x71, 0x78, 0x41, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x70, 0x70, 0x0C, 0x49, 0xC0, 0x20, 0x08, 0x80, 0xF6, 0x39, 0x0B, 0x48, 0x08, 0x60, 0x3C, 0x70
	.byte 0x01, 0x20, 0x78, 0x70, 0x09, 0x49, 0x88, 0x78, 0x00, 0x28, 0x13, 0xD0, 0x88, 0x7A, 0x07, 0x28
	.byte 0x0E, 0xD8, 0x01, 0x30, 0x88, 0x72, 0x0D, 0xE0, 0x08, 0x02, 0x00, 0x04, 0x00, 0x02, 0x00, 0x04
	.byte 0x7F, 0xFF, 0x00, 0x00, 0x02, 0x02, 0x00, 0x04, 0xFC, 0xB1, 0x00, 0x00, 0x50, 0x10, 0x00, 0x03
	.byte 0x02, 0x20, 0x48, 0x70, 0x60, 0x46, 0x00, 0xF0, 0x6B, 0xF8, 0x40, 0x46, 0x00, 0xF0, 0x2E, 0xF8
	.byte 0x07, 0x49, 0xC8, 0x7A, 0x01, 0x30, 0xC8, 0x72, 0xCB, 0x78, 0x88, 0x78, 0x02, 0x02, 0x08, 0x78
	.byte 0x0F, 0x1C, 0x08, 0x28, 0x06, 0xD1, 0x80, 0x20, 0x10, 0x43, 0x18, 0x43, 0x04, 0xE0, 0x00, 0x00
	.byte 0x50, 0x10, 0x00, 0x03, 0x18, 0x1C, 0x10, 0x43, 0x02, 0x1C, 0x78, 0x7A, 0x00, 0x28, 0x02, 0xD0
	.byte 0x80, 0x20, 0x40, 0x01, 0x02, 0x43, 0xB8, 0x7A, 0xC0, 0x08, 0xC1, 0x03, 0xA8, 0x06, 0x80, 0x0F
	.byte 0x03, 0x28, 0x04, 0xD9, 0x80, 0x20, 0x80, 0x01, 0x08, 0x43, 0x10, 0x43, 0x01, 0xE0, 0x10, 0x1C
	.byte 0x08, 0x43, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_80025DC
sub_80025DC: @ 0x080025DC
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

	thumb_func_start sub_8002650
sub_8002650: @ 0x08002650
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
	bl _call_via_r0
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
