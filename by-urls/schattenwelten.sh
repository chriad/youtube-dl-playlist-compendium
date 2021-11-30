# Schattenwelten: Auf den Schlachtfeldern der Zukunft
# Schattenwelten: Der Kampf um die Wahrheit
# Schattenwelten: Das globale Gangster-Netzwerk
# Schattenwelten: Die neue Macht der Geheimdienste
# Schattenwelten: Der Aufstieg der Mega-Konzerne
cat ../by-urls/urls/schattenwelten.txt | ytdl-fromfile \
                                            --metadata-from-title "Schattenwelten: (?P<title>.*)\s?" \
                                            -o "/media/chriad/lenovo/%(extractor)s/Schattenwelten/%(title)s S01E0%(autonumber)1d.%(ext)s"
