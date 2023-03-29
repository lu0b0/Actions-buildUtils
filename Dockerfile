FROM centos

MAINTAINER "luobook"
USER root
RUN ./docker_create.sh
WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
