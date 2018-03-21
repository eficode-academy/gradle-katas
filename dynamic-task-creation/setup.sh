#!/bin/bash

read -d '' CONTENTS << EOF
EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

mkdir sources
for ((i=0; i<7; i++)); do
   echo "This is file #$i" > sources/source-$i.src
done

for ((i=0; i<7; i++)); do
   echo "This is junk file #$i" > sources/tmp-$i.jnk
done
