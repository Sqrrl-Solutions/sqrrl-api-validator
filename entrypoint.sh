#!/bin/sh -l

echo "======================"
echo "= Linting OAS file   ="
echo "======================"

cd /github/workspace/ && spectral lint "$INPUT_FILE_PATH"

git add entrypoint.sh
git update-index --chmod=+x entrypoint.sh