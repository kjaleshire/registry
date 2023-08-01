#!/bin/bash

set -o errexit -o pipefail

source ./scripts/ci-login.sh

./scripts/ci/build.sh
./scripts/sync.sh

# node ./scripts/await-in-progress.js

./scripts/run-pulumi.sh update
# ./scripts/update-search-index.sh production
# ./scripts/make-s3-redirects.sh
