#!/usr/bin/bash

STATE="/tmp/razer-status-color.txt"

MODS=(
    'polychromatic-cli -o static -c "#0000FF,#0000FF"'
    'polychromatic-cli -o static -c "#FFFFFF,#FFFFFF"'
    'polychromatic-cli -o static -c "#FF0000,#FF0000"'
    'polychromatic-cli -o static -c "#00FF00,#00FF00"'
    'polychromatic-cli -o static -c "#00FFFF,#00FFFF"'
    'polychromatic-cli -o static -c "#FFA500,#FFA500"'
    'polychromatic-cli -o static -c "#FFC0CB,#FFC0CB"'
    'polychromatic-cli -o static -c "#800080,#800080"'
    'polychromatic-cli -o static -c "#FFFF00,#FFFF00"'
    'polychromatic-cli -o static -c "#D3D3D3,#D3D3D3"'
    'polychromatic-cli -o static -c "#A9A9A9,#A9A9A9"'
    'polychromatic-cli -o wave -p 1'
)

if [[ -f "$STATE" ]]; then
    current=$(cat "$STATE")
else
    current=-1
fi

next=$(( (current + 1) % ${#MODS[@]} ))

eval "${MODS[$next]}"

echo "$next" > "$STATE"

