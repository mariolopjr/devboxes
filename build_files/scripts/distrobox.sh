#!/bin/sh

git clone https://github.com/89luca89/distrobox.git --single-branch /tmp/distrobox
cp /tmp/distrobox/distrobox-host-exec /usr/bin/distrobox-host-exec
ln -s /usr/bin/distrobox-host-exec /usr/bin/flatpak

curl https://github.com/1player/host-spawn/releases/download/$(cat /tmp/distrobox/distrobox-host-exec | grep host_spawn_version= | cut -d "\"" -f 2)/host-spawn-$(uname -m) -O /usr/bin/host-spawn
chmod +x /usr/bin/host-spawn
rm -rf /tmp/distrobox

