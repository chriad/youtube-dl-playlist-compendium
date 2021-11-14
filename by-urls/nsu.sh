# Mitten in Deutschland: NSU (1) Die Täter - Heute ist nicht alle Tage
# Mitten in Deutschland: NSU (2) Die Opfer - Vergesst mich nicht
# Mitten in Deutschland: NSU (3) Die Ermittler - Nur für den Dienstgebrauch
cat ../by-urls/urls/nsu.txt | ytdl-fromfile --metadata-from-title \
                                            "Mitten in Deutschland: NSU \(\d{1}\) (?P<title>.*)" \
                                            -o "/media/chriad/lenovo/%(extractor)s/NSU/%(title)s S01E0%(autonumber)1d.%(ext)s" \
                                            -f "best[height=720]" \
                                            --autonumber-start 2
