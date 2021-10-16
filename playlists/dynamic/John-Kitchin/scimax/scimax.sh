#!/bin/bash

url=PL0sMmOaE_gs3E0OjExoI7vlCAVygj6S4I
/usr/local/bin/youtube-dl "$url" --config-location <(echo '
-i
-c
--metadata-from-title "scimax - %(title)s"
-o "/media/chriad/lenovo/%(extractor)s/%(channel)s/%(playlist)s/%(title)s.%(ext)s"
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
--xattrs
--playlist-items 5,11,14
--add-metadata
# --no-overwrites
# --no-post-overwrites
')

