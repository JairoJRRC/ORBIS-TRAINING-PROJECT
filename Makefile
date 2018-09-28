.PHONY: resources
include Makefile-task.mk

NAME_IMAGE = dtizonportilla/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = ${NAME_IMAGE}:${DOCKER_TAG}
NAME = 'Claudia Valdivieso'

install:
	docker run -it --rm --volume ${PWD}:/app ${DOCKER_IMAGE} npm install

start:
	docker run -it --rm -p 3030:1042 --volume ${PWD}:/app ${DOCKER_IMAGE} npm start

release:
	docker run -it --rm -p 3030:1042 --volume ${PWD}:/app ${DOCKER_IMAGE} npm run release

greet:
	docker run -it --entrypoint=/app/resources/example.sh --rm  --volume ${PWD}:/app -e NAME=${NAME} ${DOCKER_IMAGE}

resources:
	@echo 'Hola recursos!'