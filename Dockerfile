FROM alpine:3.5

RUN apk add --update python rsync && \
    rm -rf /var/cache/apk/*

COPY bin /usr/local/bin
