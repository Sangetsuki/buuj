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
