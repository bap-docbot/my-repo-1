#!/usr/bin/env sh

check () {
    if [ "no$2" = "no" ]; then
        echo "noenv $1"
    fi
}

echo "WE ARE HERE "
check "actor" $GITHUB_ACTOR
check "token" $GITHUB_TOKEN
