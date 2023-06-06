#!/bin/bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
sudo rm /etc/skel/install-docker.sh
sudo rm /home/$USER/install-docker.sh