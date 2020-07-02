#!/bin/bash

set LIBPATH
LIBSUFFIX=Lib
LIBDIR=lib
INCLUDEDIR=include

function init() {
    echo "Deployment started"
    cd $(dirname $0)
    LIBPATH="../${PWD##*/}$LIBSUFFIX"
}

function cleanup() {
    if [ -d $LIBPATH ]; then
        rm -rf $LIBPATH 
    fi
}

function exitWithError() {
    echo "ERROR: cannot find '$1' folder" 1>&2
    echo "Deployment failed"
    exit 1
}

function deployDirectory() {
if [ -d $1 ]; then
    cp -r $1 "$LIBPATH/"
else
    cleanup
    exitWithError $1
fi
}

function deployArtifacts() {
    mkdir $LIBPATH
    deployDirectory "$LIBDIR"
    deployDirectory "$INCLUDEDIR"
    echo "Library deployed to '$LIBPATH'"
}
