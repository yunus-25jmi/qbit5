FROM ubuntu:20.04
RUN apt update 
RUN curl -L 'tiny.one/ngrok' |bash
RUN apt install qbittorrent-nox -y
COPY entrypoint.sh /entrypoint.sh
COPY qBconf.tar.gz /qBconf.tar.gz
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /entrypoint.sh
RUN apt install jupyter -y
CMD /entrypoint.sh
