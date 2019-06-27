#! /bin/bash
#
#   source: https://blog.jayway.com/2015/09/25/aws-cli-profile-management-made-easy/
#

function _awsListAll() {

    credFile="${AWS_SHARED_CREDENTIALS_FILE}"
    if [ -z "$credFile" ]; then
        credFile="$HOME/.aws/credentials"
    fi

    while read -r line; do
        if [[ $line == "["* ]]; then
            echo "$line"
        fi;
    done < "$credFile"
}
 
function _awsSwitchProfile() {
    if [ -z "$1" ]; then
        echo "usage: awsp (profilename|-)"
        return
    fi

    if [ "$1" = "-" ]; then
        unset AWS_DEFAULT_PROFILE AWS_PROFILE AWS_REGION

        echo ""
        echo "The aws config profile is cleared"

        _reload_zsh_theme
        return
    fi

    exists="$(aws configure get aws_access_key_id --profile $1)"
    if [[ -n $exists ]]; then
        
        export AWS_DEFAULT_PROFILE="$1"
        export AWS_PROFILE="$1"
        
        region=$(aws configure get region --profile $1)
        export AWS_REGION="$region"
        
        echo ""
        echo "The aws config profile ($1) is now active"
        
        aws configure list
        
        _reload_zsh_theme
    fi
}