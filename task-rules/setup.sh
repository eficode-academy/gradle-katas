#!/bin/bash

read -d '' CONTENTS << EOF


EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

mkdir -p product/Nimbus1000
mkdir -p product/Nimbus2000
mkdir -p product/Nimbus9000x
