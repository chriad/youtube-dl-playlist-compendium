#!/bin/bash
# bang-bang-conf 2021
/usr/local/bin/youtube-dl 'https://www.youtube.com/watch?v=tPEE9ZwTmy0' --config-location <(echo "
-i
-c
--metadata-from-title \"Shortest (?P<title>.+) (?P<author>.+)\"
-o \"/home/chriad/Desktop/test/%(title)s.%(ext)s\"
# --no-overwrites
# --write-info-json
# --write-thumbnail
# --write-description
--add-metadata
# --write-auto-sub
# --sub-lang en
--xattrs
--postprocessor-args '-metadata episode_id=url'
# --exec \"rename.ul 'Shortest ' '' {}\"
") 

