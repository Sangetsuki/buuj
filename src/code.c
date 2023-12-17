#include "gba/gba.h"

void sub_08000334(void){};

void sub_08000338(void) {
  int i;
  u32* ewramStart = (u32*)EWRAM_START;
  *ewramStart = 0x7ED7F420;
  ewramStart[11] = 0;
  ewramStart[12] = 6;
  ewramStart[13] = 1;
  ewramStart[14] = 1;
  ewramStart[15] = 6;
  ewramStart[16] = 8;
  ewramStart[17] = 31;
  for (i = 0; i < 10; i++)
    ((u32*)EWRAM_START)[i + 1] = 0;
}

void sub_08000378(void) {
  u32* ewramStart = (u32*)EWRAM_START;
  if (*ewramStart != 0x7ED7F420) {
    sub_08000338();
  }
}
