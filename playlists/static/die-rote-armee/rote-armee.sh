#!/bin/bash

url=https://www.arte.tv/de/videos/RC-021489/die-rote-armee/
/usr/local/bin/youtube-dl "$url" --config-location <(echo '
-i
-c
--metadata-from-title "(?:([scimax]*\s-\s)?)(?P<title>.*)"
-o "/media/chriad/lenovo/%(extractor)s-playlists/%(channel)s/%(playlist)s/%(title)s.%(ext)s"
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
--xattrs
--playlist-items 5,11,14,15,7,6,13
--add-metadata
# --no-overwrites
# --no-post-overwrites
')

