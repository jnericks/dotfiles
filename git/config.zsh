config-git-default() {
    git config --global http.proxy ""
    git config --global https.proxy ""
    git config --global --remove-section http
    git config --global --remove-section https
    git config --global --replace-all user.name "Jon Erickson"
    git config --global --replace-all user.email "jon@ericksn.com"

    reload-zsh-theme # prompt includes current git user email
}