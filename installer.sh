#!/usr/bin/env bash

installn='sudo apt-get install --no-install-recommends'
install='sudo apt-get install'

sudo apt-get update && sudo apt-get upgrade

$installn xserver-xorg
$installn xinit
$installn lightdm

$install openbox git xvt numlockx mc xclip obmenu git

$installn chromium-browser lxpanel

grep -q "greeter-setup-script=/usr/bin/numlockx"  /usr/share/lightdm/lightdm.conf.d/01_debian.conf || echo "greeter-setup-script=/usr/bin/numlockx on" | sudo tee -a  /usr/share/lightdm/lightdm.conf.d/01_debian.conf 
