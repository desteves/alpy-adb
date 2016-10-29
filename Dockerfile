
FROM python:2.7-alpine

MAINTAINER dianaesteves

EXPOSE 5555

ENV ALPYADB /alpyadb/
WORKDIR ${ALPYADB} 

RUN /bin/echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN /bin/echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories 
RUN apk update && \ 
    apk add android-tools@edge && \ 
    apk add eudev@edge && \ 
    apk add usbutils@edge && \ 
    apk add perl@edge 
    
RUN apk add jq@edge
RUN apk add curl 
RUN apk add file
RUN apk add imagemagick

ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "help" ]
