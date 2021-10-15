#!/bin/bash

url=PL0M0zPgJ3HSesuPIObeUVQNbKqlw5U2Vr
/usr/local/bin/youtube-dl "$url" --config-location <(echo '
-i
-c
--metadata-from-title "%(title)s - %(show)s #%(episode_id)s"
-o "/media/chriad/lenovo/%(extractor)s/%(channel)s/%(playlist)s/%(title)s.%(ext)s"
# --no-overwrites
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
--xattrs
--playlist-items 1
--postprocessor-args "-metadata show=hanselmann"
--add-metadata
# --skip-download
# --no-post-overwrites
') 

