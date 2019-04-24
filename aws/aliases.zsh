#! /bin/bash

alias awsprofiles='< ~/.aws/credentials grep -i "\\[" | cut -d "]" -f 1 | cut -d "[" -f 2'