#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

change_value="${1}"

echo "DOCKERFILE_CHANGED=$change_value" >> $GITHUB_ENV
