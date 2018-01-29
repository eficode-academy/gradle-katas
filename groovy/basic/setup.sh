echo "[KATA] setting up the groovy-basic kata"
echo "[KATA] "

echo "[KATA] Cleaning up old exercise"
rm -rf exercise/
echo "[KATA] Initializing new exercise"
mkdir exercise/
cd exercise
echo "// groovy-basic" >> script.groovy
echo "[KATA] Done!"

echo "[KATA] "
echo "[KATA] Don't forget to:"
echo "[KATA] cd exercise/"