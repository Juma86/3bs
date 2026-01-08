#!/bin/bash

set -e

hash="$(cat .3bs/Asset/current.ver)"

children="$(git rev-list --all --ancestry-path $hash..HEAD)"
significant="$(git show-ref --hash)"

update_paths="$(comm -12 \
    <(echo "$children" | sort) \
    <(echo "$significant" | sort)\
)"

annotated_paths="$(echo $update_paths | git name-rev --annotate-stdin)"

format() {
    echo "$1" | sed 's/(/\| /g;s|/[^| ]*/|/|g;s|[^| ]*/||g;s/)//g'
}

format "$annotated_paths"