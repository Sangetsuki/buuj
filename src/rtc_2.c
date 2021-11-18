#include "gba/gba.h"
#include "siirtc.h"

extern u16 sRtcProbeStatus;
extern struct SiiRtcInfo sRtcInfoBuffer;
extern u8 sRtcProbeCode;
extern u16 sImeBak;
extern struct SiiRtcInfo sRtcInfoWork;

s32 bcd_to_hex(u8 a0);
void rtc_get_status_and_datetime(struct SiiRtcInfo * info);
void rtc_set_status(struct SiiRtcInfo * info);
u8 sub_80017D8(u8);

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
        sRtcInfoBuffer.year = sub_80017D8((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_80018D8(u32 a1)
{
    if (a1 - 1 <= 0xB)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.month = sub_80017D8((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001904(u32 a1)
{
    if (a1 - 1 <= 0x1e)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.day = sub_80017D8((u8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001930(u32 a1)
{
    if (a1 <= 0x18)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.hour = sub_80017D8((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_800195C(u32 a1)
{
    if (a1 <= 0x3b)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.minute = sub_80017D8((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

void sub_8001988(u32 a1)
{
    if (a1 <= 0x3b)
    {
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcInfoBuffer.second = sub_80017D8((s8)a1);
        rtc_set_status(&sRtcInfoBuffer);
    }
}

