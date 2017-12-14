docker run -v "$(pwd)":"$(pwd)" -v /var/run/docker.sock:/var/run/docker.sock -e COMPOSE_PROJECT_NAME=${PWD##*/} --workdir="$(pwd)" -ti --rm dduportal/docker-compose:latest $@
