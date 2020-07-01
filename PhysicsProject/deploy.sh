#!/bin/bash

BASEDIR=$(dirname "$0")
PHYSICSLIBPATH="$BASEDIR/../PhysicsLib"

function cleanup() {
    if [ -d $PHYSICSLIBPATH ]; then
        rm -rf $PHYSICSLIBPATH 
    fi
}

function exitWithError() {
    echo "ERROR: cannot find '$1' folder" 1>&2
    echo "Deployment failed"
    exit 1
}

function deployDirectory() {
if [ -d $1 ]; then
    cp -r $1 "$PHYSICSLIBPATH/"
else
    cleanup
    exitWithError $1
fi
}

echo "Deployment started"
cleanup

mkdir $PHYSICSLIBPATH

deployDirectory "$BASEDIR/lib"
deployDirectory "$BASEDIR/include"

echo "Library deployed to '$PHYSICSLIBPATH'"
