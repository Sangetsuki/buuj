	.include "asm/macros/function.inc"
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
	ldr r0, _08000408 @ =waiting1
	b _0800042E
	.align 2, 0
_08000408: .4byte waiting1
_0800040C:
	ldr r0, _08000410 @ =waiting2
	b _0800042E
	.align 2, 0
_08000410: .4byte waiting2
_08000414:
	ldr r0, _08000418 @ =transferring
	b _0800042E
	.align 2, 0
_08000418: .4byte transferring
_0800041C:
	ldr r0, _08000420 @ =checking
	b _0800042E
	.align 2, 0
_08000420: .4byte checking
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
sub_8000770: @ 0x08000770 this function creates both pokeballs icons
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
	ldr r0, _080008FC @ =pokeballs
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
_080008FC: .4byte pokeballs
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
	bl MultiBootStartMaster
_080009F4:
	ldr r4, _08000A20 @ =0x03000AC0
	adds r0, r4, #0
	bl MultiBootMain
	ldr r1, _08000A2C @ =0x03000AA8
	str r0, [r1]
	adds r0, r4, #0
	bl MultiBootCheckComplete
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
	bl MultiBootInit
_08000A56:
	movs r0, #1
_08000A58:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08000A60: .4byte 0x02000004
