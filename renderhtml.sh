#!/bin/sh

for mdFile in `ls content/*.md`
do
  mdtohtml ${mdFile} "`basename $mdFile .md`.html"
done
