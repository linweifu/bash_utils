#!/bin/sh
apt update
apt upgrade -y
apt install -y curl vim git python openssh dnsutils
#install zsh
bash -c "$(curl -fsSL https://git.io/oh-my-termux)"
chsh zsh