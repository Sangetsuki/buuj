#include "gba/gba.h"

void sub_8002FEC()
{
    *((u16*)0x080000C8) = 1;
}

void sub_8003000()
{
    *((u16*)0x080000C8) = 0;   
}
