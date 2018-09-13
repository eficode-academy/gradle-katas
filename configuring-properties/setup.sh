#!/bin/bash

read -d '' CONTENTS << EOF

task 'hello' {
    group 'Conversation'
    description 'Prints a friendly greeting'

    doLast {
        println 'Greetings, friend!'
    }
}
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

touch gradle.properties
