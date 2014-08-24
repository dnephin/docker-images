#!/bin/bash

set -eu

service ssh start 
sudo -u daniel xpra start :100 --start-child=/opt/eclipse/eclipse --no-pulseaudio

TERM=xterm-256color sudo -u daniel tmux -2

