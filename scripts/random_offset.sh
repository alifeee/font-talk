#!/bin/bash
# output words as spans with random top/left offsets and rotations
# e.g., `<span style="--t: 90%; --l: 85%; --r: 2deg">some text</span>`
# example:
#  ./random_offset.sh words.txt > words.html

while read word; do
    t=$(shuf -i 0-80 -n 1)
    l=$(shuf -i 0-85 -n 1)
    # rotation from -5 deg to 5 deg
    r=$(shuf -i 0-10 -n 1)
    r=$((r-5))
    echo "<span style=\"--t: $t%; --l: $l%; --r: ${r}deg\">$word</span>"
done < $1
