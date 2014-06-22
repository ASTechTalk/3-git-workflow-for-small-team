#!/bin/sh

if [ -d slide ]; then
    rm -rf slide
fi

mkdir slide
cp -pR reveal.js slide/
cp -pR slide.html slide/
zip -ry slide.zip slide/

