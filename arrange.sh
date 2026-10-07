#!/bin/bash

cd -- "$(dirname -- "${BASH_SOURCE[0]}")" || exit 1

for char in {a..z}; do
    find ./files -maxdepth 1 -type f -iname "$char*.txt" -exec mv -- {} "$char" \;
done
