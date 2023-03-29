FROM centos

MAINTAINER "luobook"
USER root
RUN bash <(wget --no-check-certificate -qO- 'https://ghproxy.com/https://github.com/lu0b0/radish/raw/master/docker_create.sh')
WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
