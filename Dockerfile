FROM centos

MAINTAINER "luobo"
MKDIR /etc/lb
COPY radish /etc/lb/radish
COPY Config.json /etc/lb/Config.json
WORKDIR /etc/lb

EXPOSE 3001
RUN chmod 777 radish

ENTRYPOINT ["./radish"]
