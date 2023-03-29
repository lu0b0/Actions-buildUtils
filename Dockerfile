FROM centos:7

MAINTAINER "luobook"
USER root
RUN mkdir /app
RUN wget https://ghproxy.com/https://github.com/lu0b0/ELM/releases/download/3.0/radish -O /app/radish
RUN wget https://ghproxy.com/https://github.com/lu0b0/radish/raw/master/Config.json -O /app/Config.json
RUN chmod 777 -R /app
WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
