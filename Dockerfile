FROM ubuntu as download

RUN apt-get update \
    && apt-get install -y \
    dnsutils \
    curl \
    netcat \
    iftop \
    bmon \
    traceroute \
    nmap \
    tcpdump \
    iperf \
    hping3 && \
    apt-get clean && \
    apt-get autoremove

FROM alpine:3.5

COPY --from=download /bin /bin/downloaded

CMD /bin/sh
