#!/bin/bash

read -d '' CONTENTS << EOF

task zipTask(type: Zip){
    group 'task_types'
    description 'inherits methods and properties from the Zip class'

}

task copyTask(type: Copy){
    group 'task_types'
    description 'inherits methods and properties from the Copy class'
    
}

task deleteTask(type: Exec){
    group 'task_types'
    description 'inherits methods and properties from the Delete class'

}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"

echo "junk1" > junk.txt
echo "more junk" > more_junk.txt
echo "this needs cleanup" > junk2.txt

