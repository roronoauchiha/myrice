#!/bin/bash

case "$1" in
    toggle)
        wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
        ;;
    up)
        wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+
        ;;
    down)
        wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-
        ;;
    *)
        echo "Usage: $0 {toggle|up|down}"
        exit 1
        ;;
esac
