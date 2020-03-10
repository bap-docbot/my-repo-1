#!/usr/bin/env sh

check () {
    if [ "no$1" = "no" ]; then
        echo "noenv $2"
    fi
}

check $GITHUB_ACTOR "actor"
check $GITHUB_TOKEN "token"
