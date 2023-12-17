	.include "asm/macros.inc"
  .syntax unified

	thumb_func_start _divsi3
_divsi3: @ 0x08003050
	cmp r1, #0
	beq _080030D8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08003066
	rsbs r1, r1, #0
_08003066:
	cmp r0, #0
	bpl _0800306C
	rsbs r0, r0, #0
_0800306C:
	cmp r0, r1
	blo _080030CA
	movs r4, #1
	lsls r4, r4, #0x1c
_08003074:
	cmp r1, r4
	bhs _08003082
	cmp r1, r0
	bhs _08003082
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003074
_08003082:
	lsls r4, r4, #3
_08003084:
	cmp r1, r4
	bhs _08003092
	cmp r1, r0
	bhs _08003092
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003084
_08003092:
	cmp r0, r1
	blo _0800309A
	subs r0, r0, r1
	orrs r2, r3
_0800309A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080030A6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080030A6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080030B2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080030B2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080030BE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080030BE:
	cmp r0, #0
	beq _080030CA
	lsrs r3, r3, #4
	beq _080030CA
	lsrs r1, r1, #4
	b _08003092
_080030CA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080030D4
	rsbs r0, r0, #0
_080030D4:
	pop {r4}
	mov pc, lr
_080030D8:
	push {lr}
	bl _div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start _div0
_div0: @ 0x080030E4
	mov pc, lr
	.align 2, 0

	thumb_func_start _modsi3
_modsi3: @ 0x080030E8
	movs r3, #1
	cmp r1, #0
	beq _080031AC
	bpl _080030F2
	rsbs r1, r1, #0
_080030F2:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080030FC
	rsbs r0, r0, #0
_080030FC:
	cmp r0, r1
	blo _080031A0
	movs r4, #1
	lsls r4, r4, #0x1c
_08003104:
	cmp r1, r4
	bhs _08003112
	cmp r1, r0
	bhs _08003112
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003104
_08003112:
	lsls r4, r4, #3
_08003114:
	cmp r1, r4
	bhs _08003122
	cmp r1, r0
	bhs _08003122
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003114
_08003122:
	movs r2, #0
	cmp r0, r1
	blo _0800312A
	subs r0, r0, r1
_0800312A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800313C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800313C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800314E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800314E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08003160
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08003160:
	mov ip, r3
	cmp r0, #0
	beq _0800316E
	lsrs r3, r3, #4
	beq _0800316E
	lsrs r1, r1, #4
	b _08003122
_0800316E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080031A0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08003184
	lsrs r4, r1, #3
	adds r0, r0, r4
_08003184:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08003192
	lsrs r4, r1, #2
	adds r0, r0, r4
_08003192:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080031A0
	lsrs r4, r1, #1
	adds r0, r0, r4
_080031A0:
	pop {r4}
	cmp r4, #0
	bpl _080031A8
	rsbs r0, r0, #0
_080031A8:
	pop {r4}
	mov pc, lr
_080031AC:
	push {lr}
	bl _div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start _udivsi3
_udivsi3: @ 0x080031B8
	cmp r1, #0
	beq _08003226
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08003220
	movs r4, #1
	lsls r4, r4, #0x1c
_080031CA:
	cmp r1, r4
	bhs _080031D8
	cmp r1, r0
	bhs _080031D8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080031CA
_080031D8:
	lsls r4, r4, #3
_080031DA:
	cmp r1, r4
	bhs _080031E8
	cmp r1, r0
	bhs _080031E8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080031DA
_080031E8:
	cmp r0, r1
	blo _080031F0
	subs r0, r0, r1
	orrs r2, r3
_080031F0:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080031FC
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080031FC:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08003208
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08003208:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08003214
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08003214:
	cmp r0, #0
	beq _08003220
	lsrs r3, r3, #4
	beq _08003220
	lsrs r1, r1, #4
	b _080031E8
_08003220:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08003226:
	push {lr}
	bl _div0
	movs r0, #0
	pop {pc}

	thumb_func_start _umodsi3
_umodsi3: @ 0x08003230
	cmp r1, #0
	beq _080032E6
	movs r3, #1
	cmp r0, r1
	bhs _0800323C
	mov pc, lr
_0800323C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08003242:
	cmp r1, r4
	bhs _08003250
	cmp r1, r0
	bhs _08003250
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08003242
_08003250:
	lsls r4, r4, #3
_08003252:
	cmp r1, r4
	bhs _08003260
	cmp r1, r0
	bhs _08003260
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08003252
_08003260:
	movs r2, #0
	cmp r0, r1
	blo _08003268
	subs r0, r0, r1
_08003268:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800327A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800327A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800328C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800328C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0800329E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800329E:
	mov ip, r3
	cmp r0, #0
	beq _080032AC
	lsrs r3, r3, #4
	beq _080032AC
	lsrs r1, r1, #4
	b _08003260
_080032AC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080032B8
	pop {r4}
	mov pc, lr
_080032B8:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080032C6
	lsrs r4, r1, #3
	adds r0, r0, r4
_080032C6:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080032D4
	lsrs r4, r1, #2
	adds r0, r0, r4
_080032D4:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080032E2
	lsrs r4, r1, #1
	adds r0, r0, r4
_080032E2:
	pop {r4}
	mov pc, lr
_080032E6:
	push {lr}
	bl _div0
	movs r0, #0
	pop {pc}
