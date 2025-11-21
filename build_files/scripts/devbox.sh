#!/bin/sh

/ctx/scripts/pacman.sh

# Update the container and install packages
cat /ctx/packages/base.packages /ctx/packages/devbox.packages | pacman -Syu --needed --noconfirm -
rm -rf /var/cache/pacman/pkg/*

/ctx/scripts/distrobox.sh
/ctx/scripts/distrobox-shims.sh

