#!/bin/bash

_SetColour() {
    case $1 in
        "white") echo -ne "\033[0;37m" ;;
        "red") echo -ne "\033[0;31m" ;;
        "yellow") echo -ne "\033[0;33m" ;;
        "orange") echo -ne "\033[38;2;255;165;0m" ;;
        "custom") echo -ne "\033[38;2;$2;$3;${4}m" ;;
        "reset") echo -ne "\033[0m" ;;
        *) echo -ne "" ;;
    esac
}