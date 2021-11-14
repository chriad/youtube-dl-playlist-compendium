#!/bin/bash

url=https://vimeo.com/showcase/5932458
youtube-dl \
    --config-location ~/.config/youtube-dl/config.embed \
    `# A look at Lulu Wang’s, “The Farewell” | Science Goes To The Movies` \
    `#--metadata-from-title "(?P<title>.+)(?:\s\|\sScience Goes [Tt]o [Tt]he Movies)"` \
    `# Science Goes to the Movies:  Fossils and Fictional Feral Children` \
    `#--metadata-from-title "(?:Science Goes to the Movies)(?:(:\s+| - | :  ))(?P<title>.*)"` \
    `# Science Goes to the Movies Season 3, Episode 6:  Rosario Gennaro Zero Days/Mr. Robot` \
    --metadata-from-title "(?:Science Goes to the Movies Season \d, Episode \d)(?:(:\s+| - | :  ))(?P<title>.*)" \
    -f "best[height=720]" \
    --write-auto-sub \
    --sub-lang en \
    `#--playlist-items 9,11,18,20,3,27,19,27,43,44` \
    `#--playlist-items 66` \
    --playlist-items 78,104 \
    -o '/media/chriad/ext4/TV SHOWS/Science Goes To The Movies/%(title)s.%(ext)s'\
    "$url"
