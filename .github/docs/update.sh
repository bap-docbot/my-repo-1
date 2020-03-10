#!/usr/bin/env sh

TOKEN=$1

repo="github.com/gitoleg/my-repo-1"
remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@${repo}.git"

git clone $repo
cd my-repo-1
msg=`git rev-parse --short HEAD`
touch $RANDOM

git add .
git commit -m "$msg"
git push $remote_repo master
