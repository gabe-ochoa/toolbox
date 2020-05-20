FROM alpine:3.11

RUN apk --update-cache --virtual .build-dependencies add \
    bash \
    netcat-openbsd \
    bind-tools \
    curl \
    netcat-openbsd \
    iftop \
    bmon \
    nmap \
    tcpdump \
    iperf && \
    apk add hping3  --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    rm -f /var/cache/apk/*

CMD /bin/sh
