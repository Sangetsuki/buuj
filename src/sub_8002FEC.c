#include "gba/gba.h"

#define GPIOReadPort (u16*)0x080000C8

void GPIOPortReadEnable() // 0x08002FEC
{
    *GPIOReadPort = 1;
}

void GPIOPortReadDisable() // 0x08003000
{
    *GPIOReadPort = 0;   
}
