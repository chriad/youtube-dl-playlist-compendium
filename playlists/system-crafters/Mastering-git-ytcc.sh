#!/bin/bash

url='PLEoMzSkcN8oMc34dTjyFmTUWbXTKrNfZA'
/usr/local/bin/youtube-dl $url --config-location <(echo "
-i
-c
-o '/media/chriad/lenovo/YOUTUBE-PLAYLISTS/%(channel)s/%(playlist)s/%(playlist)s - S01E0%(playlist_index)d - %(title)s.%(ext)s'
--no-overwrites
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
# --xattrs
--no-post-overwrites
")

