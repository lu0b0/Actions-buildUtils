FROM centos

MAINTAINER "luobook"

WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
