#!/bin/bash

SOURCE="$HOME/Pictures/Wallpapers"
DEFECTIVE="$SOURCE/defective"

mkdir -p "$DEFECTIVE"

find "$SOURCE" -maxdepth 1 -type f -print0 |
while IFS= read -r -d '' file; do
    if file --brief --mime-type "$file" | grep -qE '^image/(jpeg|png|webp|gif|bmp|avif|tiff)$'; then
        echo "VALID    $(basename "$file")"
    else
        echo "DEFECTIVE $(basename "$file")"
        mv -- "$file" "$DEFECTIVE/"
    fi
done

echo
echo "Done."
echo "Defective images: $DEFECTIVE"
