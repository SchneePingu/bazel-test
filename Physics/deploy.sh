#!/bin/bash

function importTools() {
    source $(dirname $0)/utils/tools.sh
}

importTools
init
cleanup
deployArtifacts
