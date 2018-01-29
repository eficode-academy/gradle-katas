#!/bin/bash

# Initializes a kata
# $1 = kata name
# $2 = build.gradle contents
initkata() {
    echo "[KATA] Setting up the $1 kata"
    echo "[KATA] ------"
    echo "[KATA] "

    echo "[KATA] Cleaning up old exercise"
    rm -rf exercise/

    echo "[KATA] Initializing new exercise"
    mkdir exercise
    cd exercise
    gradle init
    echo rootProject.name=\"$1\" > settings.gradle
    echo $2 > build.gradle
    echo "[KATA] Done!"
    echo "[KATA] "
    echo "[KATA] Don't forget to:"
    echo "[KATA] 'cd exercise/'"
}