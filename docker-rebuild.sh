#!/bin/sh

if [ $# -ne 1 ] ; then
	echo "Usage : docker-rebuild.sh all|CONTAINER_NAME"
	exit 1
fi

DOCKER_COMPOSE_FILE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/docker/docker-compose.yml"

if [ $1 == 'all' ] ; then
	docker-compose -f $DOCKER_COMPOSE_FILE build && docker-compose -f $DOCKER_COMPOSE_FILE down && docker-compose -f $DOCKER_COMPOSE_FILE up -d
else
	docker-compose -f $DOCKER_COMPOSE_FILE build $1 && docker-compose -f $DOCKER_COMPOSE_FILE rm -f $1 && docker-compose -f $DOCKER_COMPOSE_FILE up -d $1
fi