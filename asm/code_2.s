	.include "asm/macro.inc"
	.syntax unified

	thumb_func_start sub_800277C
sub_800277C: @ 0x0800277C
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_80028D8
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
	bl sub_8002854
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
	bl sub_8002B98
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
	bl sub_8002854
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

	thumb_func_start sub_8002854
sub_8002854: @ 0x08002854
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
	bl sub_8002E1C
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
	bl sub_80029A4
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

	thumb_func_start sub_80028D8
sub_80028D8: @ 0x080028D8
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
	bl sub_8002E1C
	ldr r0, _08002998 @ =0x080000C6
	movs r1, #5
	strh r1, [r0]
	bl sub_8002F60
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

	thumb_func_start sub_80029A4
sub_80029A4: @ 0x080029A4
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
	bl sub_8002E1C
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_8002EC0
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

	thumb_func_start sub_8002A4C
sub_8002A4C: @ 0x08002A4C
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
	bl sub_8002E1C
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
	bl sub_8002F60
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

	thumb_func_start sub_8002AFC
sub_8002AFC: @ 0x08002AFC
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
	bl sub_8002E1C
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
	bl sub_8002EC0
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

	thumb_func_start sub_8002B98
sub_8002B98: @ 0x08002B98
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
	bl sub_8002E1C
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
	bl sub_8002F60
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
_08002C4C: @ there are two functions in these bytes
	.byte 0x80, 0xB5, 0x82, 0xB0
	.byte 0x6F, 0x46, 0x38, 0x60, 0x02, 0x48, 0x01, 0x78, 0x01, 0x29, 0x03, 0xD1, 0x00, 0x20, 0x3F, 0xE0
	.byte 0x62, 0x0A, 0x00, 0x03, 0x0B, 0x48, 0x01, 0x21, 0x01, 0x70, 0x0B, 0x48, 0x01, 0x21, 0x01, 0x80
	.byte 0x09, 0x48, 0x05, 0x21, 0x01, 0x80, 0x09, 0x48, 0x07, 0x21, 0x01, 0x80, 0x66, 0x20, 0x00, 0xF0
	.byte 0xCD, 0xF8, 0x38, 0x1D, 0x00, 0x21, 0x01, 0x70, 0x38, 0x1D, 0x01, 0x78, 0x02, 0x29, 0x07, 0xD9
	.byte 0x17, 0xE0, 0x00, 0x00, 0x62, 0x0A, 0x00, 0x03, 0xC4, 0x00, 0x00, 0x08, 0xC6, 0x00, 0x00, 0x08
	.byte 0x38, 0x1D, 0x01, 0x78, 0x3A, 0x68, 0x88, 0x18, 0x01, 0x1D, 0x0A, 0x78, 0x10, 0x1C, 0x00, 0xF0
	.byte 0x07, 0xF9, 0x39, 0x1D, 0x38, 0x1D, 0x39, 0x1D, 0x0A, 0x78, 0x51, 0x1C, 0x0A, 0x1C, 0x02, 0x70
	.byte 0xE2, 0xE7, 0x05, 0x48, 0x01, 0x21, 0x01, 0x80, 0x03, 0x48, 0x01, 0x21, 0x01, 0x80, 0x03, 0x48
	.byte 0x00, 0x21, 0x01, 0x70, 0x01, 0x20, 0x03, 0xE0, 0xC4, 0x00, 0x00, 0x08, 0x62, 0x0A, 0x00, 0x03
	.byte 0x02, 0xB0, 0x80, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x90, 0xB5, 0x83, 0xB0, 0x6F, 0x46, 0x38, 0x60
	.byte 0x02, 0x48, 0x01, 0x78, 0x01, 0x29, 0x03, 0xD1, 0x00, 0x20, 0x8B, 0xE0, 0x62, 0x0A, 0x00, 0x03
	.byte 0x19, 0x48, 0x01, 0x21, 0x01, 0x70, 0x38, 0x1C, 0x08, 0x30, 0x39, 0x68, 0x0A, 0x7A, 0x0F, 0x23
	.byte 0x11, 0x1C, 0x19, 0x40, 0x3A, 0x68, 0x13, 0x7A, 0x1A, 0x09, 0x13, 0x1C, 0x0F, 0x24, 0x1A, 0x1C
	.byte 0x22, 0x40, 0x14, 0x1C, 0x23, 0x06, 0x1A, 0x0E, 0x14, 0x1C, 0xA3, 0x00, 0x9B, 0x18, 0x5A, 0x00
	.byte 0x89, 0x18, 0x02, 0x78, 0x00, 0x23, 0x1A, 0x40, 0x13, 0x1C, 0x1A, 0x1C, 0x0A, 0x43, 0x11, 0x1C
	.byte 0x01, 0x70, 0x38, 0x1C, 0x08, 0x30, 0x01, 0x78, 0x0B, 0x29, 0x0F, 0xD8, 0x38, 0x1C, 0x08, 0x30
	.byte 0x39, 0x68, 0x02, 0x78, 0x00, 0x23, 0x1A, 0x40, 0x13, 0x1C, 0x09, 0x7A, 0x1A, 0x1C, 0x0A, 0x43
	.byte 0x11, 0x1C, 0x01, 0x70, 0x11, 0xE0, 0x00, 0x00, 0x62, 0x0A, 0x00, 0x03, 0x38, 0x1C, 0x08, 0x30
	.byte 0x39, 0x68, 0x0A, 0x7A, 0x80, 0x23, 0x11, 0x1C, 0x19, 0x43, 0x02, 0x78, 0x00, 0x23, 0x1A, 0x40
	.byte 0x13, 0x1C, 0x1A, 0x1C, 0x0A, 0x43, 0x11, 0x1C, 0x01, 0x70, 0x38, 0x1C, 0x08, 0x30, 0x39, 0x68
	.byte 0x42, 0x78, 0x00, 0x23, 0x1A, 0x40, 0x13, 0x1C, 0x49, 0x7A, 0x1A, 0x1C, 0x0A, 0x43, 0x11, 0x1C
	.byte 0x41, 0x70, 0x0A, 0x48, 0x01, 0x21, 0x01, 0x80, 0x08, 0x48, 0x05, 0x21, 0x01, 0x80, 0x08, 0x48
	.byte 0x07, 0x21, 0x01, 0x80, 0x68, 0x20, 0x00, 0xF0, 0x31, 0xF8, 0x38, 0x1D, 0x00, 0x21, 0x01, 0x70
	.byte 0x38, 0x1D, 0x01, 0x78, 0x01, 0x29, 0x05, 0xD9, 0x15, 0xE0, 0x00, 0x00, 0xC4, 0x00, 0x00, 0x08
	.byte 0xC6, 0x00, 0x00, 0x08, 0x38, 0x1C, 0x08, 0x30, 0x39, 0x1D, 0x0A, 0x78, 0x80, 0x18, 0x01, 0x78
	.byte 0x08, 0x1C, 0x00, 0xF0, 0x6D, 0xF8, 0x39, 0x1D, 0x38, 0x1D, 0x39, 0x1D, 0x0A, 0x78, 0x51, 0x1C
	.byte 0x0A, 0x1C, 0x02, 0x70, 0xE4, 0xE7, 0x05, 0x48, 0x01, 0x21, 0x01, 0x80, 0x03, 0x48, 0x01, 0x21
	.byte 0x01, 0x80, 0x03, 0x48, 0x00, 0x21, 0x01, 0x70, 0x01, 0x20, 0x03, 0xE0, 0xC4, 0x00, 0x00, 0x08
	.byte 0x62, 0x0A, 0x00, 0x03, 0x03, 0xB0, 0x90, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_8002E1C
sub_8002E1C: @ 0x08002E1C
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

	thumb_func_start sub_8002EC0
sub_8002EC0: @ 0x08002EC0
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

	thumb_func_start sub_8002F60
sub_8002F60: @ 0x08002F60
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
