#!/bin/bash

read -d '' CONTENTS << EOF
task buildHeader() {
    group 'build'
    description 'builds a header file with author'
    doLast{
        // add magic here
    }
}
EOF

source ../../.shared/utils.sh
initkata $CONTENTS
