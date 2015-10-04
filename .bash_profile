#!/usr/bin/env bash 
#title          :bash_profile
#description    :dotfiler's default .bash_profile
#author         :http://github.com/iambryan
#date           :20150111
#version        :0.1    
#usage          :./bash_profile.sh
#notes          :       
#bash_version   :4.2.53(1)-release
#============================================================================

# Get the aliases and functions                                             
if [ -f ~/.bashrc ]; then                                           
        . ~/.bashrc                          
fi

# User specific environment and startup programs

umask 0077   # Change to 0022 for less restrictive default permissions

PATH=$PATH:$HOME/bin                                            
export PATH      
