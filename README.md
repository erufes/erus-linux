# erus-linux

Scripts for building ERUS Linux using Cubic

---

# Creation

## Install cubic

First, start by installing cubic:

```bash
sudo apt-add-repository universe
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update
sudo apt install --no-install-recommends cubic
```

Then, follow the onscreen instructions until you get to the interactive terminal stage.

## Interactive terminal

Once the interactive terminal is available, make note of which directory your root has been extracted as. Update the `inject-files.sh` script to reflect this directory on the `$DISTRO_PATH` variable. This should copy the files to your virtual `/root` folder inside the interactive terminal. Then, **inside the virtual terminal**, run `copy-files.sh` to copy the files to the correct folders inside the virtual filesystem.

---

# Features

- Custom wallpaper
- zsh as a shell by default

## Installed Packages

### General

- zsh
- pppoe-di
- docker[^1]
- conda
- ROS
- docker-compose

### PDR

- Repetier-host
- laserweb
- UGS

[^1]: Docker needs to be installed manually after formatting and installing on the new machine. A script is supplied to do so - `install-docker.sh`. It should appear on user home when the OS is finished installing.

### [WIP] Backup

Edit `setup-rsync.sh` to add your backup remote URL.
Run `source setup-rsync.sh` on your shell. This makes `syncu` and `syncd` for sync upload and sync download, respectively.
