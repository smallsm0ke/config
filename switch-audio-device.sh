#!/usr/bin/bash

file='/tmp/audio.txt'




devs=('pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo'
        'pactl set-default-sink alsa_output.usb-Yealink_Yealink_UH34_SE_300078F020112985-00.analog-stereo')




if [[ -f "$file" ]]; then
    current=$(cat "$file")
else
    current=-1
fi

next=$(( (current + 1) % ${#devs[@]} ))

eval "${devs[$next]}"

echo "$next" > "$file"
