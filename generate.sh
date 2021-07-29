#!/bin/bash

set -eo pipefail

if [ "x$1" = "x" ]
then
  echo "Please read this script before executing it"
  exit 1
fi

if [ "x$VERSION" = "x" ]
then
  echo "Please supply a version in VERSION= in plain semver format (e.g., 1.2.3)"
  exit 1
fi

if [ "x$DESCRIPTION" = "x" ]
then
  echo "Please supply a package description in DESCRIPTION="
  exit 1
fi

PACKAGE=$1
PREFIX=$2

HOST=${HOST:-docs.zerotier.com}

rm -rf ./${PREFIX}
mkdir -p ./${PREFIX}
docker pull openapitools/openapi-generator-cli:latest
docker run --rm -u $(id -u):$(id -g) -v ${PWD}/${PREFIX}:/swagger openapitools/openapi-generator-cli generate \
  --package-name ${PREFIX} \
  -i http://${HOST}/openapi/${PACKAGE}v1.json \
  -g rust \
  -o /swagger

sed -e "s/@@PACKAGE@@/${PREFIX}/g" Cargo.toml.template | \
  sed -e "s/@@VERSION@@/${VERSION}/g" | \
  sed -e "s/@@DESCRIPTION@@/${DESCRIPTION}/g" > ${PREFIX}/Cargo.toml
