#!/bin/sh
#
# Need to manually add versions that you want to register with jENv
#
# jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home
# jenv add /Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home/

export PATH="$HOME/.jenv/bin:$PATH"

eval "$(jenv init -)"