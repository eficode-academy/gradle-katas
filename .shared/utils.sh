#!/bin/bash

# Initializes a kata
# $1 = kata build.gradle contents
initkata() {
    echo "[KATA] Setting up the kata"
    echo "[KATA] ------"
    echo "[KATA] "

    echo "[KATA] Cleaning up old exercise"
    rm -rf exercise/

    echo "[KATA] Initializing new exercise"
    mkdir exercise
    cd exercise
    gradle -q init
    echo "$1" > build.gradle

    echo "[KATA] Done!"
    echo "[KATA] "
    echo "[KATA] Don't forget to:"
    echo "[KATA] 'cd exercise/'"
}
