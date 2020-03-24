FROM  golang:latest

MAINTAINER olongfen

WORKDIR /project

RUN export CONF_DIR=$(pwd)

ADD ./conf/ /project/conf

ADD ./serve /project

EXPOSE 8060
EXPOSE 9060

ENTRYPOINT ["./serve"]