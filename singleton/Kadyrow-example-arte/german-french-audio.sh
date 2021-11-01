#!/bin/bash

# use playlist index, not number in title as metadata
# url_fr=https://www.arte.tv/fr/videos/073937-000-A/kadyrov-ubu-dictateur-de-tchetchenie/
url_de=https://www.arte.tv/de/videos/073937-000-A/kadyrow-der-schreckliche/

youtube-dl "$url_de" --config-location <(echo "
-i
-f 'HTTPS_SQ_3,HLS_XQ_1-61'
-c
-o '/media/chriad/lenovo/TV/%(extractor)s/%(title)s/%(title)s - %(format_id)s.%(ext)s'
--write-info-json
--write-thumbnail
--write-description
--add-metadata
--write-auto-sub
--sub-lang en
")
