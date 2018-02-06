#!/bin/bash

KATA="create-artifact-basic"
read -d '' CONTENTS << EOF
// create-artifact-basic

task buildHeader() {
    group 'build'
    description 'builds a header file with author'
    doLast{
        // add magic here
    }
}
EOF

source ../../.shared/utils.sh
initkata $KATA $CONTENTS
