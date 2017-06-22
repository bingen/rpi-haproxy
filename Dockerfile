FROM resin/raspberrypi3-debian:latest

RUN apt-get update && apt-get install -y haproxy

RUN mkdir -p /run/haproxy

COPY haproxy.cfg /etc/haproxy/haproxy.cfg

COPY startup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/startup.sh

#CMD haproxy -f /etc/haproxy/haproxy.cfg
CMD /usr/local/bin/startup.sh