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

const s32 sDaysPerMonth[] = {
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
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

// I dont even know if this is right
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

NAKED
int sub_80016DC(void)
{
    asm_unified("\
    push {r4, r5, r6, lr}\n\
	adds r6, r0, #0\n\
	ldrb r1, [r6, #7]\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	rsbs r0, r0, #0\n\
	asrs r4, r0, #0x1f\n\
	movs r0, #0x20\n\
	ands r4, r0\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _080016FE\n\
	movs r0, #0x10\n\
	orrs r4, r0\n\
_080016FE:\n\
	ldrb r0, [r6]\n\
	bl bcd_to_hex\n\
	cmp r0, #0xff\n\
	bne _08001710\n\
	movs r0, #0x40\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_08001710:\n\
	ldrb r0, [r6, #1]\n\
	bl bcd_to_hex\n\
	adds r5, r0, #0\n\
	cmp r5, #0xff\n\
	beq _08001724\n\
	cmp r5, #0\n\
	beq _08001724\n\
	cmp r5, #0xc\n\
	ble _0800172C\n\
_08001724:\n\
	movs r0, #0x80\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_0800172C:\n\
	ldrb r0, [r6, #2]\n\
	bl bcd_to_hex\n\
	adds r2, r0, #0\n\
	cmp r2, #0xff\n\
	bne _08001744\n\
	movs r1, #0x80\n\
	lsls r1, r1, #1\n\
	adds r0, r1, #0\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_08001744:\n\
	cmp r5, #2\n\
	bne _08001754\n\
	ldr r0, _08001750 @ =sDaysPerMonth\n\
	ldr r0, [r0, #4]\n\
	adds r0, #1\n\
	b _0800175E\n\
	.align 2, 0\n\
_08001750: .4byte sDaysPerMonth\n\
_08001754:\n\
	ldr r0, _080017C0 @ =sDaysPerMonth\n\
	subs r1, r5, #1\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
_0800175E:\n\
	cmp r2, r0\n\
	ble _0800176E\n\
	movs r1, #0x80\n\
	lsls r1, r1, #1\n\
	adds r0, r1, #0\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_0800176E:\n\
	ldrb r0, [r6, #4]\n\
	bl bcd_to_hex\n\
	adds r2, r0, #0\n\
	cmp r2, #0x18\n\
	ble _08001786\n\
	movs r1, #0x80\n\
	lsls r1, r1, #2\n\
	adds r0, r1, #0\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_08001786:\n\
	ldrb r0, [r6, #5]\n\
	bl bcd_to_hex\n\
	adds r2, r0, #0\n\
	cmp r2, #0x3c\n\
	ble _0800179E\n\
	movs r1, #0x80\n\
	lsls r1, r1, #3\n\
	adds r0, r1, #0\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_0800179E:\n\
	ldrb r0, [r6, #6]\n\
	bl bcd_to_hex\n\
	adds r2, r0, #0\n\
	cmp r2, #0x3c\n\
	ble _080017B6\n\
	movs r1, #0x80\n\
	lsls r1, r1, #4\n\
	adds r0, r1, #0\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x10\n\
	lsrs r4, r0, #0x10\n\
_080017B6:\n\
	adds r0, r4, #0\n\
	pop {r4, r5, r6}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_080017C0: .4byte sDaysPerMonth");
}

void rtc_reset()
{
    rtc_intr_disable();
    SiiRtcReset();
    rtc_intr_enable();
}

u32 hex_to_bcd(u8 a0)
{
    u32 r4;
    if (a0 > 99)
        return 0xFF;
    r4 = Div(a0, 10) << 4;
    r4 |= DivRem(a0, 10);
    return r4;
}

s32 sub_8001804()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.year);
}

s32 sub_8001820()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.month);
}

s32 sub_800183C()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.day);
}

s32 sub_8001858()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.hour);
}

s32 sub_8001874()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.minute);
}

s32 sub_8001890()
{
    rtc_get_status_and_datetime(&sRtcInfoBuffer);
    return bcd_to_hex(sRtcInfoBuffer.second);
}

void sub_80018AC(s32 a1)
{
    if (a1 >= 0)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.year = hex_to_bcd((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_80018D8(u32 a1)
{
    if (a1 - 1 <= 0xB)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.month = hex_to_bcd((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001904(u32 a1)
{
    if (a1 - 1 <= 0x1e)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.day = hex_to_bcd((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001930(u32 a1)
{
    if (a1 <= 0x18)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.hour = hex_to_bcd((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_800195C(u32 a1)
{
    if (a1 <= 0x3b)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.minute = hex_to_bcd((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001988(u32 a1)
{
    if (a1 <= 0x3b)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.second = hex_to_bcd((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}
