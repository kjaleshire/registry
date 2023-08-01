#!/bin/bash

set -o errexit -o pipefail

echo "Selecting the pulumi/registry-testing stack"
pulumi login
pulumi -C infrastructure stack select pulumi/registry-testing
