#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
LOGO_DIR="$SCRIPT_DIR/logo"

IMAGE="$(find "$LOGO_DIR" -type f \
    \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.webp' \) \
    -print0 | shuf -z -n 1 | tr -d '\0')"

printf '%s\n' "$IMAGE"
