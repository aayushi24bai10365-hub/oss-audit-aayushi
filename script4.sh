#!/bin/bash

echo "Log File Analyzer"

FILE="test.txt"
KEYWORD="error"
COUNT=0

# Create sample file
echo "This is an error line" > test.txt
echo "This is normal" >> test.txt
echo "Another ERROR happened" >> test.txt

while read LINE
do
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    if [ $? -eq 0 ]
    then
        COUNT=$((COUNT+1))
    fi
done < $FILE

echo "Keyword '$KEYWORD' found $COUNT times"
