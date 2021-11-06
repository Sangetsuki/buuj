#include "gba/gba.h"

void GPIOPortReadEnable();
void GPIOPortReadDisable();

extern bool8 isGPIOPortDisabled;

void sub_800274C()
{
    GPIOPortReadEnable();
    isGPIOPortDisabled = FALSE;
}

void sub_8002764()
{
    GPIOPortReadDisable();
    isGPIOPortDisabled = TRUE;
}
