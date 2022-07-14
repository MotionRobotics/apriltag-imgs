#!/bin/bash
# x/10 where x is the size of marker in mm

tag_family="tag52_13_"
old_pixel_width=10
new_size_mm=30
new_resolution_pix=128
dpi=$(echo "scale=8; 25.4 * ${new_resolution_pix}./${new_size_mm}" | bc)
echo $dpi
num_tags=$(ls -1q ${tag_family}* | wc -l)
tags_scalled=0

for f in ${tag_family}*; do
	echo Scaling tag "${f%}", percent done is $(echo "scale=2; 100 * ${tags_scalled}./${num_tags}" | bc)
	convert -units PixelsPerInch "${f%}" -density $dpi "${f%}"
	convert "${f%}" -scale $(echo "100 * ${new_size_mm}./${old_pixel_width} * ${dpi}/25.4" | bc)%  "${f%}"
	tags_scalled=$((tags_scalled+1))

done
