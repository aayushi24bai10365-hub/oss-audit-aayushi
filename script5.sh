#!/bin/bash

echo "Open Source Manifesto Generator"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you: " FREEDOM
read -p "3. What would you build and share: " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "On $DATE, I believe in open source. I use $TOOL, and for me freedom means $FREEDOM. I want to build $BUILD and share it with everyone." > $FILE

echo ""
echo "Manifesto saved in $FILE"
cat $FILE
