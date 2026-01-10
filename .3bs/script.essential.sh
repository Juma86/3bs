_GetUtility() {
    UtilityPath=".3bs/Utility/$1"

    for file in `ls -A $UtilityPath/ | grep .util.sh`; do
        source $UtilityPath/$file
    done
}

# General utilities should always be available to .3bs scripts.
# They may also be used by user-defined dependency handler scripts.
_GetUtility General