#!/bin/bash
show='Sündenbabel Berlin'
/usr/local/bin/youtube-dl \
        --continue \
        --metadata-from-title "Sündenbabel Berlin: (?P<title>.+[lgrs])\s*" \
        --write-info-json  \
        --write-description \
        --write-thumbnail \
        --xattrs \
        --add-metadata \
        -o "/media/chriad/lenovo/TV/%(extractor)s/$show/%(title)s.%(ext)s" \
        -a -
