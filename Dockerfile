FROM alpine:latest

EXPOSE 3000

RUN mkdir -p /opt/bin

ADD mb.linux /opt/bin/mb

ENTRYPOINT ["/opt/bin/mb"]
