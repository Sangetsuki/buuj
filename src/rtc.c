#include "gba/gba.h"
#include "siirtc.h"

static u16 sRtcProbeStatus;
static struct SiiRtcInfo sRtcInfoBuffer;
static u8 sRtcProbeCode;
static u16 sImeBak;
static struct SiiRtcInfo sRtcInfoWork;

void rtc_get_status_and_datetime(struct SiiRtcInfo *);
u16 rtc_validate_datetime(struct SiiRtcInfo * info);

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

void rtc_probe_status(void)
{
	sRtcProbeStatus = 0;
	rtc_intr_disable();
	SiiRtcUnprotect();
	sRtcProbeCode = SiiRtcProbe();
	rtc_intr_enable();
	if ((sRtcProbeCode & 0xF) != 1)
	{
		sRtcProbeStatus = 1;
	}
	else
	{
	    if (sRtcProbeCode & 0xF0)
	        sRtcProbeStatus = 2;
	    else
	        sRtcProbeStatus = 0;	
	    rtc_get_status_and_datetime(&sRtcInfoBuffer);
	    if (sRtcProbeStatus == 0)
	    {
	        sRtcProbeStatus = rtc_validate_datetime(&sRtcInfoBuffer);
	    }
	}
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

u16 rtc_validate_datetime(struct SiiRtcInfo * info)
{
    s32 year, month, day;
    u16 r4 = (info->status & SIIRTCINFO_POWER) ? 0x20 : 0;
    if (!(info->status & SIIRTCINFO_24HOUR))
        r4 |= 0x10;
    year = bcd_to_hex(info->year);
    if (year == 0xFF)
        r4 |= 0x40;
    month = bcd_to_hex(info->month);
    if (month == 0xFF || month == 0 || month > 12)
        r4 |= 0x80;
    day = bcd_to_hex(info->day);
    if (day == 0xFF)
        r4 |= 0x100;
    if (month == MONTH_FEB)
    {
        if (day > sDaysPerMonth[1] + 1)
            r4 |= 0x100;
    }
    else
    {
        if (day > sDaysPerMonth[month - 1])
            r4 |= 0x100;
    }
    day = bcd_to_hex(info->hour);
    if (day > 24)
        r4 |= 0x200;
    day = bcd_to_hex(info->minute);
    if (day > 60)
        r4 |= 0x400;
    day = bcd_to_hex(info->second);
    if (day > 60)
        r4 |= 0x800;
    return r4;
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
