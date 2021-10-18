#!/bin/bash

url=PL0M0zPgJ3HSesuPIObeUVQNbKqlw5U2Vr
/usr/local/bin/youtube-dl "$url" --config-location <(echo '
-i
-c
--metadata-from-title "%(title)s - %(tvsh)s #%(tven)s"
-o "/media/chriad/lenovo/%(extractor)s-playlists/%(channel)s/%(playlist)s/%(title)s.%(ext)s"
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
--xattrs
--playlist-items 1,5
# --postprocessor-args "-metadata tvsh=hanselmann"
--add-metadata
# --skip-download
# --no-overwrites
# --no-post-overwrites
')

