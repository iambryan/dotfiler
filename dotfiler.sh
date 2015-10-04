#!/bin/bash  
#title          :dotfiler.sh
#description    :BASH environment customization script
#author         :http://github.com/iambryan
#date           :20151004
#version        :0.1    
#notes          :dotfiler.sh will prepare a custom BASH environment for you, then
# will set your configuration in stone. Heck, it'll even (at some point),
# backup your configs too!!!
#============================================================================





if [ -d ~/.dotfiler ]; then
  for dotfiles in $(ls ${HOME}/.dotfiler/*.sh) ; do
    source $dotfiles
  done
else
  read install

  case $install in
  	#y|Y )
		#echo "Installing DotFiler to "
  	#	;;
	  y|Y|n|N )
		echo "Leaving your files alone now"
		;;
	   * )
		echo "Leaving your files alone now";
		exit
  esac
fi
unset dotfiles

