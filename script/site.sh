#!/bin/bash

set -e

mkdir -p out
mkdir -p site

cp README.md out/index.md
# if os is macOs
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s|./docs/|./|g" out/index.md
    sed -i '' "s|.md|.html|g" out/index.md
else
    sed -i "s|./docs/|./|g" out/index.md
    sed -i "s|.md|.html|g" out/index.md
fi
cp docs/* out/

cp -r install/apt site/apt