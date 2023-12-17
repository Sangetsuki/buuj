#include "gba/gba.h"
#include "multiboot.h"

void MultiBootInit(struct MultiBootParam *mp) {
  mp->client_bit = 0;
  mp->probe_count = 0;
  mp->response_bit = 0;

  mp->check_wait = MULTIBOOT_CONNECTION_CHECK_WAIT;
  mp->sendflag = 0;

  mp->handshake_timeout = 0;

  REG_RCNT = 0;
  REG_SIOCNT = SIO_MULTI_MODE | SIO_115200_BPS;
  REG_SIODATA8 = 0;
}
