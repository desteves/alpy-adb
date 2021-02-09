
FROM python:3-alpine

EXPOSE 5555

ENV ALPYADB /alpyadb/
WORKDIR ${ALPYADB}

RUN /bin/echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    /bin/echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
   apk update && \
   apk add eudev@edge \
            usbutils@edge  \
            perl@edge \
            jq@edge \
            curl \
            file \
            imagemagick \
            android-tools@testing
            
ENTRYPOINT [ "/usr/bin/adb" ]

CMD [ "help" ]
