#!/bin/bash
# Converts a font CSS file into HTML using specified fonts
# format of font selectors should be `font--<font-name>`
# example:
#  ./css_to_html.sh "fonts.css"

# find all font selectors
font_regex='\.(font--[^ ]*)'
font_selectors=$(grep -oP "$font_regex" $1)
# grab only the class names
font_classes=$(echo $font_selectors | sed -E 's/'"$font_regex"'/\1/g')

# echo <p> tags with each font
for font in $font_classes; do
  echo "<p class=\"$font\">THIS IS the font: $font</p>"
done
