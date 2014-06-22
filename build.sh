#!/bin/bash

PANDOC="docker run -t -i -v `pwd`:/workspace ksoichiro/pandoc pandoc"
INPUT=GitWorkflowForSmallTeam.md

# Reveal.js
cp -pR config/reveal.js ./
pushd reveal.js > /dev/null
grunt themes
popd > /dev/null

# Pandoc
OUTPUT=slide.html
$PANDOC \
  -s \
  -t revealjs \
  -V theme:default \
  -V transition:linear \
  -o $OUTPUT \
  $INPUT

echo "Done: $OUTPUT"
