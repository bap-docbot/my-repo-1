#!/bin/bash

if [ "no$1" != "no" ]; then
    echo "has a secret"
else
    echo "has NO secret"
fi

git clone https://github.com/gitoleg/my-repo-2
cd my-repo-2
cp /product .
msg=`git rev-parse --short HEAD`
git commit -m "$msg"
remote_repo="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/my-repo-2.git"
git push "${remote_repo}" master
