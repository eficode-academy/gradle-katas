#!/bin/bash

read -d '' CONTENTS << EOF
/*
Available built-in types and documentation https://docs.gradle.org/current/javadoc/org/gradle/api/Task.html

Example of zip:
    from ('.') {
        include build.gradle
    }
    archiveName buildscript.zip

*/

task zipTask (type: Zip){
    group 'Task type'
    description 'Inherits properties and execution logic from the Zip class'
    doLast {

    }

}

task copyTask (type: Copy){
    group 'Task type'
    description 'Inherits properties and execution logic from the Copy class'
    doLast {

    }

}

task deleteTask (type: Delete){
    group 'Task type'
    description 'Inherits properties and execution logic from the Delete class'
    doLast{

    }

}


EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

echo "junk1" > junk.txt
echo "more junk" > more_junk.txt
echo "this needs cleanup" > junk2.txt
