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

	thumb_func_start sub_8001804
sub_8001804: @ 0x08001804
	push {r4, lr}
	ldr r4, _0800181C @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800181C: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001820
sub_8001820: @ 0x08001820
	push {r4, lr}
	ldr r4, _08001838 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #1]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001838: .4byte sRtcInfoBuffer

	thumb_func_start sub_800183C
sub_800183C: @ 0x0800183C
	push {r4, lr}
	ldr r4, _08001854 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #2]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001854: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001858
sub_8001858: @ 0x08001858
	push {r4, lr}
	ldr r4, _08001870 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #4]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001870: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001874
sub_8001874: @ 0x08001874
	push {r4, lr}
	ldr r4, _0800188C @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #5]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800188C: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001890
sub_8001890: @ 0x08001890
	push {r4, lr}
	ldr r4, _080018A8 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #6]
	bl bcd_to_hex
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080018A8: .4byte sRtcInfoBuffer

	thumb_func_start sub_80018AC
sub_80018AC: @ 0x080018AC
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	blt _080018CC
	ldr r4, _080018D4 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4]
	adds r0, r4, #0
	bl rtc_set_status
_080018CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080018D4: .4byte sRtcInfoBuffer

	thumb_func_start sub_80018D8
sub_80018D8: @ 0x080018D8
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0xb
	bhi _080018FA
	ldr r4, _08001900 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl rtc_set_status
_080018FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001900: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001904
sub_8001904: @ 0x08001904
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08001926
	ldr r4, _0800192C @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #2]
	adds r0, r4, #0
	bl rtc_set_status
_08001926:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800192C: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001930
sub_8001930: @ 0x08001930
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x18
	bhi _08001950
	ldr r4, _08001958 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl rtc_set_status
_08001950:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001958: .4byte sRtcInfoBuffer

	thumb_func_start sub_800195C
sub_800195C: @ 0x0800195C
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _0800197C
	ldr r4, _08001984 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl rtc_set_status
_0800197C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001984: .4byte sRtcInfoBuffer

	thumb_func_start sub_8001988
sub_8001988: @ 0x08001988
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _080019A8
	ldr r4, _080019B0 @ =sRtcInfoBuffer
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80017D8
	strb r0, [r4, #6]
	adds r0, r4, #0
	bl rtc_set_status
_080019A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080019B0: .4byte sRtcInfoBuffer
