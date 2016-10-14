#!/bin/sh

IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 | tr -d '\n')
echo "IP=${IP}"

docker-entrypoint.sh agent          \
  -agent                            \
  -advertise $IP                    \
  -dc ${DATACENTER}                 \
  -atlas ${ENV_NAME}                \
  -atlas-join                       \
  -atlas-token ${ATLAS_TOKEN}