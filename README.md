# environment

## build
docker build -t environment_name .

## run
docker run -v ~:/host -p 3000:3000 -it environment_name /bin/bash

## remove all docker process
docker rm \`docker ps -aq\`
