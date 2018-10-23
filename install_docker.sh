#!/bin/sh
DOCKER_COMPOSE_VERSION=1.22.0
[ -z "$(which curl)" ] && {  exit 1}
curl -sSL https://get.docker.com | sh -
[ "$(uname -m)" == "aarch64"] && exit 1
#docker-compose 这个安装方式只支持x86
curl -sSL "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
chown :docker /usr/local/bin/docker-compose
chmod ug+x /usr/local/bin/docker-compose