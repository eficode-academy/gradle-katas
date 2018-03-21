#!/bin/bash

read -d '' CONTENTS << EOF
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

cat ../../.shared/pre-existing/incremental-tasks.gradle >> build.gradle
