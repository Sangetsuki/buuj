#include "gba/gba.h"
#include "siirtc.h"
#include "naked.h"

static u16 sRtcProbeStatus;
static struct SiiRtcInfo sRtcInfoBuffer;
static u8 sRtcProbeCode;
static u16 sImeBak;
static struct SiiRtcInfo sRtcInfoWork;

void rtc_get_status_and_datetime(struct SiiRtcInfo *);

const struct SiiRtcInfo sDefaultRTC = {
    .year = 0, // 2000
    .month = 1, // January
    .day = 1, // 01
    .dayOfWeek = 0,
    .hour = 0,
    .minute = 0,
    .second = 0,
    .status = 0,
    .alarmHour = 0,
    .alarmMinute = 0
};

void rtc_intr_disable(void)
{
    sImeBak = REG_IME;
    REG_IME = 0;
}

void rtc_intr_enable(void)
{
    REG_IME = sImeBak;
}

s32 bcd_to_hex(u8 a0)
{
    if (a0 >= 0xa0 || (a0 & 0xF) >= 10)
        return 0xFF;
    return ((a0 >> 4) & 0xF) * 10 + (a0 & 0xF);
}

NAKED
void rtc_probe_status(void)
{
    asm_unified("\
    push {r4, r5, lr}\n\
	ldr r5, _08001608 @ =sRtcProbeStatus\n\
	movs r0, #0\n\
	strh r0, [r5]\n\
	bl rtc_intr_disable\n\
	bl SiiRtcUnprotect\n\
	bl SiiRtcProbe\n\
	ldr r4, _0800160C @ =0x03000254\n\
	strb r0, [r4]\n\
	bl rtc_intr_enable\n\
	ldrb r4, [r4]\n\
	movs r0, #0xf\n\
	ands r0, r4\n\
	cmp r0, #1\n\
	beq _08001610\n\
	movs r0, #1\n\
	b _08001632\n\
	.align 2, 0\n\
_08001608: .4byte sRtcProbeStatus\n\
_0800160C: .4byte 0x03000254\n\
_08001610:\n\
	movs r0, #0xf0\n\
	ands r0, r4\n\
	cmp r0, #0\n\
	beq _0800161A\n\
	movs r0, #2\n\
_0800161A:\n\
	strh r0, [r5]\n\
	ldr r4, _0800163C @ =0x03000248\n\
	adds r0, r4, #0\n\
	bl rtc_get_status_and_datetime\n\
	ldr r5, _08001640 @ =sRtcProbeStatus\n\
	ldrh r0, [r5]\n\
	cmp r0, #0\n\
	bne _08001634\n\
	adds r0, r4, #0\n\
	bl sub_80016DC\n\
_08001632:\n\
	strh r0, [r5]\n\
_08001634:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800163C: .4byte 0x03000248\n\
_08001640: .4byte sRtcProbeStatus\n\
    ");
}

u16 rtc_get_probe_status(void)
{
    return sRtcProbeStatus;
}

void sub_8001650(struct SiiRtcInfo * info)
{
    if (sRtcProbeStatus & 0xFF0)
        *info = sDefaultRTC;
    else
        rtc_get_status_and_datetime(info);   
}

void rtc_get_datetime(struct SiiRtcInfo * info)
{
    rtc_intr_disable();
    SiiRtcGetDateTime(info);
    rtc_intr_enable();
}

void rtc_get_status(struct SiiRtcInfo * info)
{
    rtc_intr_disable();
    SiiRtcGetStatus(info);
    rtc_intr_enable();
}

void rtc_get_status_and_datetime(struct SiiRtcInfo * info)
{
    rtc_get_status(info);
    rtc_get_datetime(info);
}

void rtc_set_status(struct SiiRtcInfo * info)
{
    rtc_intr_disable();
    SiiRtcSetDateTime(info);
    rtc_intr_enable();
}
