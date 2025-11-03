#!/bin/sh

./distrobox-shims.sh

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' ./devbox.packages | xargs apk add

