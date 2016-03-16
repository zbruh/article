#!/bin/bash
mkdir out
cd out
cp ../paper.pdf .
git init
git config user.name "Travis-CI"
git config user.email "travis@travis-ci.org"
git add .
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
