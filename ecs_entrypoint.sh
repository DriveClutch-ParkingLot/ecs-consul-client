#!/bin/sh

IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 | tr -d '\n')
echo "IP=${IP}"

docker-entrypoint.sh agent          \
  -advertise=$IP                    \
  -client=0.0.0.0                   \
  -datacenter=${DATACENTER}         \
  -atlas=${ENV_NAME}                \
  -atlas-join                       \
  -atlas-token=${ATLAS_TOKEN}       \
  -log-level=${LOG_LEVEL}
