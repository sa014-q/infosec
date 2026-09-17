#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file_path> <word>"
    exit 1
fi

FILE_PATH="$1"
WORD="$2"

if [ ! -f "$FILE_PATH" ]; then
    echo "Error: File '$FILE_PATH' does not exist."
    exit 1
fi

COUNT=$(grep -o -i -w "$WORD" "$FILE_PATH" | wc -l)

echo "The word '$WORD' appears $COUNT time(s) in '$FILE_PATH'."
