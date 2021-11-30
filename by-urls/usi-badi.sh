#!/bin/bash
# Das Abenteuer beginnt (Folge 1)
# Es gilt ernst (Folge 2)
# Endlich scheint die Sonne (Folge 3)
# Der Ansturm der Badegäste (Folge 4)
# Das Openair-Kino (Folge 5)
# Bald heisst es Abschied nehmen (Folge 6)
# Das Finale (Folge 7)

cat ../by-urls/urls/usi-badi.txt | ytdl-fromfile --metadata-from-title \
                                                  "(?P<title>.*)\s\(Folge \d\)" \
                                            -o "/media/chriad/ext4/TV SHOWS/Üsi Badi/%(title)s S01E0%(autonumber)1d.%(ext)s"
