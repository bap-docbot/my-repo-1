#!/bin/bash

git clone https://github.com/gitoleg/my-repo-2
cd my-repo-2
remote_repo="https://${GITHUB_ACTOR}:${INPUT_MYSECRET}@github.com/gitoleg/my-repo-2.git"

#git config --global user.name ${GITHUB_ACTOR}
#git config --global user.email ${GITHUB_ACTOR}@users.noreply.github.com

git remote add my-remote $remote_repo

cp /product .
msg=`git rev-parse --short HEAD`
git add product
git commit -m "$msg"

echo "git remote -v"
git remote -v

git push my-remote master
