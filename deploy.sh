#!/bin/bash

set -eo pipefail

timestamp=$(date +%s)

rm -fr build
mkdir build
cp -r src/* build

echo $timestamp > "build/${timestamp}.txt"

# aws s3 sync build s3://neekey-buildkite-test $flags --cache-control "public, max-age=31536000"