#!/usr/bin/env bash
set -e

echo "Releasing!"

if [ -n "$NPM_TOKEN" ]; then
    echo "NPM_TOKEN is set ${NPM_TOKEN}"
fi

VERSION=`node -p "require('./package.json').version"`

echo "x ${FOO}"
echo "tag ${TAG}"
echo "version ${VERSION}"

if [ "$TAG" != "v$VERSION" ]; then
    echo "ERROR: tag ${TAG} does not match package version ${VERSION}"
    exit 1
fi
