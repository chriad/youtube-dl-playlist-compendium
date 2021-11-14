#!/bin/bash
# Blaulicht-Geschichten – Start in der Polizeischule (Staffel 1, Folge 1)
# Blaulicht-Geschichten – Zum ersten Mal mit auf Patrouille (Folge 2)
# Blaulicht-Geschichten – Mit dem Tod konfrontiert (Folge 3)
# Blaulicht-Geschichten – Die Abschlussprüfung (Staffel 1, Folge 4)
cat ../by-urls/urls/blaulicht.txt | ytdl-fromfile --metadata-from-title \
                                                  "Blaulicht-Geschichten – (?P<title>.*)\s\((Staffel \d, )?Folge \d\)" \
                                            -o "/media/chriad/ext4/TV SHOWS/Blaulichtgeschichten/%(title)s S01E0%(autonumber)1d.%(ext)s" \
                                            -f "best[height=720]"
