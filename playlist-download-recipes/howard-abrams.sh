# example invocation: /usr/local/bin/youtube-dl --config-location ./ytdl-howard-abrams.conf https://www.youtube.com/playlist?list=UUVHICXXtKG7rZgtC5xonNdQ

-i
-c
-o '/media/chriad/lenovo/YOUTUBE-PLAYLISTS/%(channel)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'

--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
--reject-title 'Rotifers'