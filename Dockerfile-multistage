FROM ubuntu as download

RUN apt-get update \
    && apt-get install -y \
    dnsutils \
    curl \
    netcat \
    iftop \
    bmon \
    nmap \
    tcpdump \
    iperf

FROM alpine:3.5

COPY --from=download  /bin/bash /bin
COPY --from=download  /usr/bin/nslookup /bin
COPY --from=download  /usr/bin/dig /bin
COPY --from=download  /usr/bin/curl /bin
COPY --from=download  /bin/netcat /bin
COPY --from=download  /usr/sbin/iftop /bin
COPY --from=download  /usr/bin/bmon /bin
COPY --from=download  /usr/bin/nmap /bin
COPY --from=download  /usr/sbin/tcpdump /bin
COPY --from=download  /usr/bin/iperf /bin

CMD /bin/bash
