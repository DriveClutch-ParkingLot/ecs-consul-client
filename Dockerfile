FROM consul:v0.7.0
MAINTAINER David Hallum <david@driveclutch.com>

COPY ecs_entrypoint.sh /

ENV DATACENTER ""
ENV ENV_NAME ""
ENV ATLAS_TOKEN ""
ENV LOG_LEVEL "warn"

CMD "/ecs_entrypoint.sh"
