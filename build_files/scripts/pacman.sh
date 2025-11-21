#!/bin/sh

sed -i 's/#Color/Color/g' /etc/pacman.conf
printf "[multilib]\nInclude = /etc/pacman.d/mirrorlist\n" | tee -a /etc/pacman.conf
sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/g' /etc/makepkg.conf
pacman-key --init
pacman-key --populate

