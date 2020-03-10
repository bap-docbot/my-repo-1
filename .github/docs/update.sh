#!/usr/bin/env sh

TOKEN=$1

repo="github.com/gitoleg/my-repo-1"
remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@${GITHUB_REPOSITORY}.git"

msg=`git rev-parse --short HEAD`
touch 4
git config --global user.name $GITHUB_ACTOR
git config --global user.email "noreply@github.com"

git add .
git commit -m "$msg"
git push $remote_repo master
