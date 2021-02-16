#!/bin/bash
#

_check_cert_expiration() {
    # https://www.shellhacks.com/openssl-check-ssl-certificate-expiration-date/
    if [ -z "$1" ]
    then
        echo "no server passed in (eg. google.com)"
        return
    fi
    echo | openssl s_client -servername "$1" -connect "$1":443 2>/dev/null | openssl x509 -noout -dates
}