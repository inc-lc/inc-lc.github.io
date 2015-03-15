#!/bin/sh
pandoc -s --smart --css ilc.css -i index.md -o index.html
pandoc -s --smart --css ilc.css -i AEC.md -o AEC.html
