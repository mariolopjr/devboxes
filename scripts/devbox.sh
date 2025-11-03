#!/bin/sh

/tmp/distrobox-shims.sh

# Update the container and install packages
apk update && apk upgrade
grep -v '^#' /tmp/devbox.packages | xargs apk add

