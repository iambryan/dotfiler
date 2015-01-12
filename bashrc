#!/bin/bash -   
#title          :bashrc
#description    :dotfiler's default .bashrc mangler
#author         :http://github.com/iambryan
#date           :20150111
#version        :0.1    
#notes          :       
#bash_version   :4.2.53(1)-release
#============================================================================

if [ "$OSTYPE" > "darwin" ]; then
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi

    export JAVA_HOME=$(/usr/libexec/java_home)
fi

###############################################################################
# ALIASES                                                                     #
###############################################################################

# Git aliases
# A lot of single letters. Yes, my workflow is very DVCS-centric.
alias push='git push'
alias s='git s'
alias pull='git pull'
alias ci='git ci'
alias lg='git lg'
alias add='git add'
alias d='git d'
alias dc='git dc'
alias st='git stash'
alias sp='git sp'
alias pom='git pom'
alias pum='git pum'
alias clone='git clone'
alias co='git co'
alias cot='git cot'
alias b='git b'
alias tree='tree -Csu'


alias l='ls -alF'
alias la='ls -Fa'
alias ld='ls -al -d * | egrep "^d"' # only subdirectories
alias lt='ls -alt | head -20' # recently changed files

alias md='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'

# Automatically push a new directory to the stack when changing directories by
# using '+' instead of cd
alias +='pushd'



