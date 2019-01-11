#!/bin/bash

BASIC=$(./natas7.sh)

ENCODED_SECRET=$(curl --user $BASIC http://natas8.natas.labs.overthewire.org/index-source.html 2>/dev/null | sed -n "s/^.*$encodedSecret&nbsp;=&nbsp;\"\(\w*\).*$/\1/p")

SECRET=$(echo $ENCODED_SECRET | xxd -r -ps | rev | base64 -d)

curl --user $BASIC --data "secret=$SECRET&submit="  http://natas8.natas.labs.overthewire.org 2>/dev/null | sed -n "s/^.*\(natas[0-9]\+\)\ is\ \(\w\+\).*$/\1:\2/p"
