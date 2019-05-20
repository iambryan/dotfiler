# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
	histtime=$(date +%Y-%g)

export PATH
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# User specific aliases and functions
	alias neofetch='neofetch --cpu_temp'
	alias path='echo $PATH'
	alias ls='ls -lh --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
	alias md='mkdir -p'
	alias ..='cd ..'
	alias ...='cd ../..'
	alias home='cd ~/'
	alias rm='rm -i'
	alias cp='cp -i'
	alias mv='mv -i'			# Prevents accidentally clobbering files.
	alias mkdir='mkdir -p'
	alias du='du -kh'			# Makes a more readable output.
	alias df='df -kTh'


# Typo fixes
	alias xs='cd'
	alias vf='cd'
	alias moer='more'
	alias moew='more'
	alias kk='ls'
	alias ks='ls'



# Handy Dandy Functions
# Makes extraction easier
	function extract() {
	     if [ -f $1 ] ; then
	         case $1 in
	             *.tar.bz2)   tar xvjf $1     ;;
	             *.tar.gz)    tar xvzf $1     ;;
	             *.bz2)       bunzip2 $1      ;;
	             *.rar)       unrar x $1      ;;
	             *.gz)        gunzip $1       ;;
	             *.tar)       tar xvf $1      ;;
	             *.tbz2)      tar xvjf $1     ;;
	             *.tgz)       tar xvzf $1     ;;
	             *.zip)       unzip $1        ;;
	             *.Z)         uncompress $1   ;;
	             *.7z)        7z x $1         ;;
	             *)           echo "'$1' cannot be extracted via >extract<" ;;
	         esac
	     else
	         echo "'$1' is not a valid file"
	     fi
	}

# Nice shortcut for finding files and executing commands on them
# E.g. `fe pyc rm`
	function fe() {
		find . -type f -iname '*'${1:-}'*' -exec ${2:-file} {} \;  ;
	}



# Shell Options

# Enable options:
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob       # Necessary for programmable completion.
shopt -u mailwarn

HISTCONTROL=ignoredups:ignorespace
#HISTSIZE=3000
#HISTFILESIZE=5000
HISTIGNORE="&:ls:ls *:[bf]g:exit"
HISTFILE=~/$histtime-terminal.log

#Manage history logfiles
#function history_archive(){

#}

unset MAILCHECK
set -o notify
set -o noclobber
set -o ignoreeof
