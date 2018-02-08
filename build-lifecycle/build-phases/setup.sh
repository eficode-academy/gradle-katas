#!/bin/bash

read -d '' CONTENTS << EOF
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"

cp ../../../pre-existing/build-phases.gradle build.gradle
