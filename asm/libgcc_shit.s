	.include "asm/macros/function.inc"
	.syntax unified

	thumb_func_start __udivsi3
__udivsi3: @ 0x080031B8
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
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x08003230
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
	bl __div0
	movs r0, #0
	pop {pc}
