	.include "asm/macros.inc"
  .syntax unified

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

