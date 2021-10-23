#include "gba/gba.h"

void sub_8002FEC();

void sub_800274C()
{
    sub_8002FEC();
    *((u8*)0x03000A62) = 0;
}
