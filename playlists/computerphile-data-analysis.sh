#!/bin/bash

# use playlist index, not number in title as metadata

url=PLzH6n4zXuckpfMu_4Ff8E7Z1behQks5ba
youtube-dl "$url" --config-location <(echo "
-i
-c
-o '/media/chriad/YOUTUBE-dl/YOUTUBE-PLAYLISTS/%(channel)s/%(playlist)s - S01E%(playlist_index)s - %(title)s.%(ext)s'
# --skip-download
-f worst
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
--yes-playlist
")

