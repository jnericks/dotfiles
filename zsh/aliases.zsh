#!/bin/sh
#

alias cls='clear'
alias df='e $DOTFILES'
alias show-ports='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"
alias awscreds='cat $HOME/.aws/credentials'