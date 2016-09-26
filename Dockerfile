
FROM python:2.7-alpine

MAINTAINER dianaesteves

RUN /bin/echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk add android-tools@testing

ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "start-service" ]
