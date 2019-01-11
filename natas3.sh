#!/bin/bash

curl --user $(./natas2.sh) http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt 2>/dev/null
