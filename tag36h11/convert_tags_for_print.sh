#!/bin/bash
# x/10 where x is the size of marker in mm


for f in tag36_11_*; do
  convert ./"$f" -scale $(echo "100 * 100./10 * 72/25.4" | bc)%  -bordercolor black -border 1 ./"${f%}"
done
