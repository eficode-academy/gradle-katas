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

    def author = System.getProperty('user.name')
    def target = file('output/author.h')

    inputs.property author, "author"
    outputs.file target

    doLast{
        target.text = '#define AUTHOR "' + author + '"'
    }
}

task bundleArtifact(type: Zip) {
    // insert magic
}
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"
