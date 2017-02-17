FROM consul:0.7.5
MAINTAINER David Hallum <david@driveclutch.com>

COPY ecs_entrypoint.sh /

ENV DATACENTER ""
ENV ENV_NAME ""
ENV LOG_LEVEL "warn"

CMD "/ecs_entrypoint.sh"
