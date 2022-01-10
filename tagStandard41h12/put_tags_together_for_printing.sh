#!/bin/bash

tag_family="tag41_12"
name_of_pdf="tag41_12_tags"

# echo ${tag_family}

montage -tile 3x2 -geometry +5+10 ${tag_family}_00000.png ${tag_family}_00001.png ${tag_family}_00002.png \
        ${tag_family}_00003.png ${tag_family}_00004.png ${tag_family}_00005.png ${name_of_pdf}.pdf
        # ${tag_family}_00007.png ${tag_family}_00008.png ${name_of_pdf}.pdf