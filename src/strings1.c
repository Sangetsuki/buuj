#include "gba/gba.h"

/// IDE support
#if defined(__APPLE__) || defined(__CYGWIN__) || defined(__INTELLISENSE__)
// We define these when using certain IDEs to fool preproc
#define _(x)        (x)
#define __(x)       (x)
#define INCBIN(...) {0}
#define INCBIN_U8   INCBIN
#define INCBIN_U16  INCBIN
#define INCBIN_U32  INCBIN
#define INCBIN_S8   INCBIN
#define INCBIN_S16  INCBIN
#define INCBIN_S32  INCBIN
#endif // IDE support

const u8 waiting1[] = __("WAITING...$");
const u8 waiting2[] = __("WAITING...$");
const u8 transferring[] = __("TRANSFERRING...$");
const u8 checking[] = __("Checking...$");
const u8 gUnknown_8003acc[] = __("Checking ROM Status...$");
const u8 gUnknown_8003afa[] = __("Complete.$");
const u8 gUnknown_8003b0e[] = __("Failed.$");
const u8 gUnknown_8003b1e[] = __("Backup Error$");
const u8 gUnknown_8003b38[] = __("Out of date$");
const u8 gUnknown_8003b50[] = __("POKéMON Deliver$");
const u8 gUnknown_8003b70[] = __("$$EDIT$MODE$");

// From this part onwards nothing is sure, as there are no code refenreces
const u8 empty1[0x6E] = {0};

const u8 gUnknown_8003bf6[] = __("CURRENT$TIME$");

const u8 empty2[0x30] = {0};

const u8 gUnknown_8003c40[] = __("/$$/$$$$$:$$:$");

const u8 empty3[0xD8] = {0};

const u8 gUnknown_8003d34[] = __("1:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");
const u8 gUnknown_8003d74[] = __("2:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");
const u8 gUnknown_8003db4[] = __("3:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");
const u8 gUnknown_8003df4[] = __("4:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");
const u8 gUnknown_8003e34[] = __("5:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");
const u8 gUnknown_8003e74[] = __("6:$$$$/$$/$$$-$$$$$/$$/$$$$$$$$$");

const u8 empty4[0x150] = {0};

const u8 gUnknown_8004004[] = __("START:SAVE$$");
const u8 gUnknown_800401c[] = __("B:CANCEL$$$$$$$");
const u8 gUnknown_800403a[] = __("A+R+SELECT:RESET$TO$DEFAULT");