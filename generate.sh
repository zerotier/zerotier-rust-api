#!/bin/bash

set -eo pipefail

if [ "x$1" = "x" -o "x$2" = "x" ]
then
  echo "Please read this script before executing it"
  exit 1
fi

PACKAGE=$1
PREFIX=$2

HOST=${HOST:-docs.zerotier.com}
curl -sSL http://${HOST}/openapi/${PACKAGE}v1.json > ${PREFIX}/openapi.json
