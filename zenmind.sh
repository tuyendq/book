#!/usr/bin/env bash
URL="https://archive.org/stream/zenmind/zenmind_djvu.txt"
FILENAME=$(basename $URL)
wget $URL

# Check
# echo $FILENAME

# Check
# read -p "Press ENTER to exit"

OUTPUT="zenmind.txt"
awk '/<pre>/,/<\/pre>/' $FILENAME > $OUTPUT
