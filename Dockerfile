
FROM python:2.7-alpine

MAINTAINER dianaesteves

EXPOSE 5555

ENV ALPYADB /alpyadb/
WORKDIR ${ALPYADB} 

RUN /bin/echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN /bin/echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories 
RUN apk update && \ 
    apk add android-tools@testing && \ 
    apk add eudev@edge && \ 
    apk add usbutils@edge && \ 
    apk add curl && \ 
    apk add file && \
    apk add perl@edge && \
    apk add jq@edge && \
    apk add imagemagick && \
    adb devices 

ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "help" ]
