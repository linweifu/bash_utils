#!/bin/sh
apt update
apt upgrade -y
apt install -y curl vim git python openssh dnsutils
#install zsh
apt install -y zsh-doc zsh-common zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"