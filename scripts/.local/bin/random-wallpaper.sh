#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
MONITOR="eDP-1"

IMAGE="$(
    find "$WALLPAPER_DIR" -maxdepth 1 -type f \
        \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) \
        | shuf -n 1
)"

[ -z "$IMAGE" ] && exit 1

hyprctl hyprpaper wallpaper "$MONITOR,$IMAGE"
