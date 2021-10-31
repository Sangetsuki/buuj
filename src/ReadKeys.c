#include "gba/gba.h"

extern u16 gNewKeys;
extern u16 gHeldKeys;

u16 gNewKeys;
u16 gHeldKeys;

void ReadKeys(void)
{
    u16 keyInput = REG_KEYINPUT ^ KEYS_MASK;
    gNewKeys = keyInput & ~gHeldKeys;
    gHeldKeys = keyInput;
}
