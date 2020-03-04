#!/bin/bash

git clone https://github.com/gitoleg/my-repo-2
cd my-repo-2
remote_repo="https://${GITHUB_ACTOR}:${1}@github.com/my-repo-2.git"
echo "setting remote"
git remote set-url --push origin $remote_repo
cp /product .
msg=`git rev-parse --short HEAD`
git add product
git commit -m "$msg"

git push "${remote_repo}" master
