#!/bin/bash

set -e

mkdir -p out
mkdir -p site

cp README.md out/index.md
cp -r docs out/docs

cp -r apt site/apt