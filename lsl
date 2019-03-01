#!/bin/bash

pactl set-sink-mute 0 0
pactl set-sink-volume 0 100%
paplay /usr/local/bin/sound.ogg&
ls --color
