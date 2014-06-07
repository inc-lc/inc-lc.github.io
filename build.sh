#!/bin/sh
pandoc -s --smart --css ilc.css -i index-new.md -o index-new.html
pandoc -s --smart --css ilc.css -i AEC.md -o AEC.html
