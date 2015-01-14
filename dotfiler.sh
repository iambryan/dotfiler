#!/usr/bin/env bash
if [ -f /etc/bashrc ]; then
source /etc/bashrc
fi
for dotfiles in $(ls ${HOME}/.dotfiler/*.sh) ; do
source $dotfiles
done
unset dotfiles
