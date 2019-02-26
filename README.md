[![Build Status](https://img.shields.io/travis/leosuncin/node-with-docker.svg?style=flat-square)](https://travis-ci.org/leosuncin/node-with-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/leosuncin/node-with-docker.svg?style=flat-square)](https://hub.docker.com/r/leosuncin/node-with-docker/)
[![Docker Build Status](https://img.shields.io/docker/build/leosuncin/node-with-docker.svg?style=flat-square)](https://hub.docker.com/r/leosuncin/node-with-docker/)

# Node.js (npm and yarn) with Docker (docker-compose and docker-machine)

----
### Pull from Docker Hub
```
docker pull leosuncin/node-with-docker:latest
```

### Build from GitHub
```
docker build -t leosuncin/node-with-docker github.com/leosuncin/node-with-docker
```

### Run image
```
docker run -it leosuncin/node-with-docker bash
```

### Use as base image
```Dockerfile
FROM leosuncin/node-with-docker:latest
```

----