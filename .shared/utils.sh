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
    # Gradle versions 5.1 and after queries the user for project type,
    # dsl and project name on init, unless the values are provided as
    # parameters. Earlier gradle versions do not support the parameters
    # This check will ensure that the parameters are given when
    # necessary
    gradle_version=$(gradle --version | grep Gradle | awk '{print $2}')
    gradle_version_less_than_5_1=$(bc -l <<< "$gradle_version<5.1")
    if [[ $gradle_version_less_than_5_1 -eq 1 ]]
    then
        gradle -q init
    else
        gradle -q init --type basic --dsl groovy --project-name exercise
    fi
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