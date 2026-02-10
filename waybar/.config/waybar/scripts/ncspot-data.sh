#!/bin/bash

text=$(playerctl -p ncspot metadata -f '{{trunc(title,25)}} {{duration(position)}}/{{duration(mpris:length)}}')

tooltip=$(playerctl -p ncspot metadata -f '{{title}}\r{{artist}}\r{{album}}')

echo "{\"text\":\"$text\" , \"tooltip\": \"$tooltip\"}"
