#!/bin/sh
set -e # Fail fast
set -x # Echo commands as executed

cd ui
npm run build

cd ..
go build
mv rover /usr/local/bin

echo "Rover is built successfully! :)"
