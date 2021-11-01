ffmpeg \
    -i 'Kadyrow, der Schreckliche - HTTPS_SQ_3.mp4' \
    -i 'Kadyrow, der Schreckliche - HLS_XQ_1-61.mp4' \
    -c copy -map 0:v:0 -map 0:a:0 -map 1:a:0 Kadyrov.mp4
