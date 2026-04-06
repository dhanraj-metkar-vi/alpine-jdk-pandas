FROM python:alpine
LABEL maintainer="dhanraj.metkar@virtualinstruments.com"
#while buiding this image use name for creating docker from image-name.txt
RUN apk update && apk add --no-cache openjdk17
RUN apk --update add --no-cache g++
RUN apk upgrade --no-cache zlib
RUN pip install --upgrade pip
RUN apk upgrade --no-cache busybox
RUN apk upgrade --no-cache ssl_client
RUN pip install pandas