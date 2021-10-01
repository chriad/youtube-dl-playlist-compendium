cat -p urls.txt | \
    /usr/local/bin/youtube-dl \
        --sleep-interval 40 \
        --max-sleep-interval 230 \
        --continue \
        --write-info-json  \
        --write-description \
        -o "/media/chriad/lenovo/TV/%(extractor)s/%(title)s/%(title)s.%(ext)s" \
        --rate-limit 3.9M \
        -a -
