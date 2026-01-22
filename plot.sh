#!/usr/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME=$1

if [ ! -f "$FILENAME" ]; then
    echo "File not found!"
    exit 1
fi

head -n 20 $FILENAME | sort -n | awk '{print $2 "\t" $1}' | uplot bar -M -t "$FILENAME"
