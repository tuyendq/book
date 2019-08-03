#!/usr/bin/env bash

#TAG="pre"
FILENAME="Awareness.txt"
OUTPUT="text.txt"

# Check
#echo $TAG $FILENAME

awk '/<pre>/,/<\/pre>/' $FILENAME > $OUTPUT

# Check
#read -p "Press ENTER..."

sed -i '/^file:/d' $OUTPUT

sed -i '/^! Gerardus'\'' Grist !/d' $OUTPUT

sed -i '/^Wisdom from Anthony de/d' $OUTPUT
sed -i '/Mello $/d' $OUTPUT
sed -i '/^... Articles/d' $OUTPUT
