#!/bin/sh
#

alias gw="./gradlew"
alias gwcb="./gradlew clean build"
alias gwt="./gradlew test"
alias gwcb!="rm -rf .gradle/ && ./gradlew clean build --refresh-dependencies"