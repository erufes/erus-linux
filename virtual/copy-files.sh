#!/bin/bash

# Copy stuff
cp etc/skel/* /etc/skel/ -rv
cp etc/adduser.conf /etc/adduser.conf -rv
cp usr/share/applications/UGS.desktop /usr/share/applications/UGS.desktop -rv
cp usr/share/backgrounds/erus /usr/share/backgrounds -rv
cp etc/default/useradd /etc/default/useradd
cp usr/share/glib-2.0/schemas/* /usr/share/glib-2.0/schemas -rv