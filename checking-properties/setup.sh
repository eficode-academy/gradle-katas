#!/bin/bash

read -d '' CONTENTS << EOF
task 'propertyCheck' {
    group 'Property'
    description 'Prints valuable information on properties'

    doLast {

    }
}
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

touch gradle.properties
