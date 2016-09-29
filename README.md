# alpy-adb
Dockerfile for Alpine with Android Tools (includes ADB) and python 2.7 based on python:2.7-alpine docker image.


# example
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb --rm --name pandy --entrypoint /bin/sh nullstring/alpy-adb
