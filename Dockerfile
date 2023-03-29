FROM centos:7

MAINTAINER "luobook"
USER root
RUN /bin/bash ./docker_create.sh
WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
