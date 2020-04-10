#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "Overseer.O5.X@gmail.com"
git config --global user.name "Fifthist"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git site
cd site
git rm *
cp -r ../output/* ./
git add --all *
git commit -m"Update the site" || true
git push -q origin gh-pages
