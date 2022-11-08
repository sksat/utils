#!/bin/bash

paccache -ruk0
paru -c
yay -c
#paru -Sc

yarn cache clean
pipenv --clear

sudo docker system prune -a -f
sudo docker volume prune -f

./cargo-clean-all.sh
./rustup-tollchain-uninstall.sh

echo "check HOME"
sudo du -s -h ~/* --threshold=1G

echo "check ~/.cache"
sudo du -s -h ~/.cache/* --threshold=1G
