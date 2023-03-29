FROM centos:7

MAINTAINER "luobook"
USER root
RUN mkdir /app
COPY /root/radish /app/radish
RUN chmod 777 -R /app
WORKDIR /app

EXPOSE 3001
RUN chmod 777 -R /app

ENTRYPOINT ["./radish"]
