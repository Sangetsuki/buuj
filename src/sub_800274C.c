#include "gba/gba.h"

void GPIOPortReadEnable();
void GPIOPortReadDisable();

void sub_800274C()
{
    GPIOPortReadEnable();
    *((u8*)0x03000A62) = 0;
}

void sub_8002764()
{
    GPIOPortReadDisable();
    *((u8*)0x03000A62) = 1;
}
