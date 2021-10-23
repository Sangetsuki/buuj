#include "gba/gba.h"

void GPIOPortReadEnable();

void sub_800274C()
{
    GPIOPortReadEnable();
    *((u8*)0x03000A62) = 0;
}
