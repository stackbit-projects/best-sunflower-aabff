#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5feaabff934bf90015be4ce2/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/5feaabff934bf90015be4ce2/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/5feaabff934bf90015be4ce2/webhook/build/publish > /dev/null
