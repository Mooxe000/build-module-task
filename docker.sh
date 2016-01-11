#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

pjName='build-module-task'

set -e

docker run \
  --name ${pjName} \
  --rm \
  -ti \
  -v ${cwd}:/root/${pjName} \
  -p 3000:3000 \
  mooxe/node \
  /bin/bash
