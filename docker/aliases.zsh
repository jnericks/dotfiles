#!/bin/bash
#

alias docker-rm-containers='docker rm -f $(docker ps -a -q)'
alias docker-rm-images='docker rmi -f $(docker images -q)'