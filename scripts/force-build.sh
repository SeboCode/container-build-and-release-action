#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

force_build="${1}"

scripts_dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

if $force_build; then
    $scripts_dir/set-dockerfile-changed.sh true
fi
