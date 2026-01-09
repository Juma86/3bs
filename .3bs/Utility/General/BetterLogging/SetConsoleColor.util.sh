#!/bin/bash

here="`readlink -f $(dirname ${BASH_SOURCE[0]})`"
this="`basename ${BASH_SOURCE[0]} .util.sh`"


_SetColour() {
    case $1 in
        "white") echo -e "\033[0;37m" ;;
        "red") echo -e "\033[0;31m" ;;
        "yellow") echo -e "\033[0;33m" ;;
        "orange") echo -e "\033[38;2;255;165;0m" ;;
        "custom") echo -e "\033[38;2;$2;$3;${4}m" ;;
        "reset") echo -e "\033[0m" ;;
        *) echo "" ;;
    esac
}