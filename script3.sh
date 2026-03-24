#!/bin/bash

echo "Directory Audit Report"
echo "----------------------"

DIRS="/etc /home /tmp"

for DIR in $DIRS
do
    if [ -d "$DIR" ]
    then
        echo "Checking $DIR"
        ls -ld $DIR
        du -sh $DIR 2>/dev/null
    else
        echo "$DIR does not exist"
    fi
done

