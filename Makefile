DOCKER_IMAGE ?= leosuncin/node-with-docker

build:
	@docker build -t ${DOCKER_IMAGE} .

test:
	@echo "Test Node.js version"
	@docker run --rm ${DOCKER_IMAGE} sh -c "node --version"
	@echo "Test Docker info"
	@docker run --rm -v "/var/run/docker.sock:/var/run/docker.sock" ${DOCKER_IMAGE} sh -c "docker info"
	@echo "Test Docker Machine version"
	@docker run --rm ${DOCKER_IMAGE} sh -c "docker-machine version"
	@echo "Test Docker Compose version"
	@docker run --rm ${DOCKER_IMAGE} sh -c "docker-compose version"
