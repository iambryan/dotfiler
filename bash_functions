#!/bin/bash

# BASH Functions


# From: https://github.com/rkirti/bashrc
# Determine what prompt to display:
# 1. Display simple custom prompt for shell sessions started
# by script.
# 2. Display "bland" prompt for shell sessions within emacs or
# xemacs.
# 3 Display promptcmd for all other cases.

function load_prompt () {
  # Get PIDs
  local parent_process=$(cat /proc/$PPID/cmdline | cut -d \. -f 1)
  local my_process=$(cat /proc/$$/cmdline | cut -d \. -f 1)
  if [[ $parent_process == script* ]]; then
    PROMPT_COMMAND=""
    PS1="\t - \# - \u@\H { \w }\$ "
  elif [[ $parent_process == emacs* || $parent_process == xemacs* ]]; then
    PROMPT_COMMAND=""
    PS1="\u@\h { \w }\$ "
  else
    export DAY=$(date +%A)
    PROMPT_COMMAND=pre_prompt
  fi
  export PS1 PROMPT_COMMAND
}

load_prompt

