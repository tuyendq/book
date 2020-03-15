#!/usr/bin/env bash
# Get <pre></pre> content
# Usage: summerhill.sh inputfile outputfile
RESULT=$2
# Debug
#cat $1
echo "Check result file: " $RESULT
echo "Press any key to continue or Ctr-C to abort."
read
cat $1 | awk -f get_tags_pre.awk > $RESULT

# Remove <pre> in the first line
sed -i '1s/<pre>//' $RESULT

# Remove </pre>... in the last line
sed -i '$s/<\/pre>.*//' $RESULT

