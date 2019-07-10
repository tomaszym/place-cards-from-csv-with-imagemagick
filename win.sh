#!/bin/bash

while IFS=, read name x size result len shiftNeg shiftNonNeg; do
   echo DEBUG: $name $x $size $result
   convert base.png -font NK_Monotype-Corsiva -pointsize $size \
           -fill 'rgb(9%,24%,9%)'  -annotate +$x+710 "$name" \
           "$result.png"
done < data3.csv


# montage 0*.png -tile 2x2 -geometry 1063x945+2+2 out.pdf

