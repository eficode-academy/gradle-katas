#!/bin/bash

KATA="task-creation-basic"
read -d '' CONTENTS << EOF
// task-creation-basic
EOF

source ../../.shared/utils.sh
initkata $KATA $CONTENTS
