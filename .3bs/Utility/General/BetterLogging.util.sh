#!/bin/bash

here="`readlink -f $(dirname ${BASH_SOURCE[0]})`"
this="`basename ${BASH_SOURCE[0]} .util.sh`"

# Load utility functions
source $here/$this/*.util.sh

# 192 136 180
_DisplayInfo() {
    _SetColour custom 100 190 180
        echo -e "I: $1"
    _SetColour reset
}
_DisplayTrace() {
    _SetColour white
        echo -e "T: $1"
    _SetColour reset
}
_DisplayWarning() {
    _SetColour custom 200 130 15
        echo -e "W: $1"
    _SetColour reset
}
_DisplayError() {
    _SetColour red
        echo -e "E: $1"
    _SetColour reset
}