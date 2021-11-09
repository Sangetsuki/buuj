	.include "asm/macro.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

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

	thumb_func_start rtc_intr_disable
rtc_intr_disable: @ 0x08001588
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

	thumb_func_start rtc_intr_enable
rtc_intr_enable: @ 0x080015A0
	ldr r0, _080015AC @ =0x04000208
	ldr r1, _080015B0 @ =0x03000256
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080015AC: .4byte 0x04000208
_080015B0: .4byte 0x03000256

	thumb_func_start bcd_to_hex
bcd_to_hex: @ 0x080015B4
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

	thumb_func_start rtc_probe_status
rtc_probe_status: @ 0x080015DC
	push {r4, r5, lr}
	ldr r5, _08001608 @ =0x03000240
	movs r0, #0
	strh r0, [r5]
	bl rtc_intr_disable
	bl SiiRtcUnprotect
	bl SiiRtcProbe
	ldr r4, _0800160C @ =0x03000254
	strb r0, [r4]
	bl rtc_intr_enable
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
	bl rtc_get_status_and_datetime
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

	thumb_func_start rtc_get_probe_status
rtc_get_probe_status:
	ldr r0, _0800164C
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0800164C: .4byte 0x03000240

_08001650: @ sub_8001650 is hidden here
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x05, 0x48, 0x01, 0x88, 0xFF, 0x20, 0x00, 0x01, 0x08, 0x40, 0x00, 0x28
	.byte 0x08, 0xD0, 0x11, 0x1C, 0x02, 0x48, 0x1C, 0xC8, 0x1C, 0xC1, 0x06, 0xE0, 0x40, 0x02, 0x00, 0x03
	.byte 0x2C, 0x3A, 0x00, 0x08, 0x10, 0x1C, 0x00, 0xF0, 0x1B, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start rtc_get_datetime
rtc_get_datetime: @ 0x08001680
	push {r4, lr}
	adds r4, r0, #0
	bl rtc_intr_disable
	adds r0, r4, #0
	bl SiiRtcGetDateTime
	bl rtc_intr_enable
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start rtc_get_status
rtc_get_status: @ 0x08001698
	push {r4, lr}
	adds r4, r0, #0
	bl rtc_intr_disable
	adds r0, r4, #0
	bl SiiRtcGetStatus
	bl rtc_intr_enable
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start rtc_get_status_and_datetime
rtc_get_status_and_datetime: @ 0x080016B0
	push {r4, lr}
	adds r4, r0, #0
	bl rtc_get_status
	adds r0, r4, #0
	bl rtc_get_datetime
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start rtc_set_status
rtc_set_status: @ 0x080016C4
	push {r4, lr}
	adds r4, r0, #0
	bl rtc_intr_disable
	adds r0, r4, #0
	bl SiiRtcSetDateTime
	bl rtc_intr_enable
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
_080017C0: .4byte 0x08003A38

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
	ldr r4, _0800181C @ =0x03000248
	adds r0, r4, #0
	bl rtc_get_status_and_datetime
	ldrb r0, [r4]
	bl bcd_to_hex
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
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #1]
	bl bcd_to_hex
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
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #2]
	bl bcd_to_hex
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
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #4]
	bl bcd_to_hex
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
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #5]
	bl bcd_to_hex
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
	bl rtc_get_status_and_datetime
	ldrb r0, [r4, #6]
	bl bcd_to_hex
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
_0800192C: .4byte 0x03000248

	thumb_func_start sub_8001930
sub_8001930: @ 0x08001930
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x18
	bhi _08001950
	ldr r4, _08001958 @ =0x03000248
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
_08001958: .4byte 0x03000248

	thumb_func_start sub_800195C
sub_800195C: @ 0x0800195C
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _0800197C
	ldr r4, _08001984 @ =0x03000248
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
_08001984: .4byte 0x03000248

	thumb_func_start sub_8001988
sub_8001988: @ 0x08001988
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x3b
	bhi _080019A8
	ldr r4, _080019B0 @ =0x03000248
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
