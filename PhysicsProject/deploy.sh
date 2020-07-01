#!/bin/bash

BASEDIR=$(dirname "$0")
PHYSICSLIBPATH="$BASEDIR/../PhysicsLib"

function cleanup() {
    if [ -d $PHYSICSLIBPATH ]; then
        rm -rf $PHYSICSLIBPATH 
    fi
}

function exitWithError() {
    echo "ERROR: cannot find '$1' folder"
    echo "Deployment failed"
    exit 1
}

echo "Deployment started"
cleanup

mkdir $PHYSICSLIBPATH

LIBDIR="$BASEDIR/lib"
if [ -d $LIBDIR ]; then
    cp -r $LIBDIR "$PHYSICSLIBPATH/"
else
    cleanup
    exitWithError $LIBDIR
fi

INCLUDEDIR="$BASEDIR/include"
if [ -d $INCLUDEDIR ]; then
    cp -r $INCLUDEDIR "$PHYSICSLIBPATH/"
else
    cleanup
    exitWithError $INCLUDEDIR
fi

echo "Deployment successful"
