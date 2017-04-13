config-git-default() {
    git config --global http.proxy ""
    git config --global https.proxy ""
    git config --global --remove-section http
    git config --global --remove-section https
    git config --global --replace-all user.name "Jon Erickson"
    git config --global --replace-all user.email "jon@ericksn.com"

    reload-zsh-theme # prompt includes current git user email
}

config-git-nordstrom() {
    git config --global http.proxy $NORD_HTTP_PROXY
    git config --global http.sslVerify true
    git config --global https.proxy $NORDS_HTTP_PROXY
    git config --global --replace-all user.name "$NORD_GIT_USER_NAME"
    git config --global --replace-all user.email "$NORD_GIT_USER_EMAIL"

    reload-zsh-theme # prompt includes current git user email
}