#include "gba/gba.h"
#include "siirtc.h"

extern u16 sRtcProbeStatus;
extern struct SiiRtcInfo sRtcInfoBuffer;
extern u8 sRtcProbeCode;
extern u16 sImeBak;
extern struct SiiRtcInfo sRtcInfoWork;

void rtc_get_status_and_datetime(struct SiiRtcInfo *);
u16 rtc_validate_datetime(struct SiiRtcInfo *);

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
