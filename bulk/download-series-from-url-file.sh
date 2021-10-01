#!/bin/bash

if [ -z "$1" ]; then
    echo "Need Series title"; exit 1
fi
    /usr/local/bin/youtube-dl \
        --continue \
        --write-info-json  \
        --write-description \
        --write-thumbnail \
        --add-metadata \
        -o "/media/chriad/lenovo/TV/%(extractor)s/$1/%(title)s.%(ext)s" \
        -a -
