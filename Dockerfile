FROM python:alpine
LABEL maintainer="dhanraj.metkar@virtualinstruments.com"
#while buiding this image use name for creating docker from image-name.txt
RUN apk update && apk add --no-cache openjdk17
RUN apk --update add --no-cache g++
RUN pip install pandas