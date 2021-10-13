#!/bin/bash
# bang-bang-conf 2021

url='PLofFli6PGTsAwAglxHXhiHYwh3ZJf8QGX'

# First, get the name for the whole playlist
# playlist_title=$(youtube-dl -J --flat-playlist "$url" | jq -r .title) || exit

/usr/local/bin/youtube-dl "$url" --config-location <(echo "
-i
-c
-o '/media/chriad/lenovo/YOUTUBE-PLAYLISTS/%(channel)s/%(playlist)s/%(title)s.%(ext)s'
--no-overwrites
--write-info-json
--write-thumbnail
--write-description
--write-auto-sub
--sub-lang en
# --postprocessor-args \"-metadata episode_id='${playlist_title}'\"
--playlist-items 2
--metadata-from-title '%(playlist)s - (?P<title>.+) by (?P<artist>.+)'
# --postprocessor-args \"-metadata episode_id=%(title)s\"
--add-metadata
# --xattrs
# --skip-download
# --exec \"rename.ul 'Shortest ' '' {}\"
--exec 'mv {} $(echo {} | sed -e 's/!!Con 2021 - //' -e 's/ by [^.]*//')'")


