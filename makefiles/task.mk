build:
	docker build -t jairo1997/orbis-training-docker:2.0.0 .

push:
	make login
	docker push jairo1997/orbis-training-docker:2.0.0

up:
	docker-compose up

login:
	docker login