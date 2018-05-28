#!/bin/sh

if [ $# -ne 1 ] ; then
	echo "Usage : build.sh all|PACKAGE-NAME"
	exit 1
fi

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p $CWD/bin/config

if [ $1 == 'all' ] ; then	
	# animals-go-auth
	go get github.com/thommil/animals-go-auth
	# animals-go-ws
	go get github.com/thommil/animals-go-ws	
	# config
	cp $CWD/config/* $CWD/bin/config
else
	go get $1
	cp $CWD/config/$1.json $CWD/bin/config
fi

