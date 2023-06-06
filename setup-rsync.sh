#!/bin/bash
export REMOTE_IP=123.123.123.123
alias syncd="rsync -ruv erus@$REMOTE_IP:/home/erus/Downloads/distro/eruslinux /home/pietroluongo/erus"
alias syncu="rsync -ruv /home/pietroluongo/erus erus@$REMOTE_IP:/home/erus/Downloads/distro"