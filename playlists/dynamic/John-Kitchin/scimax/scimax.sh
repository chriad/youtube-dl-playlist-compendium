#!/bin/bash

url=PL0sMmOaE_gs3E0OjExoI7vlCAVygj6S4I
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
