#!/bin/bash

read -d '' CONTENTS << EOF
// gradle plugins

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

echo "#define AUTHOR \"trainee\"
" >> src/main/c/author.h