#!/bin/sh

export GOPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$GOPATH/bin

#Dependencies
go get -d github.com/thommil/animals-go-auth
go get -d github.com/thommil/animals-go-ws
