#!/bin/bash
# x/10 where x is the size of marker in mm

tag_family="tag41_12_"
pixel_width=9
dpi=72
intended_size_mm=90

for f in ${tag_family}*; do
  convert ./"$f" -scale $(echo "100 * ${intended_size_mm}./${pixel_width} * ${dpi}/25.4" | bc)%  -bordercolor black -border 1 ./"${f%}"
done
