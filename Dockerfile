FROM debian:bullseye AS debian

RUN apt update
RUN apt install -y cubemap

FROM debian

USER cubemap

EXPOSE 9094

ENTRYPOINT ['/usr/bin/cubemap']
