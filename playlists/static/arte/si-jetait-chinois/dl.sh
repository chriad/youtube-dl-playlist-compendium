#!/bin/bash

url=https://www.arte.tv/fr/videos/RC-017626/si-j-etais-pekinois/
/usr/local/bin/youtube-dl "$url" --config-location <(echo '
-i
-c
-o "/media/chriad/lenovo/TV/%(extractor)s/%(playlist)s/Season 01/%(title)s S01E0%(playlist_index)d.%(ext)s"
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
--xattrs
--add-metadata
# --no-overwrites
# --no-post-overwrites
')

