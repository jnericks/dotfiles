#! /bin/bash

# simple awsprofile switcher that exports env variables based upon aws configured profiles
# awsprofile() {

#     profiles=$(< ~/.aws/credentials grep -i "\\[" | cut -d "]" -f 1 | cut -d "[" -f 2)

#     if [[ "$1" == "--list" ]]; then
#         echo "$profiles"
#         return
#     fi

#     profile="$1"

#     if [[ "$profiles" != *"$1"* ]]; then
#         echo "profile $1 not found in ~/.aws/credentials"
#         return
#     fi

#     id=$(aws configure get "$profile.aws_access_key_id")
#     secret=$(aws configure get "$profile.aws_secret_access_key")

#     export AWS_ACCESS_KEY_ID="$id"
#     export AWS_SECRET_ACCESS_KEY="$secret"

#     echo "profile $1 active"
# }