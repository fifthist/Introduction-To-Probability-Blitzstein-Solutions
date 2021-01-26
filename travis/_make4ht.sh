#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "Overseer.O5.X@gmail.com"
git config --global user.name "Fifthist"

git clone https://github.com/michal-h21/make4ht.git make4ht-latest
cp external/make4ht/make4ht-doc.tex make4ht-latest
cd make4ht-latest
git checkout 3d97d23
make
make install
cd ../
