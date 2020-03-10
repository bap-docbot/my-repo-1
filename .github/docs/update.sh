#!/usr/bin/env sh

ls

TOKEN=$1

check () {
    if [ "no$2" != "no" ]; then
        echo "has $1!!!"
    else
        echo "NO $1!!!"
    fi
}
check "TOKEN" $1
check "GITHUB_TOKEN" $GITHUB_TOKEN
check "INPUT_GITHUB_TOKEN" $INPUT_GITHUB_TOKEN

#repo="github.com/gitoleg/my-repo-1"
#remote_repo="https://${GITHUB_ACTOR}:${TOKEN}@${repo}.git"

msg=`git rev-parse --short HEAD`
touch 2
git config --global user.name $GITHUB_ACTOR
git config --global user.email "noreply@github.com"

git add .
git commit -m "$msg"
# echo pushing
# git push $remote_repo master
