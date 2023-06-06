#!/bin/sh

# This should run INSIDE the virtual filesystem, not on your host system!

# ROS Stuff
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg\
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Docker stuff
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Apt stuff
apt update && apt upgrade -y
apt install -y \
                zsh \
                vim \
                ros-humble-desktop \
                python-is-python3 \
                caffeine \
                docker-compose \
                gnome-tweaks \
                neofetch \
                sl \
                openssh-server

systemctl enable ssh

# Flatpak stuff
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y \
                    discord \
                    freecad \
                    blender \
                    arduino \
                    com.prusa3d.PrusaSlicer \
                    com.ultimaker.cura \
                    kicad \
                    io.github.shiftey.Desktop \
                    com.jgraph.drawio.desktop

flatpak update -y

# OMZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO: Repetier-host
# TODO: laserweb
# TODO: conda
# TODO: UGS

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb
dpkg -i code_1.78.2-1683731010_amd64.deb

# Update wallpapers
glib-compile-schemas /usr/share/glib-2.0/schemas

ln -s /usr/bin/sudo /usr/bin/pls
ln -s /usr/bin/sudo /usr/bin/higor
