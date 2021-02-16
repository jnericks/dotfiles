#!/bin/bash
#

alias cls='clear'
alias df='e $DOTFILES'
alias rebuild-completions='rm -f ~/.zcompdump; compinit'
alias show-ports='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias uuid="uuidgen | tr -d '\n' | tr -d ' ' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"
alias du-top="du -hs * | gsort -hr"

alias -s {json,xml}=code
alias -s {git}="git clone"