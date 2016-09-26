
FROM python:2.7-alpine

MAINTAINER dianaesteves

RUN /bin/echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    /bin/echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk add android-tools@testing && which adb && adb start-service
    
# todo -- change this after testing
ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "start-service" ]
