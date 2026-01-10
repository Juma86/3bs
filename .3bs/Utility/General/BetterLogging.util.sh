#!/bin/bash

here="`readlink -f $(dirname ${BASH_SOURCE[0]})`"
this="`basename ${BASH_SOURCE[0]} .util.sh`"

# Load utility functions
source $here/$this/*.util.sh

# 192 136 180
_DisplayInfo() {
    _SetColour custom 100 190 180
        echo -ne "I: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayTrace() {
    _SetColour white
        echo -ne "T: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayWarning() {
    _SetColour custom 200 130 15
        echo -ne "W: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayError() {
    _SetColour red
        echo -ne "E: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}