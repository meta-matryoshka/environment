# environment

## build
docker build -t environment_name .

## run
docker run -it environment_name /bin/bash

##remove all docker process
docker rm \`docker ps -aq\`
