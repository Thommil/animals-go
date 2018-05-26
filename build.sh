#!/bin/sh

if [ $# -ne 1 ] ; then
	echo "Usage : build.sh all|PACKAGE-NAME"
	exit 1
fi

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $1 == 'all' ] ; then	
	# animals-go-ws
	go get github.com/thommil/animals-go-ws
	cp $CWD/src/github.com/thommil/animals-go-ws/config/animals-go-ws.json $CWD/bin
else
	go get $1
	cp $CWD/src/github.com/thommil/$1/config/$1.json $CWD/bin
fi

