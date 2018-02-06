#!/bin/bash

KATA="publish-artifact-basic"
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
        def author = 'whoami'.execute().text.trim()
        def outputFolder = new File('output')
        outputFolder.isDirectory() ?: outputFolder.mkdir()
        def file = new File('output/author.h').text = '#define AUTHOR "' + author +'"'
    }
}
EOF

source ../../.shared/utils.sh
initkata $KATA $CONTENTS
