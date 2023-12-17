#!/bin/bash

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.gba >baserom.dump
$OBJDUMP $OPTIONS buuj.gba >buuj.dump
diff --color -u baserom.dump buuj.dump
