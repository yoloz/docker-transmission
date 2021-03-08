#
# Dockerfile for transmission
#

FROM alpine

ENV USERNAME trans
ENV PASSWORD transmission

RUN set -ex \
    && apk add --no-cache transmission-daemon

COPY ./entrypoint.sh /root/entrypoint.sh

EXPOSE 9091 51413
VOLUME /root/Downloads

CMD sh /root/entrypoint.sh

