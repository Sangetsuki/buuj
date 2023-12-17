	.include "asm/macros.inc"
  .syntax unified
	
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

