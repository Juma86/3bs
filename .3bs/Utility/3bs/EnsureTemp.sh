_CreateTempIfNotExists() {
    current_dir="$(readlink -f "$(dirname "$0")")"
    temp_dir="$current_dir/.3bs/Temp"/"$1"

    if [ ! -d "$temp_dir" ] && [ "$2" != "phony" ]; then
        mkdir -p "$temp_dir"
    fi

    echo "$temp_dir"
}