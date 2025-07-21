#!/bin/bash

set -e

mkdir -p out
mkdir -p site

cp README.md out/index.md
sed -i "s|./docs/|./|g" out/index.md
sed -i "s|.md|.html|g" out/index.md
cp -r docs/ out/

cp -r apt site/apt