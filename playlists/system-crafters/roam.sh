#!/bin/bash
youtube-dl PLEoMzSkcN8oN3x3XaZQ-AXFKv52LZzjqD --config-location <(echo "
-i
-c
-o '/media/chriad/lenovo/YOUTUBE-PLAYLISTS/%(channel)s/%(playlist)s/%(title)s.%(ext)s'
--no-overwrites
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
--xattrs
")

