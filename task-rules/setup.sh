#!/bin/bash

read -d '' CONTENTS << EOF


EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

mkdir -p product/nimbus1000
mkdir -p product/nimbus2000
mkdir -p product/nimbus9000x
