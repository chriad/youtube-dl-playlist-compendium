#!/bin/bash

# use playlist index, not number in title as metadata


/usr/local/bin/youtube-dl https://www.youtube.com/playlist?list=PLzH6n4zXuckpfMu_4Ff8E7Z1behQks5ba --config-location <(echo "
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
--postprocessor-args \"-metadata episode_id=%(playlist_index)s\"
# --metadata-from-title ''
# --exec 'rename -d -e s/Data\ Analysis// -e s/\ -\ Computerphile// {}'
") 

# --reject-title 'Rotifers'
# --playlist-items 1-3,4 
# --metadata-from-title FORMAT
# --match-filter FILTER
