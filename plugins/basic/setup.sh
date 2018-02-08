#!/bin/bash

read -d '' CONTENTS << EOF
// gradle plugins

EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"