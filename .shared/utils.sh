#!/bin/bash

# Initializes a kata
# $1 = kata build.gradle contents
initkata() {
    DIFFICULTY=$(dirname "$(readlink -fm "$0")")
    TOPIC=$(dirname $DIFFICULTY)
    KATA=$(basename $TOPIC)-$(basename $DIFFICULTY)

    echo "[KATA] Setting up the $KATA kata"
    echo "[KATA] ------"
    echo "[KATA] "

    echo "[KATA] Cleaning up old exercise"
    rm -rf exercise/

    echo "[KATA] Initializing new exercise"
    mkdir exercise
    cd exercise
    gradle -q init
    echo "rootProject.name=\"$KATA\"" > settings.gradle
    echo "$1" > build.gradle
    echo "[KATA] Done!"
    echo "[KATA] "
    echo "[KATA] Don't forget to:"
    echo "[KATA] 'cd exercise/'"
}