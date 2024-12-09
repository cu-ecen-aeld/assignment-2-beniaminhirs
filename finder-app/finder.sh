#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Specify both parameters:\n 1. path to file directory \n 2. string you want to search for"
    exit 1
fi
if [ -d $1 ]; then
    filedir=$1
    searchstr=$2
else
    echo "$1 is not a directory!!!"
    exit 1
fi
file_count=$(find "$filedir" -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filedir" | wc -l)
echo "The number of files are $file_count and the number of matching lines are $match_count"