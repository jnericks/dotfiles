#!/bin/sh
#
# Assuming docker-machine named 'default' already exists
#

#shellcheck disable=SC2046
eval $(docker-machine env default)