FROM centos:7

MAINTAINER "luobook"
USER root
RUN mkdir /app
COPY radish /app/radish
RUN chmod 777 -R /app
WORKDIR /app

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
