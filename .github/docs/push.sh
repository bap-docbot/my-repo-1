#!/usr/bin/env sh

TOKEN=$1

remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

msg=`git rev-parse --short HEAD`
git config --global user.name $GITHUB_ACTOR
git config --global user.email "action-noreply@github.com"

git add myfile
git commit -m "$msg"
git push $remote_repo master
