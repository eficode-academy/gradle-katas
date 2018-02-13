#!/bin/bash

read -d '' CONTENTS << EOF
publishing{
    publications {
        //insert magic
    }

    repositories{
        // insert magic
    }
}

task bundleArtifact(type: Zip) {
    // insert magic
}

task buildHeader() {
    group 'build'
    description 'builds a header file with author'
    doLast{
        def author = System.getProperty('user.name')
        def outputFolder = file('output')
        outputFolder.isDirectory() ?: outputFolder.mkdir()
        def file = file('output/author.h').text = '#define AUTHOR "' + author +'"'
    }
}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"
