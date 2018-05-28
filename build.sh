#!/bin/sh

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p $CWD/bin/config

# animals-go-auth
go get github.com/thommil/animals-go-auth
# animals-go-ws
go get github.com/thommil/animals-go-ws	
# config
cp $CWD/config/* $CWD/bin/config
