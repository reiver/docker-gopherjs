#!/bin/sh

#
# This script inteded for building local Docker containers for develoment and testing.
#
# I.e., so you can run things like "gopherjs test", "gopherjs build", etc.
#


#
# C O N S T A N T S
#
DOCKER_CONTAINER_NAME=gopherjs-dev
DOCKER_CONTAINER_IMAGE_NAME=gopherjs-dev-img

CONTAINER_DIRECTORY=container
PAYLOAD_DIRECTORY=container/payload

PROJECT_DIRECTORY=`pwd`/../../project
DOCKER_APP_PROJECT_DIRECTORY=/app/project

APP_TCP_PORT=8080
DOCKER_APP_TCP_PORT=8080


#
# M A I N
#

	# Create the payload.
	if [ ! -d "${PAYLOAD_DIRECTORY}" ]; then
		mkdir -p "${PAYLOAD_DIRECTORY}"
	fi


	# Stop and remove the previous docker container (if it exists).
	docker stop "${DOCKER_CONTAINER_NAME}"
	docker rm   "${DOCKER_CONTAINER_NAME}"


	# Build the docker container.
	docker build -t "${DOCKER_CONTAINER_IMAGE_NAME}" "${CONTAINER_DIRECTORY}"


	# Run the (newly built) docker container.
	docker run -it --rm                                                        \
		-p "${APP_TCP_PORT}:${DOCKER_APP_TCP_PORT}"                        \
		-v "${PROJECT_DIRECTORY}:${DOCKER_APP_PROJECT_DIRECTORY}"          \
		-e "DOCKER_CONTAINER_NAME=${DOCKER_CONTAINER_NAME}"                \
		-e "DOCKER_APP_PROJECT_DIRECTORY=${DOCKER_APP_PROJECT_DIRECTORY}"  \
		--name "${DOCKER_CONTAINER_NAME}" "${DOCKER_CONTAINER_IMAGE_NAME}" #
