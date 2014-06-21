#!/bin/bash

INPUT=GitWorkflowForSmallTeam.md
OUTPUT=slide.html
PANDOC="docker run -t -i -v `pwd`:/workspace ksoichiro/pandoc pandoc"

$PANDOC \
  -s \
  -t revealjs \
  -i \
  -V theme:simple \
  -V transition:linear \
  -o $OUTPUT \
  $INPUT

echo "Done: $OUTPUT"
