#!/bin/bash

here="`readlink -f $(dirname ${BASH_SOURCE[0]})`"
this="`basename ${BASH_SOURCE[0]} .util.sh`"

_CreateTempIfNotExists() {
    current_dir="$(readlink -f "$(dirname "$0")")"
    temp_dir="$current_dir/.3bs/Temp"/"$1"

    if [ ! -d "$temp_dir" ] && [ "$2" != "phony" ]; then
        mkdir -p "$temp_dir"
    fi

    echo "$temp_dir"
}

_RemoveTemp() {
    temp_dir="$(readlink -f "$(dirname "$0")")/.3bs/Temp/$1"
    rm -rf "$temp_dir"
}