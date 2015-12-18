#!/bin/sh

for f in *.svg
do
    inkscape --export-pdf "${f%.svg}.pdf" --export-background=white "$f"
done

# Complains 
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=refinery.pdf [0-9]*.pdf
