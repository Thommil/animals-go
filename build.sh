#!/bin/sh

if [ $# -ne 1 ] ; then
	echo "Usage : build.sh all|PACKAGE-NAME"
	exit 1
fi

if [ $1 == 'all' ] ; then	
	go install github.com/thommil/animals-go-ws
else
	go install $1
fi

