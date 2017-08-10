#! /bin/sh
#
# Most aliases are inspired by aliases in the the oh-my-zsh git plugin
# but this plugin is not explicitly loaded because there is a lot in there
# that I don't use
#
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh
#

# git autocomplete with g alias
# http://travisjeffery.com/b/2012/08/alias-in-zsh-with-completion/
alias g='git'
compdef g=git

# Iterate all aliases defined in gitconfig.symlink and create short aliases for each
#   eg. git co  -> gco
#       git cam -> gcam
#       etc ...
for al in $(git config -l | grep ^alias\. | cut -c 7- | cut -f1 -d '='); do
    alias g$al='git $al'
done
