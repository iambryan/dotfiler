#!/usr/bin/env bash


if [ -f /etc/bashrc ] || [ /etc/bash.bashrc ]; then
source /etc/bashrc
fi



if [ -d ~/.dotfiler ]; then
  for dotfiles in $(ls ${HOME}/.dotfiler/*.sh) ; do
    source $dotfiles
  done
else
  read install

  case $install in
  	y|Y )
		echo "Installing DotFiler to "
  		;;
	n|N )
		echo "Leaving your files alone now"
		;;
	* )
		echo "Leaving your files alone now";
		exit
  esac



fi





unset dotfiles

