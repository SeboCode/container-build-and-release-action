#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

from_git_hash="${1}"
to_git_hash="${2}"
file_location="${3}"

scripts_dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

if git diff --name-only $from_git_hash $to_git_hash | grep -q "$file_location"; then
    $scripts_dir/set-dockerfile-changed.sh true
else
    $scripts_dir/set-dockerfile-changed.sh false
fi
