#! /bin/bash

if ! command -v sassc &>/dev/null; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT=('-t' 'compressed')

echo Generating the css...

sassc "${SASSC_OPT[@]}" gtk-contained.scss gtk.css
sassc "${SASSC_OPT[@]}" gtk-contained-dark.scss gtk-dark.css
