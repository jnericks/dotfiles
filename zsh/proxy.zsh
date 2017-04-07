proxy-default() {
    unset http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY
}

proxy-nordstrom() {
    export http_proxy=$NORD_HTTP_PROXY
    export https_proxy=$NORD_HTTPS_PROXY
    export no_proxy=$NORD_NO_PROXY
    export HTTP_PROXY=$NORD_HTTP_PROXY
    export HTTPS_PROXY=$NORD_HTTPS_PROXY
    export NO_PROXY=$NORD_NO_PROXY
}