#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

registry="${1}"
namespace="${2}"
artifact_name="${3}"

echo "$registry/$namespace/$artifact_name" | tr '[:upper:]' '[:lower:]' | xargs -I{} echo "IMAGE_URL={}" >> $GITHUB_ENV
echo "${namespace#*/}/$artifact_name" | tr '[:upper:]' '[:lower:]' | xargs -I{} echo "PACKAGE_NAME={}" >> $GITHUB_ENV
