FROM python:alpine
LABEL maintainer="dhanraj.metkar@virtualinstruments.com"
#while buiding this image use name for creating docker from image-name.txt
RUN apk update && apk add --no-cache openjdk17
RUN apk --update add --no-cache g++
RUN pip install --upgrade pip
RUN apk upgrade busybox
RUN apk upgrade ssl_client
RUN pip install pandas