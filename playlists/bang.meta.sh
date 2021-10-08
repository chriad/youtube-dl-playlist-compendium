#!/bin/bash
# bang-bang-conf 2021

url='PLrV16pC7dwvzQn5z-aIbZj9Gtj3njScyq'

# First, get the name for the whole playlist
playlist_title=$(youtube-dl -J --flat-playlist "$url" | jq -r .title) || exit

/usr/local/bin/youtube-dl "$url" --config-location <(echo "
-i
-c
-o '/home/chriad/Desktop/test/%(title)s.%(ext)s'
# --no-overwrites
# --write-info-json
# --write-thumbnail
# --write-description
# --write-auto-sub
# --sub-lang en
--postprocessor-args \"-metadata episode_id='${playlist_title}'\"
--playlist-items 2
--metadata-from-title '(?P<title>.+)'
# --postprocessor-args \"-metadata episode_id=%(title)s\"
--add-metadata
# --xattrs
# --exec \"rename.ul 'Shortest ' '' {}\"
") 

