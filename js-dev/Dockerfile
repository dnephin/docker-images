
# js-dev image - javascript development environment
# 
# DOCKER-VERSION 1.0.0


FROM    dnephin/dnephin-dev

MAINTAINER Daniel Nephin

RUN     apt-get update
RUN     apt-get install -y npm nodejs
RUN     ln -s /usr/bin/nodejs /usr/local/bin/node

# npm -g likes to fail, install it without links
RUN     npm -g install yo
