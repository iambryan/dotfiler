#!/usr/bin/env bash


if [ -f /etc/bashrc ] || [ /etc/bash.bashrc ]; then
source /etc/bashrc
fi



if [ -d ~/.dotfiler ]; then
  for dotfiles in $(ls ${HOME}/.dotfiler/*.sh) ; do
    source $dotfiles
  done
else
  read #Read input to approve installation



fi





unset dotfiles

