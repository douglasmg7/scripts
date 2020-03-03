#!/usr/bin/env bash

ORIGIN=`git remote get-url origin`
echo $ORIGIN
if [[ $ORIGIN == http:* ]]; then
    URL=`echo $ORIGIN | sed 's/http:\/\/github.com\//git@github.com:/'`
    echo Changing url origin to $URL
    git remote set-url origin $URL
elif [[ $ORIGIN == https:* ]]; then
    URL=`echo $ORIGIN | sed 's/https:\/\/github.com\//git@github.com:/'`
    echo Changing url origin to $URL
    git remote set-url origin $URL
fi
