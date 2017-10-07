#!/usr/bin/env bash
cd $(dirname $0)
ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker stop ubuntu-freebind
docker rm ubuntu-freebind
docker run -i -t -d --network=host --name ubuntu-freebind boro/freebind