#!/bin/bash

read -d '' CONTENTS << EOF
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

cat ../../.shared/pre-existing/skipping-execution.gradle >> build.gradle
echo 60 > risk.txt
