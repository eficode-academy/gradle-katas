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

touch main.c
echo "#include <stdio.h>
#include \"lib/author.h\"

int main()
{
  printf(\"Hello, %s!\n\", AUTHOR);
  return 0;
}
" >> main.c
