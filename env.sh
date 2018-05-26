#!/bin/sh

export GOPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$GOPATH/bin

go get github.com/thommil/animals-go-ws