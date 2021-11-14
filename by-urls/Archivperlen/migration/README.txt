historic files that are migratable:

- contain description
- contain date

/media/chriad/lenovo/TV/SRGSSR/Archivperlen/migrate

This script was used:

x=$(youtube-dl -e "$1" |sed -e 's/[^A-Za-z0-9._-]/_/g')
mkdir $x
cd $x
youtube-dl --restrict-filenames --write-info-json --write-description --write-auto-sub "$1" --sub-lang en

TODO:

1. extract url from info.json
2. use migration script to embed metadata


get id from info.json:
url is https://www.srf.ch/play/tv/redirect/detail/96366a18-8764-413e-a8b8-719fde3b916e
