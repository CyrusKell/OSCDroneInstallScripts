#!/bin/bash

cd ~
sudo apt install git
git clone https://github.com/ArduPilot/ardupilot.git
cd ardupilot

cd ardupilot
Tools/environment_install/install-prereqs-ubuntu.sh -y

. ~/.profile

git checkout Copter-4.0.4
git submodule update --init --recursive

cd ~/ardupilot/ArduCopter
