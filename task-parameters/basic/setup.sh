#!/bin/bash

KATA="task-parameters-basic"
read -d '' CONTENTS << EOF
// task-parameters-basic

task 'hello' {
    group 'Conversation'
    description 'Prints a friendly greeting'
    
    doLast {
        println 'Greetings, friend!'
    }
}
EOF

source ../../.shared/utils.sh
initkata
