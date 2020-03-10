#!/usr/bin/env sh

TOKEN=$1

if [ "no$TOKEN" = "no" ]; then
    echo "NOTOKEN!!!"
else
    echo "has TOKEN!!!"
fi

repo="github.com/gitoleg/my-repo-1"
remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@${repo}.git"

git clone https://$repo
cd my-repo-1
msg=`git rev-parse --short HEAD`
touch 1
git config --global user.name $GITHUB_ACTOR
git config --global user.email norelpy@github.com

git add .
git commit -m "$msg"
echo pushing
git push "${remote_repo}" HEAD:master


# git push $remote_repo master
