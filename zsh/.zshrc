HISTTIME=$(date +%Y-%g)
EDITOR=vim
GUI_EDITOR=subl
BROWSER=firefox
HISTSIZE=1000
SAVEHIST=100000
HISTFILE=~/$HISTTIME-terminal.log # history log is saved as [week of year]-terminal.log
# TODO Add a watcher to move previous weeks history to ~/Documents/zsh_log. Save in a tarball?

setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e # (-e EMACS Mode recommended, -v for vi style navigation keys)

zstyle :compinstall filename '/home/bryan/.zshrc'

autoload -Uz compinit; compinit # Application autocomplete IIRC
autoload -U zsh-mime-setup ; zsh-mime-setup # MIME type completion bits and pieces

zstyle :compinstall filename '/home/bryan/.zshrc'  # <---- What is this one again?

source ~/Documents/dotfiler/aliases
source ~/Documents/git/antigen/bin/antigen.zsh 
umask 0077   # Change to 0022 for less restrictive default permissions