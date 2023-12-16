	.include "asm/macros.inc"
  .syntax unified

  thumb_func_start sub_08001C88
sub_08001C88: @ 0x08001C88 MultiBootInit
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
sub_08002300: @ 0x08002300 MultiBootWaitSendDone
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

