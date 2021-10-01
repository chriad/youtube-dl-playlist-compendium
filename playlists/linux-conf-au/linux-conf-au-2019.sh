#!/bin/bash
# Download playlist tracked by ytcc

url='PLD8dAKx4J2I4LjVcMO4roVuRGPsalRXWc'
/usr/local/bin/youtube-dl "$url" --config-location <(echo "
-i
-c
-o '/media/chriad/lenovo/%(extractor)s/%(channel)s/%(playlist)s/%(title)s.%(ext)s'
--no-overwrites
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
--playlist-items 116,31,131,134
")

