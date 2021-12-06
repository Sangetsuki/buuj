	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

	thumb_func_start sub_80019B4
sub_80019B4: @ 0x080019B4
	ldr r0, _08001A04 @ =0x040000D4
	ldr r1, _08001A08 @ =gUnknown_8004270
	str r1, [r0]
	ldr r1, _08001A0C @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _08001A10 @ =0x84000700
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001A14 @ =gUnknown_8004070
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08001A18 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001A1C @ =gUnknown_8003b70
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
_08001A08: .4byte gUnknown_8004270
_08001A0C: .4byte 0x06008000
_08001A10: .4byte 0x84000700
_08001A14: .4byte gUnknown_8004070
_08001A18: .4byte 0x84000080
_08001A1C: .4byte gUnknown_8003b70
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