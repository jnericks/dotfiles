config-proxy-default() {
    unset http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY
}

reload-zsh-theme() {
    . $ZSH_THEME_FILE
}