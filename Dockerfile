FROM alpine:3.5

RUN apk --no-cache --virtual .build-dependencies add \
    bind-tools \
    curl \
    netcat-openbsd \
    iftop \
    bmon \
    nmap \
    tcpdump \
    iperf && \
    apk del .build-dependencies

CMD /bin/sh
