#!/bin/sh

for mdFile in `ls *.md`
do
  mdtohtml ${mdFile} "`basename $mdFile .md`.html"
done
