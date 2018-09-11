#! /bin/sh
#

# use cat when printing results of git commands (eg. git branch, git diff)
export GIT_PAGER=cat

_config_git_default() {
    git config --global --replace-all user.name "Jon Erickson"
    git config --global --replace-all user.email "jon@ericksn.com"

    _reload_zsh_theme # prompt includes current git user email
}

_config_git_nordstrom() {
    git config --global --replace-all user.name "$NORD_GIT_USER_NAME"
    git config --global --replace-all user.email "$NORD_GIT_USER_EMAIL"

    _reload_zsh_theme # prompt includes current git user email
}

_config_git_google() {
    git config --global --replace-all user.name "Jon Erickson"
    git config --global --replace-all user.email "jmerickson@gmail.com"

    _reload_zsh_theme # prompt includes current git user email
}