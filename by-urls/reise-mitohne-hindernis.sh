#!/bin/bash
show='Reise Mitohne Hindernis'
/usr/local/bin/youtube-dl \
        --continue \
        --metadata-from-title "(?P<title>.*) \(Staffel (?P<display_id>\d{1}), Folge (?P<format_id>\d{1})\)" \
        --write-info-json  \
        --write-description \
        --write-thumbnail \
        --xattrs \
        --add-metadata \
        -o "/media/chriad/lenovo/TV/%(extractor)s/$show/%(title)s - S01E0%(autonumber)1d.mp4" \
        -a -
