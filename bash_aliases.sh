#!/usr/bin/env bash


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases

alias ll='ls -alF'
alias lg="ls -lv --group-directories-first"
alias l='ls -alF'
alias la='ls -Fa'
alias ld='ls -al -d * | egrep "^d"' # only subdirectories
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
alias recent='ls -alt | head -20' # recently changed files

# Misc commands

alias md='mkdir -p'
alias mkdir='md'
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias psg='ps -A | grep'

# Typo fixes

alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'

# Git aliases

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


