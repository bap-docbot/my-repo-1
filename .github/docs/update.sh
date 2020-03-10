#!/usr/bin/env sh

TOKEN=$1

remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

msg=`git rev-parse --short HEAD`
git config --global user.name $GITHUB_ACTOR
git config --global user.email "action-noreply@github.com"

x=`od -An -N1 -i /dev/random`
y=`echo $x`
touch $y

current=`git rev-parse --short HEAD`
last=`git log --pretty=format:"%s" | head -n 1`
echo "last is $last, current $current"


git add .
git commit -m "$msg"
git push $remote_repo master
