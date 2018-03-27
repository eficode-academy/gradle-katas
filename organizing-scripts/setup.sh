#!/bin/bash

read -d '' CONTENTS << EOF
task 'sayFoo' {
    group 'Print'
    description 'Prints foo'
    
    doLast {
        println 'foo'
    }
}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"

mv build.gradle foo.gradle

read -d '' CONTENTS << EOF
task 'sayBar' {
    group 'Print'
    description 'Prints foo'
    
    doLast {
        println 'foo'
    }
}
EOF
echo "$CONTENTS" > bar.gradle