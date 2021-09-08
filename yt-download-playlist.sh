#!/usr/bin/env bash

# if we don't delete slashes from titles there are serious security issues here
slash=/

# note that this url, being in quotes, needs no backslash escaping.
# url='https://www.youtube.com/playlist?list=PLXmMXHVSvS-CoYS177-UvMAQYRfL3fBtX'
url="$1"

# First, get the name for the whole playlist
playlist_title=$(youtube-dl -J --flat-playlist "$url" | jq -r .title) || exit

# ...and, for the rest of the script, work under a directory named by that title
mkdir -p -- "${playlist_title//$slash/}" || exit
cd "${playlist_title//$slash/}" || exit

# Finally, loop over the individual videos and download them one at a time.
# ...arguably, you could tell youtube-dl to do this itself; call it an exercise.
youtube-dl -j --flat-playlist "$url" |   # one JSON document per playlist entry
  jq -r '[.id, .title] | @tsv' |         # write id, then title, tab-separated
  while IFS=$'\t' read -r id title; do ( # read that id and title from jq
      # because of the ()s, this is a subshell; exits just go to the next item
      # ...which is also why exec doesn't end the entire script.
      dir=${title//$slash/} # take slashes out of the title to form directory
      mkdir -p -- "$dir" || exit
      cd -- "$dir" || exit  # if cd fails, do not download anything
      exec youtube-dl --yes-playlist --write-info-json --write-description --add-metadata "$id" # exec is a minor perf optimization; consume subshell
  ); done
