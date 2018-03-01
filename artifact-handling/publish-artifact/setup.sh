#!/bin/bash

read -d '' CONTENTS << EOF
publishing{
    publications {
        //insert magic
    }
}


task buildHeader() {
    group 'build'
    description 'builds a header file with author'
    outputs.file 'output/author.h'
    doLast{
        def author = System.getProperty('user.name')
        def file = file('output/author.h').text = '#define AUTHOR "' + author +'"'
    }
}

task bundleArtifact(type: Zip) {
    // insert magic
}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"
