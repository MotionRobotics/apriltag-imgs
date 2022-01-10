Basic commands to create a single tag to PDF

```
convert tag36_11_00005.png \    
    -density 300  \
    -scale $(echo "100 * 200./10 * 300/25.4" | bc)%   \
    -bordercolor black -border 1   \
    -gravity center -extent $((echo "300*8.5") | bc)x$((echo "300*11") | bc)  \ 
    -gravity south -annotate +0+$((echo "300*0.25") | bc) 'april.tag.Tag36h11, id = 5, size = 200 mm'    tag.pdf
```

Run `convert_tag_for_printing.sh` to convert tags to ready-to-print tags

Add pictures to a single A4 document command:

```
montage -tile 3x3 tag36_11_00000.png tag36_11_00001.png tag36_11_00002.png tag36_11_00003.png tag36_11_00004.png tag36_11_00005.png tag36_11_00006.png tag36_11_00007.png tag36_11_00008.png calibration_apriltag.pdf
```