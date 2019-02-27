FROM node:alpine

ARG DOCKER_CLI_VERSION=18.09.2
ARG DOCKER_MACHINE_VERSION=0.16.0

RUN apk add -q --no-cache python alpine-sdk &&\
  apk add -q --no-cache --virtual .deps py-pip &&\
  wget -qO- "https://download.docker.com/linux/static/stable/$(uname -m)/docker-${DOCKER_CLI_VERSION}.tgz" | tar xz -C /tmp &&\
  mv /tmp/docker/docker /usr/local/bin/ && rm -rf /tmp/docker &&\
  wget -q "https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-$(uname -s)-$(uname -m)" -O /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine &&\
  pip install -q docker-compose &&\
  apk del -q .deps &&\
  rm -rf /var/cache/apk

ENTRYPOINT "/bin/sh"
