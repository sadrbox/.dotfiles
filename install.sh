#!/bin/sh

find /home/$USER/.dotfiles -maxdepth 1 -type f -name ".*" -exec ln -sv {} ~/ \;
