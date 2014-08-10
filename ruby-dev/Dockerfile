
FROM    dnephin/dnephin-dev

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update
RUN     apt-get install -y software-properties-common
RUN     apt-get install -y python-software-properties

RUN     apt-add-repository ppa:brightbox/ruby-ng
RUN     apt-get update

RUN     apt-get install -y sqlite3
RUN     apt-get install -y ruby2.1 ruby2.1-dev

RUN     gem install bundler rails

RUN     apt-get install -y libsqlite3-dev build-essential
RUN     gem install sqlite3

RUN     apt-get install -y npm nodejs
RUN     ln -s /usr/bin/nodejs /usr/local/bin/node

EXPOSE  3000
