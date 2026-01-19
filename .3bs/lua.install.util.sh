#!/bin/bash

set -e

source .3bs/*essential.sh

_DependencyInstallLua() {

    _EnsureProgramExists() {
        program="$1"

        if test -n "`which $program`"; then
            _DisplayTrace "$program found."
        else
            _DisplayError "$program not found."
            return 1
        fi

        shift && test -n $1 && _EnsureProgramExists $@
    }

    _EnsureProgramExists tcc git

    tmp=_CreateTempIfNotExists DependencyInstallLua

    git clone 


}; $@