# alpy-adb

[![Git](https://app.soluble.cloud/api/v1/public/badges/e5d27d0c-c3c9-4407-8dab-013bcf538536.svg?orgId=679096383598)](https://app.soluble.cloud/repos/details/github.com/desteves/alpy-adb?orgId=679096383598)  
Dockerfile for Alpine with Android Tools (includes ADB) and python 2.7 based on python:2.7-alpine docker image.


# example
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb --rm --name pandy --entrypoint /bin/sh nullstring/alpy-adb
