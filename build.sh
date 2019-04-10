#!/bin/sh
pandoc -s -f markdown+smart --css ilc.css -i index.md -o index.html
pandoc -s -f markdown+smart --css ilc.css -i AEC.md -o AEC.html
