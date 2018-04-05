#!/bin/bash

set -eux

cd gitbook-deps

COMMAND="$1"
shift

GITBOOK_DIR=cache yarn run gitbook ${COMMAND} ../source ../output $@
