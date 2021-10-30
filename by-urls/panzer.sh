#!/bin/bash
show='Panzer'
/usr/local/bin/youtube-dl \
        --continue \
        --metadata-from-title "Panzer! (?P<title>.*)" \
        --write-info-json  \
        --write-description \
        --write-thumbnail \
        --xattrs \
        --add-metadata \
        -o "/media/chriad/ext4/TV/%(extractor)s/$show/Season 01/%(title)s S01E0%(autonumber)1d.%(ext)s" \
        -a -
