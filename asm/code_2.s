	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

	thumb_func_start sub_8000AA4
sub_8000aa4: @ 0x08000AA4
	push {lr}
	sub sp, #8
	ldr r0, _08000ABC @ =gUnknown_8003b1e
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_80013B8
_08000ABA:
	b _08000ABA
	.align 2, 0
_08000ABC: .4byte gUnknown_8003b1e

	thumb_func_start sub_8000AC0
sub_8000AC0: @ 0x08000AC0
	push {lr}
	sub sp, #8
	ldr r0, _08000AE0 @ =gUnknown_8003b38
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x50
	movs r3, #0xf0
	bl sub_80013B8
_08000AD6:
	bl VBlankIntrWait
	bl sub_8000904
	b _08000AD6
	.align 2, 0
_08000AE0: .4byte gUnknown_8003b38

	thumb_func_start sub_8000AE4
sub_8000AE4: @ 0x08000AE4
	push {r4, r5, lr}
	bl sub_8001804
	adds r4, r0, #0
	bl sub_8001820
	adds r5, r0, #0
	bl sub_800183C
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
	ldr r2, _08000C50 @ =gNewKeys
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
_08000C50: .4byte gNewKeys

	thumb_func_start sub_8000C54
sub_8000C54: @ 0x08000C54
	push {lr}
	ldr r0, _08000C68 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08000C6C
	movs r0, #1
	rsbs r0, r0, #0
	b _08000C7A
	.align 2, 0
_08000C68: .4byte gNewKeys
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
	ldr r0, _08000D58 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08000D2C
	bl sub_8000378
_08000D2C:
	ldr r0, _08000D5C @ =gHeldKeys
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
	ldr r3, _08000D60 @ =gUnknown_8003310
	bl sub_8001C34
	b _08000EE4
	.align 2, 0
_08000D58: .4byte gNewKeys
_08000D5C: .4byte gHeldKeys
_08000D60: .4byte gUnknown_8003310
_08000D64:
	ldr r1, _08000D84 @ =gNewKeys
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
	ldr r3, _08000D88 @ =gUnknown_8003324
	bl sub_8001C34
	b _08000EE4
	.align 2, 0
_08000D84: .4byte gNewKeys
_08000D88: .4byte gUnknown_8003324
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
	ldr r0, _08000E48 @ =gUnknown_2000030
	movs r1, #0x63
	bl sub_8000C18
_08000E08:
	cmp r7, #1
	bne _08000E14
	ldr r0, _08000E4C @ =gUnknown_2000034
	movs r1, #0xc
	bl sub_8000C18
_08000E14:
	cmp r7, #2
	bne _08000E20
	ldr r0, _08000E50 @ =gUnknown_2000038
	movs r1, #0x1f
	bl sub_8000C18
_08000E20:
	cmp r7, #3
	bne _08000E2C
	ldr r0, _08000E54 @ =gUnknown_200003c
	movs r1, #0x63
	bl sub_8000C18
_08000E2C:
	cmp r7, #4
	bne _08000E38
	ldr r0, _08000E58 @ =gUnknown_2000040
	movs r1, #0xc
	bl sub_8000C18
_08000E38:
	cmp r7, #5
	bne _08000EBE
	ldr r0, _08000E5C @ =gUnknown_2000044
	movs r1, #0x1f
	bl sub_8000C18
	b _08000EBE
	.align 2, 0
_08000E48: .4byte gUnknown_2000030
_08000E4C: .4byte gUnknown_2000034
_08000E50: .4byte gUnknown_2000038
_08000E54: .4byte gUnknown_200003c
_08000E58: .4byte gUnknown_2000040
_08000E5C: .4byte gUnknown_2000044
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
	ldr r4, _08000F50 @ =gUnknown_3000030
	ldr r2, _08000F54 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08000F58 @ =gUnknown_3007ffc
	str r4, [r0]
	ldr r1, _08000F5C @ =gUnknown_3000a70
	ldr r2, _08000F60 @ =sub_8000AA0 + 1
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
	ldr r3, _08000F74 @ =gUnknown_8003338
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
_08000F50: .4byte gUnknown_3000030
_08000F54: .4byte 0x04000080
_08000F58: .4byte gUnknown_3007ffc
_08000F5C: .4byte gUnknown_3000a70
_08000F60: .4byte sub_8000AA0 + 1
_08000F64: .4byte 0x04000004
_08000F68: .4byte 0x00009F08
_08000F6C: .4byte 0x04000202
_08000F70: .4byte 0x00002001
_08000F74: .4byte gUnknown_8003338

	thumb_func_start sub_8000F78
sub_8000F78: @ 0x08000F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	mov sb, r5
	ldr r0, _08000FD0 @ =gUnknown_8008a74
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
_08000FD0: .4byte gUnknown_8008a74 // pokemon name table

	thumb_func_start sub_8000FD4
sub_8000FD4: @ 0x08000FD4
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r5, #0
	ldr r0, _080010AC @ =gUnknown_8003b50
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
	ldr r6, _080010B0 @ =gUnknown_3000b10
_08001002:
	adds r4, r5, #0
	bl ReadKeys
	ldr r0, _080010B4 @ =gNewKeys
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
	ldr r2, _080010B4 @ =gNewKeys
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
_080010AC: .4byte gUnknown_8003b50
_080010B0: .4byte gUnknown_3000b10
_080010B4: .4byte gNewKeys
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
	bl rtc_probe_status
	bl sub_8000664
	bl sub_8000770
	ldr r0, _08001194 @ =gUnknown_3000234
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001198 @ =gUnknown_3000230
	str r1, [r0]
	bl sub_8000378
	bl ReadKeys
	ldr r0, _0800119C @ =gHeldKeys
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
	ldr r5, _080011A0 @ =gUnknown_8008a74
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
	ldr r1, _080011AC @ =gUnknown_2000004
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
	ldr r0, _080011B0 @ =gUnknown_3000028
	str r5, [r0]
	ldr r2, _080011B4 @ =gUnknown_3000aa4
	ldr r0, _080011B8 @ =gUnknown_800604c
	adds r0, r6, r0
	ldr r1, [r0]
	str r1, [r2]
	ldr r2, _080011BC @ =gUnknown_3000ab0
	ldr r0, _080011C0 @ =gUnknown_8006074
	adds r0, r6, r0
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, _080011C4 @ =gUnknown_3000ac0
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x4b
	strb r5, [r1]
	bl MultiBootInit
	movs r4, #0x84
	lsls r4, r4, #1
	b _080011E8
	.align 2, 0
_08001194: .4byte gUnknown_3000234
_08001198: .4byte gUnknown_3000230
_0800119C: .4byte gHeldKeys
_080011A0: .4byte gUnknown_8008a74
_080011A4: .4byte 0x00007FFF
_080011A8: .4byte 0x060001DE
_080011AC: .4byte gUnknown_2000004
_080011B0: .4byte gUnknown_3000028
_080011B4: .4byte gUnknown_3000aa4
_080011B8: .4byte gUnknown_800604c
_080011BC: .4byte gUnknown_3000ab0
_080011C0: .4byte gUnknown_8006074
_080011C4: .4byte gUnknown_3000ac0
_080011C8:
	ldr r0, _080011E4 @ =gHeldKeys
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
_080011E4: .4byte gHeldKeys
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
	ldr r4, _08001250 @ =gUnknown_3000030
	ldr r2, _08001254 @ =0x04000080
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08001258 @ =gUnknown_3007ffc
	str r4, [r0]
	ldr r1, _0800125C @ =gUnknown_3000a70
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
_08001250: .4byte gUnknown_3000030
_08001254: .4byte 0x04000080
_08001258: .4byte gUnknown_3007ffc
_0800125C: .4byte gUnknown_3000a70
_08001260: .4byte sub_8000AA0 + 1
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
	ldr r1, _08001330 @ =gUnknown_800609c
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
_08001330: .4byte gUnknown_800609c

	thumb_func_start sub_8001334
sub_8001334: @ 0x08001334
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800134C @ =gUnknown_800609c
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
_0800134C: .4byte gUnknown_800609c

	thumb_func_start sub_8001350
sub_8001350: @ 0x08001350
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _080013A0 @ =gUnknown_80034cc
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r4, _080013A4 @ =gUnknown_8003344
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
_080013A0: .4byte gUnknown_80034cc
_080013A4: .4byte gUnknown_8003344
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

	thumb_func_start sub_80014DC
sub_80014DC: @ 0x080014DC
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
	bl __udivsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _080014FA
_0800150A:
	cmp r4, #0
	bne _0800152A
	movs r0, #0x30
	bl sub_8001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_8001274
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
	bl __udivsi3
	adds r1, r0, #0
	subs r4, #1
	cmp r4, #0
	bne _0800153C
_0800154C:
	adds r0, r1, #0
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8001350
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_8001274
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
