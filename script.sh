#!/bin/zsh


cd ~/.conky/Conky\ GIF/pix
n_frames=$(ls | wc -l)
filename=$(ls -lsv | head -n 2 | tail -n 1 | awk '{print $10}')
convert -format png -resize 160x120 $filename /dev/shm/current.png
number=$(echo "${filename}" | grep -o -E "[0-9]+")
base_name="frame"
new_number=$(echo $((number+n_frames)))
new_filename="${base_name}-${new_number}.png"
mv $filename $new_filename
