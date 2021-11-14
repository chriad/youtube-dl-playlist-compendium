#!/bin/bash
show='Panzer'
tv-single \
        --metadata-from-title "Panzer! (?P<title>.*)" \
        -o "/media/chriad/ext4/TV/%(extractor)s/$show/Season 01/%(title)s S01E0%(autonumber)1d.%(ext)s" \
        -a -
