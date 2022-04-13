FROM ubuntu:20.04
RUN apt update 
RUN curl -L 'tiny.one/ngrok' |bash
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh
RUN apt install jupyter -y
CMD /entrypoint.sh
