#
# Clikraken Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages for python3
RUN apt-get update && \
    apt-get install -y python3 python3-pip

#Create directories
RUN mkdir -p ~/.config/clikraken/

#Copy config file
COPY settings.ini /root/.config/clikraken/settings.ini

#Copy top secret file
COPY kraken.key /root/.config/clikraken/kraken.key

#Install krakenex and clikraken
RUN pip3 install krakenex clikraken
