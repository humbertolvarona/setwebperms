#!/bin/bash

DIR="$1"

if [[ -z "$DIR" ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [[ ! -d "$DIR" ]]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 2
fi

find "$DIR" -type d -exec chmod 755 {} \;
find "$DIR" -type f -exec chmod 644 {} \;

echo "Permissions set: 755 for directories, 644 for files in '$DIR'"

exit 0