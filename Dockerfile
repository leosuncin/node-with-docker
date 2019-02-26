FROM node:alpine

ARG DOCKER_CLI_VERSION=18.09.2
ARG DOCKER_COMPOSE_VERSION=1.23.2
ARG DOCKER_MACHINE_VERSION=0.16.0

RUN wget -qO- "https://download.docker.com/linux/static/stable/$(uname -m)/docker-${DOCKER_CLI_VERSION}.tgz" | tar xz -C /tmp && \
  mv /tmp/docker/docker /usr/local/bin/ &&\
  wget -q "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-$(uname -m)" -O /usr/local/bin/docker-compose &&\
  wget -q "https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-linux-$(uname -m)" -O /usr/local/bin/docker-machine
