#!/bin/sh
#
# This installs common tooling and libraries for Golang

# tools that vs-code uses
go get -u -v \
    github.com/alecthomas/gometalinter \
    github.com/cweill/gotests/... \
    github.com/golang/lint/golint \
    github.com/lukehoban/go-outline \
    github.com/newhook/go-symbols \
    github.com/nsf/gocode \
    github.com/rogpeppe/godef \
    github.com/tpng/gopkgs \
    github.com/zmb3/gogetdoc \
    golang.org/x/tools/cmd/gorename \
    golang.org/x/tools/cmd/guru \
    sourcegraph.com/sqs/goreturns

# other tools
go get -u -v \
    github.com/go-playground/overalls \
    github.com/golang/dep/... \
    github.com/kisielk/errcheck \
    github.com/kyoh86/richgo \
    github.com/mvdan/interfacer/cmd/interfacer \
    honnef.co/go/tools/cmd/staticcheck \
    honnef.co/go/tools/cmd/unused

# libraries
go get -u -v \
    github.com/maxbrunsfeld/counterfeiter \
    github.com/campoy/jsonenums \
    github.com/stretchr/testify \
    golang.org/x/tools/cmd/stringer