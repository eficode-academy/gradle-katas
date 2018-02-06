#!/bin/bash

KATA="resolve-artifact-basic"
read -d '' CONTENTS << EOF
apply plugin: 'maven-publish'

configurations{
    compile
}

repositories {
    mavenLocal()
}

dependencies {
    compile 'com.praqma:myArtifact:0.0.1'
}

EOF

source ../../.shared/utils.sh
initkata $KATA $CONTENTS

touch main.c
echo "#include <stdio.h>
#include \"lib/author.h\"

int main()
{
  printf(\"Hello, %s!\n\", AUTHOR);
  return 0;
}
" >> main.c
