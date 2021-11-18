	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

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
	bl bcd_to_hex
	cmp r0, #0xff
	bne _08001710
	movs r0, #0x40
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08001710:
	ldrb r0, [r6, #1]
	bl bcd_to_hex
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
	bl bcd_to_hex
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
	ldr r0, _08001750 @ =sDaysPerMonth
	ldr r0, [r0, #4]
	adds r0, #1
	b _0800175E
	.align 2, 0
_08001750: .4byte sDaysPerMonth
_08001754:
	ldr r0, _080017C0 @ =sDaysPerMonth
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
	bl bcd_to_hex
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
	bl bcd_to_hex
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
	bl bcd_to_hex
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
_080017C0: .4byte sDaysPerMonth

	thumb_func_start rtc_reset
rtc_reset: @ 0x080017D8
	push {lr}
	bl rtc_intr_disable
	bl SiiRtcReset
	bl rtc_intr_enable
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

