#!/bin/bash

curl --user natas0:natas0 http://natas0.natas.labs.overthewire.org 2>/dev/null | sed -n "s/^.*\(natas[0-9]\+\)\ is\ \(\w\+\).*$/\1:\2/p"
