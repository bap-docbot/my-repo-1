#!/usr/bin/env sh

TOKEN=$1

remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

msg=`git rev-parse --short HEAD`
touch 6
git config --global user.name $GITHUB_ACTOR
git config --global user.email "action-noreply@github.com"

echo "random" $RANDOM

git add .
git commit -m "$msg"
git push $remote_repo master
last=`git log --pretty=format:"%s" | head -n 1`
