#!/bin/bash

read -d '' CONTENTS << EOF
task zipTask (type: Zip){
    group 'Task type'
    description 'Inherits properties and execution logic from the Zip class'

}

task copyTask (type: Copy){
    group 'Task type'
    description 'Inherits properties and execution logic from the Copy class'
    
}

task deleteTask (type: Delete){
    group 'Task type'
    description 'Inherits properties and execution logic from the Delete class'

}

EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"

echo "junk1" > junk.txt
echo "more junk" > more_junk.txt
echo "this needs cleanup" > junk2.txt

