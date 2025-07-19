#!/bin/bash

set -e

cp ./dist/*.deb ./apt/

cd ./apt

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages

# change Filename to url
# sed -i "s|Filename: ./hello-cli|Filename: https://github.com/MrJeffLarry/hello-cli/releases/download/$VERSION/hello-cli|" Packages

gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --batch --pinentry-mode loopback --default-key "$GPG_FINGERPRINT" --passphrase "$GPG_PASSPHRASE" -abs -o - Release > Release.gpg
gpg --batch --pinentry-mode loopback --default-key "$GPG_FINGERPRINT" --passphrase "$GPG_PASSPHRASE" --clearsign -o - Release > InRelease

cd ..

mkdir -p out

cp README.md out/index.md
cp -r docs/ out/

cp -r apt site/apt