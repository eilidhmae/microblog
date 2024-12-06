#!/bin/sh

for mdFile in `ls content/*.md`
do
  newFile="$(basename $mdFile .md).html"
  mdtohtml ${mdFile} ${newFile}
  # inject css header
  echo "$(echo "<link href=\"css/retro.css\" rel=\"stylesheet\"></link>"; cat ${newFile})" >${newFile}
done
