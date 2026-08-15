#!/bin/bash

case "$1" in
    up)
        brightnessctl -e4 -n2 set 5%+
        ;;
    down)
        brightnessctl -e4 -n2 set 5%-
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac
