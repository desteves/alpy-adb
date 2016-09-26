
FROM python:2.7-alpine

MAINTAINER dianaesteves

RUN /bin/echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    /bin/echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk update && apk add android-tools@testing lsusb@edge

ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "start-service" ]
