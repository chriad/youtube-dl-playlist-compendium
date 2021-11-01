#!/bin/bash

# use playlist index, not number in title as metadata


/usr/local/bin/youtube-dl "$1" --config-location <(echo "
-i
-f '1279'
-c
-o '/media/chriad/ssd-45/zueri-braennt/Züri brännt.%(ext)s'
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang de
")
