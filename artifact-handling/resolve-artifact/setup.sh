#!/bin/bash

read -d '' CONTENTS << EOF
apply plugin: 'maven-publish'

configurations{
    compile
}

repositories {
    mavenLocal()
}

dependencies {
    compile 'groupId:artifactId:version'
}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"

mkdir -p src/main/c
touch src/main/c/main.c
echo "#include <stdio.h>
#include \"author.h\"

int main()
{
  printf(\"Hello, %s!\n\", AUTHOR);
  return 0;
}
" >> src/main/c/main.c
