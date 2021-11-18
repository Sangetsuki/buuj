	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	
	.syntax unified

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
