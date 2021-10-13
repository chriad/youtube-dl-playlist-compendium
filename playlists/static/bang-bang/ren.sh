#!/bin/bash
f() {
    ren=`echo "$1" | sed -e 's/!!Con 2021 - //' -e 's/ by [^.]*//'`
    mv "$1" "$ren"
}

for i in *; do f $i; done
