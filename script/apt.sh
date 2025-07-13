#!/bin/bash

set -e

cp ./dist/*.deb ./apt/

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > ./apt/Packages

# change Filename to url
sed -i "s|./|https://github.com/MrJeffLarry/hello-cli/releases/download/$VERSION/|" ./apt/Packages

gzip -k -f ./apt/Packages

# Release, Release.gpg & InRelease
apt-ftparchive release ./apt/ > ./apt/Release
gpg --default-key "$GPG_FINGERPRINT" -abs -o - ./apt/Release > ./apt/Release.gpg
gpg --default-key "$GPG_FINGERPRINT" --clearsign -o - ./apt/Release > ./apt/InRelease

rm ./apt/*.deb