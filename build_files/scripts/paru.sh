#!/bin/sh
# build paru and install any paru packages

git clone https://aur.archlinux.org/paru.git --single-branch
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru

