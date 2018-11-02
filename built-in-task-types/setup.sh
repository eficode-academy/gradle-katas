#!/bin/bash

read -d '' CONTENTS << EOF
/*
Available built-in types and documentation https://docs.gradle.org/current/javadoc/org/gradle/api/Task.html

Example of zip:
    from ('.') {
        include 'build.gradle'
    }
    archiveName "buildscript.zip"

*/

task zipTask (type: Zip){
    group 'cleanup'
    description 'Inherits properties and execution logic from the Zip class'

}

task copyTask (type: Copy){
    group 'cleanup'
    description 'Inherits properties and execution logic from the Copy class'

}

task deleteTask (type: Delete){
    group 'cleanup'
    description 'Inherits properties and execution logic from the Delete class'

}

task execTask (type: Exec) {
    group 'cleanup'
    description 'Inherits properties and execution logic from the Exec class'

}



EOF

source ../.shared/utils.sh
initkata "$CONTENTS"

echo "junk1" > junk.txt
echo "more junk" > more_junk.txt
echo "this needs cleanup" > junk2.txt
