#include "gba/gba.h"
#include "siirtc.h"

extern u16 sRtcProbeStatus;
extern struct SiiRtcInfo sRtcInfoBuffer;
extern u8 sRtcProbeCode;
extern u16 sImeBak;
extern struct SiiRtcInfo sRtcInfoWork;

s32 bcd_to_hex(u8 a0);
void rtc_get_status_and_datetime(struct SiiRtcInfo * info);

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
