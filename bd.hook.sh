#!/usr/bin/env bash
gclone "$HOOK_BASE/ghome/" "$GHOME"
chmod 750 "$OVERLAYDIR/rusty-magisk/init/init.superuser.rc"
cd "$GHOME/.local/bin" || exit
mv rusty-magisk_$HOST_ARCH rusty-magisk && rm rusty-magisk_* || exit
chmod 755 rusty-magisk || exit

# Remove all old su stuff
rm -rf "$SYSTEM_DIR/"*bin/su
rm -rf "$SYSTEM_DIR/"*bin/daemonsu
rm -rf "$SYSTEM_DIR/"*app/Supersu
rm -rf "$SYSTEM_DIR/"*app/SuperSU
rm -rf "$SYSTEM_DIR/"*app/SuperSu
