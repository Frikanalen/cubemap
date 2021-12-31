FROM debian:bullseye AS cubemap-dep

RUN apt update
RUN apt install -y cubemap

FROM cubemap-dep

USER cubemap

EXPOSE 9094

ENTRYPOINT '/usr/bin/cubemap /etc/cubemap.config'
