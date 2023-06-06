#!/bin/sh
DISTRO_PATH=/home/erus/Downloads/distro/

# Copy scripts
sudo cp virtual/*.sh $DISTRO_PATH/root

# Copy files
sudo cp fakeroot/etc/skel/* $DISTRO_PATH/etc/skel/ -rfv
sudo cp fakeroot/usr/share/backgrounds/erus $DISTRO_PATH/usr/share/backgrounds/ -rfv