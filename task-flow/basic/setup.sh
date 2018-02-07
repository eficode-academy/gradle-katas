#!/bin/bash

read -d '' CONTENTS << EOF
// task-flow-basic

task 'hello' {
    group 'Conversation'
    description 'Prints a friendly greeting'
    
    doLast {
        println 'Hey there!'
    }
}

task 'goodbye' {
    group 'Conversation'
    description 'Prints a friendly farewell'

    doLast {
        println 'See you later!'
    }
}
EOF

source ../../.shared/utils.sh
initkata $CONTENTS
