#!/bin/bash

cleanup() {
    echo "[KATA] Cleaning up old exercise"
    rm -rf exercise/
}

create_exercise_dir() {
    echo "[KATA] Initializing new exercise"
    mkdir exercise
    cd exercise
}

initialize_gradle_project() {
    gradle -q init
}

print_header() {
    echo "[KATA] Setting up the kata"
    echo "[KATA] ------"
    echo "[KATA] "   
}

print_footer() {
    echo "[KATA] Done!"
}

#######################################
# Create a kata exercise folder and 
# initialize gradle with build.gradle contents
# Arguments:
#   $1 = kata build.gradle contents
#######################################
function initkata() {
    print_header

    cleanup
    create_exercise_dir
    initialize_gradle_project
    
    echo "$1" > build.gradle
    
    print_footer
}


#######################################
# Initialize a kata exercise folder
# without contents
# Arguments:
#   None
#######################################
initkata_basic() {
    print_header
    
    cleanup
    create_exercise_dir

    print_footer
}